'use strict';
const bcrypt             = require('bcrypt');
const Order              = require('../models/Order');
const Product            = require('../models/Product');
const Customer           = require('../models/Customer');
const Category           = require('../models/Category');
const Brand              = require('../models/Brand');
const Blog               = require('../models/Blog');
const Newsletter         = require('../models/Newsletter');
const { Promo, Offer }   = require('../models/Promo');
const { Enquiry, ProductEnquiry } = require('../models/Enquiry');
const { Employee, Supplier } = require('../models/Employee');
const { Review, Pin }    = require('../models/Misc');
const { asyncHandler, paginate } = require('../middlewares/helpers');
const { ok, created, fail, notFound, paginated } = require('../utils/response');
const { getUploadedFilename } = require('../services/uploadService');
const { slugify, uniqueSlug } = require('../utils/slugify');
const { query }           = require('../config/database');

// ─── Dashboard ────────────────────────────────────────────────────────────────
exports.getDashboard = asyncHandler(async (req, res) => {
  const [today, totals] = await Promise.all([Order.todayStats(), Order.totalStats()]);
  const [customers] = await query('SELECT COUNT(*) AS count FROM tbl_customer WHERE customer_status = 1');
  ok(res, { ...today, ...totals, totalCustomers: customers.count });
});

// ─── Products ─────────────────────────────────────────────────────────────────
exports.getProducts = asyncHandler(async (req, res) => {
  const { page, limit } = paginate(req.query.page, req.query.limit || 20);
  const result = await Product.findAll({ ...req.query, page, limit });
  paginated(res, result.rows, { page: result.page, limit: result.limit, total: result.total, totalPages: Math.ceil(result.total / result.limit) });
});

exports.createProduct = asyncHandler(async (req, res) => {
  const data = { ...req.body };
  if (!data.product_name) return fail(res, 'product_name is required');
  data.product_slug = data.product_slug || slugify(data.product_name) || uniqueSlug(data.product_name);
  const image = getUploadedFilename(req);
  if (image) data.featured_image = image;
  const id = await Product.create(data);
  created(res, { product_id: id });
});

exports.updateProduct = asyncHandler(async (req, res) => {
  const data = { ...req.body };
  const image = getUploadedFilename(req);
  if (image) data.featured_image = image;
  await Product.update(req.params.id, data);
  ok(res, null, { message: 'Product updated' });
});

exports.deleteProduct = asyncHandler(async (req, res) => {
  await Product.softDelete(req.params.id);
  ok(res, null, { message: 'Product deleted' });
});

// ─── Categories ───────────────────────────────────────────────────────────────
exports.getCategories = asyncHandler(async (req, res) => {
  ok(res, await Category.findAll());
});

exports.createCategory = asyncHandler(async (req, res) => {
  const { category_name } = req.body;
  if (!category_name) return fail(res, 'category_name is required');
  const slug = slugify(category_name) || uniqueSlug(category_name);
  const id = await Category.create(category_name, slug);
  created(res, { category_id: id, category_name, category_slug: slug });
});

exports.updateCategory = asyncHandler(async (req, res) => {
  const { category_name } = req.body;
  if (!category_name) return fail(res, 'category_name is required');
  const slug = slugify(category_name) || uniqueSlug(category_name);
  await Category.update(req.params.id, category_name, slug);
  ok(res, null, { message: 'Category updated' });
});

exports.deleteCategory = asyncHandler(async (req, res) => {
  await Category.softDelete(req.params.id);
  ok(res, null, { message: 'Category deleted' });
});

// ─── Brands ───────────────────────────────────────────────────────────────────
exports.getBrands = asyncHandler(async (req, res) => {
  ok(res, await Brand.findAll());
});

exports.createBrand = asyncHandler(async (req, res) => {
  const data = { ...req.body };
  if (!data.title) return fail(res, 'title is required');
  data.slug = slugify(data.title) || uniqueSlug(data.title);
  const image = getUploadedFilename(req);
  if (image) data.image = image;
  const id = await Brand.create(data);
  created(res, { id });
});

exports.updateBrand = asyncHandler(async (req, res) => {
  const data = { ...req.body };
  const image = getUploadedFilename(req);
  if (image) data.image = image;
  await Brand.update(req.params.id, data);
  ok(res, null, { message: 'Brand updated' });
});

exports.deleteBrand = asyncHandler(async (req, res) => {
  await Brand.softDelete(req.params.id);
  ok(res, null, { message: 'Brand deleted' });
});

// ─── Orders ───────────────────────────────────────────────────────────────────
exports.getOrders = asyncHandler(async (req, res) => {
  const { page, limit } = paginate(req.query.page, req.query.limit || 20);
  const result = await Order.findAll({ ...req.query, page, limit });
  paginated(res, result.rows, { page: result.page, limit: result.limit, total: result.total });
});

exports.getOrderDetails = asyncHandler(async (req, res) => {
  const rows = await Order.findByOrderNo(req.params.orderNo);
  if (!rows.length) return notFound(res, 'Order not found');
  ok(res, rows);
});

exports.updateOrderStatus = asyncHandler(async (req, res) => {
  const { order_status, payment_status } = req.body;
  if (!order_status) return fail(res, 'order_status is required');
  await Order.updateStatus(req.params.orderNo, order_status, payment_status ?? undefined);
  ok(res, null, { message: 'Order status updated' });
});

exports.deleteOrder = asyncHandler(async (req, res) => {
  await Order.softDelete(req.params.orderNo);
  ok(res, null, { message: 'Order deleted' });
});

// ─── Sales Report ─────────────────────────────────────────────────────────────
exports.getSalesReport = asyncHandler(async (req, res) => {
  const { from, to } = req.query;
  if (!from || !to) return fail(res, 'from and to date params required');
  const rows = await Order.salesReport(from, to);
  ok(res, rows);
});

// ─── Customers ────────────────────────────────────────────────────────────────
exports.getCustomers = asyncHandler(async (req, res) => {
  ok(res, await Customer.findAll());
});

exports.deleteCustomer = asyncHandler(async (req, res) => {
  await Customer.softDelete(req.params.id);
  ok(res, null, { message: 'Customer deleted' });
});

// ─── Blogs ────────────────────────────────────────────────────────────────────
exports.getBlogs = asyncHandler(async (req, res) => {
  const { page, limit } = paginate(req.query.page, req.query.limit || 20);
  const result = await Blog.findAll(page, limit);
  paginated(res, result.rows, { page: result.page, limit: result.limit, total: result.total });
});

exports.createBlog = asyncHandler(async (req, res) => {
  const data = { ...req.body };
  if (!data.blog_name) return fail(res, 'blog_name is required');
  data.slug = data.slug || slugify(data.blog_name) || uniqueSlug(data.blog_name);
  const image = getUploadedFilename(req);
  if (image) data.blog_image = image;
  const id = await Blog.create(data);
  created(res, { blog_id: id });
});

exports.updateBlog = asyncHandler(async (req, res) => {
  const data = { ...req.body };
  const image = getUploadedFilename(req);
  if (image) data.blog_image = image;
  await Blog.update(req.params.id, data);
  ok(res, null, { message: 'Blog updated' });
});

exports.deleteBlog = asyncHandler(async (req, res) => {
  await Blog.softDelete(req.params.id);
  ok(res, null, { message: 'Blog deleted' });
});

// ─── Reviews ──────────────────────────────────────────────────────────────────
exports.getReviews = asyncHandler(async (req, res) => {
  ok(res, await Review.findAll());
});

exports.createReview = asyncHandler(async (req, res) => {
  const data = { ...req.body };
  const image = getUploadedFilename(req);
  if (image) data.image = image;
  const id = await Review.create(data);
  created(res, { review_id: id });
});

exports.updateReview = asyncHandler(async (req, res) => {
  const data = { ...req.body };
  const image = getUploadedFilename(req);
  if (image) data.image = image;
  await Review.update(req.params.id, data);
  ok(res, null, { message: 'Review updated' });
});

exports.deleteReview = asyncHandler(async (req, res) => {
  await Review.softDelete(req.params.id);
  ok(res, null, { message: 'Review deleted' });
});

// ─── Employees ────────────────────────────────────────────────────────────────
exports.getEmployees = asyncHandler(async (req, res) => {
  ok(res, await Employee.findAll());
});

exports.createEmployee = asyncHandler(async (req, res) => {
  const data = { ...req.body };
  if (data.password) data.password = await bcrypt.hash(data.password, 12);
  const id = await Employee.create(data);
  created(res, { employee_id: id });
});

exports.updateEmployee = asyncHandler(async (req, res) => {
  const data = { ...req.body };
  if (data.password) data.password = await bcrypt.hash(data.password, 12);
  await Employee.update(req.params.id, data);
  ok(res, null, { message: 'Employee updated' });
});

exports.deleteEmployee = asyncHandler(async (req, res) => {
  await Employee.softDelete(req.params.id);
  ok(res, null, { message: 'Employee deleted' });
});

// ─── Suppliers ────────────────────────────────────────────────────────────────
exports.getSuppliers = asyncHandler(async (req, res) => {
  ok(res, await Supplier.findAll());
});

exports.createSupplier = asyncHandler(async (req, res) => {
  const id = await Supplier.create(req.body);
  created(res, { supplier_id: id });
});

exports.updateSupplier = asyncHandler(async (req, res) => {
  await Supplier.update(req.params.id, req.body);
  ok(res, null, { message: 'Supplier updated' });
});

exports.deleteSupplier = asyncHandler(async (req, res) => {
  await Supplier.softDelete(req.params.id);
  ok(res, null, { message: 'Supplier deleted' });
});

// ─── Promos ───────────────────────────────────────────────────────────────────
exports.getPromos = asyncHandler(async (req, res) => {
  ok(res, await Promo.findAll());
});

exports.createPromo = asyncHandler(async (req, res) => {
  const id = await Promo.create(req.body);
  created(res, { promo_id: id });
});

exports.updatePromo = asyncHandler(async (req, res) => {
  await Promo.update(req.params.id, req.body);
  ok(res, null, { message: 'Promo updated' });
});

exports.deletePromo = asyncHandler(async (req, res) => {
  await Promo.softDelete(req.params.id);
  ok(res, null, { message: 'Promo deleted' });
});

// ─── Offers ───────────────────────────────────────────────────────────────────
exports.getOffers = asyncHandler(async (req, res) => {
  ok(res, await Offer.findAll());
});

exports.createOffer = asyncHandler(async (req, res) => {
  const id = await Offer.create(req.body);
  created(res, { offer_id: id });
});

exports.updateOffer = asyncHandler(async (req, res) => {
  await Offer.update(req.params.id, req.body);
  ok(res, null, { message: 'Offer updated' });
});

exports.deleteOffer = asyncHandler(async (req, res) => {
  await Offer.softDelete(req.params.id);
  ok(res, null, { message: 'Offer deleted' });
});

// ─── Enquiries ────────────────────────────────────────────────────────────────
exports.getContactEnquiries = asyncHandler(async (req, res) => {
  const { page, limit } = paginate(req.query.page, req.query.limit || 20);
  const result = await Enquiry.findAll(page, limit);
  paginated(res, result.rows, { page: result.page, limit: result.limit, total: result.total });
});

exports.deleteContactEnquiry = asyncHandler(async (req, res) => {
  await Enquiry.softDelete(req.params.id);
  ok(res, null, { message: 'Enquiry deleted' });
});

exports.getProductEnquiries = asyncHandler(async (req, res) => {
  const { page, limit } = paginate(req.query.page, req.query.limit || 20);
  const result = await ProductEnquiry.findAll(page, limit);
  paginated(res, result.rows, { page: result.page, limit: result.limit, total: result.total });
});

exports.deleteProductEnquiry = asyncHandler(async (req, res) => {
  await ProductEnquiry.softDelete(req.params.id);
  ok(res, null, { message: 'Enquiry deleted' });
});

// ─── Newsletter ───────────────────────────────────────────────────────────────
exports.getNewsletterSubscribers = asyncHandler(async (req, res) => {
  const { page, limit } = paginate(req.query.page, req.query.limit || 20);
  const result = await Newsletter.findAll(page, limit);
  paginated(res, result.rows, { page: result.page, limit: result.limit, total: result.total });
});

exports.deleteSubscriber = asyncHandler(async (req, res) => {
  await Newsletter.softDelete(req.params.id);
  ok(res, null, { message: 'Subscriber removed' });
});

// ─── Pins ─────────────────────────────────────────────────────────────────────
exports.getPins = asyncHandler(async (req, res) => {
  ok(res, await Pin.findAll());
});

// ─── Admin Password Change ────────────────────────────────────────────────────
exports.changePassword = asyncHandler(async (req, res) => {
  const { oldPassword, newPassword } = req.body;
  if (!oldPassword || !newPassword) return fail(res, 'oldPassword and newPassword required');
  const admin = await Employee.findByUserId(req.user.username);
  if (!admin) return notFound(res, 'Admin not found');
  const valid = await bcrypt.compare(oldPassword, admin.password);
  if (!valid) return fail(res, 'Current password is incorrect');
  const hashed = await bcrypt.hash(newPassword, 12);
  await Employee.updatePassword(req.user.username, hashed);
  ok(res, null, { message: 'Password changed successfully' });
});
