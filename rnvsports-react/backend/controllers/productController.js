'use strict';
const Product          = require('../models/Product');
const { asyncHandler, paginate } = require('../middlewares/helpers');
const { ok, created, fail, notFound, paginated } = require('../utils/response');
const { slugify, uniqueSlug } = require('../utils/slugify');
const { getUploadedFilename } = require('../services/uploadService');

exports.getAll = asyncHandler(async (req, res) => {
  const { page, limit } = paginate(req.query.page, req.query.limit);
  const result = await Product.findAll({ ...req.query, page, limit });
  paginated(res, result.rows, {
    page: result.page, limit: result.limit,
    total: result.total,
    totalPages: Math.ceil(result.total / result.limit)
  });
});

exports.getBySlug = asyncHandler(async (req, res) => {
  const product = await Product.findBySlug(req.params.slug);
  if (!product) return notFound(res, 'Product not found');
  ok(res, product);
});

exports.getFeatured = asyncHandler(async (req, res) => {
  const limit = Math.min(20, parseInt(req.query.limit || '10', 10));
  const result = await Product.findAll({ featured_product: 1, limit, page: 1 });
  ok(res, result.rows);
});

exports.getHotSelling = asyncHandler(async (req, res) => {
  const limit = Math.min(20, parseInt(req.query.limit || '10', 10));
  const result = await Product.findAll({ special: 1, limit, page: 1 });
  ok(res, result.rows);
});

exports.getNewArrivals = asyncHandler(async (req, res) => {
  const limit = Math.min(20, parseInt(req.query.limit || '10', 10));
  const result = await Product.findAll({ new_arraival: 1, limit, page: 1 });
  ok(res, result.rows);
});

exports.getByCategory = asyncHandler(async (req, res) => {
  const { page, limit } = paginate(req.query.page, req.query.limit);
  const result = await Product.findByCategory(req.params.slug, page, limit);
  paginated(res, result.rows, {
    page: result.page, limit: result.limit,
    total: result.total,
    totalPages: Math.ceil(result.total / result.limit)
  });
});

exports.getByBrand = asyncHandler(async (req, res) => {
  const { page, limit } = paginate(req.query.page, req.query.limit);
  const result = await Product.findByBrand(req.params.slug, page, limit);
  paginated(res, result.rows, {
    page: result.page, limit: result.limit,
    total: result.total,
    totalPages: Math.ceil(result.total / result.limit)
  });
});

exports.getRelated = asyncHandler(async (req, res) => {
  const product = await Product.findById(req.params.id);
  if (!product) return notFound(res, 'Product not found');
  const related = await Product.findRelated(product.product_id, product.category_id);
  ok(res, related);
});

exports.getPriceRange = asyncHandler(async (req, res) => {
  const range = await Product.priceRange();
  ok(res, range);
});

exports.search = asyncHandler(async (req, res) => {
  const q = (req.query.q || '').trim();
  if (!q) return ok(res, []);
  const rows = await Product.search(q, 15);
  ok(res, rows);
});

exports.create = asyncHandler(async (req, res) => {
  const data = { ...req.body };
  if (!data.product_name) return fail(res, 'Product name is required');

  const base = slugify(data.product_name);
  data.product_slug = data.product_slug || base || uniqueSlug(data.product_name);

  const featuredImage = getUploadedFilename(req);
  if (featuredImage) data.featured_image = featuredImage;

  const id = await Product.create(data);
  const product = await Product.findById(id);
  created(res, product);
});

exports.update = asyncHandler(async (req, res) => {
  const { id } = req.params;
  const existing = await Product.findById(id);
  if (!existing) return notFound(res, 'Product not found');

  const data = { ...req.body };
  const featuredImage = getUploadedFilename(req);
  if (featuredImage) data.featured_image = featuredImage;

  await Product.update(id, data);
  const product = await Product.findById(id);
  ok(res, product);
});

exports.remove = asyncHandler(async (req, res) => {
  await Product.softDelete(req.params.id);
  ok(res, null, { message: 'Product deleted' });
});
