'use strict';
const router = require('express').Router();
const ctrl   = require('../controllers/adminController');
const { requireAuth, requireAdmin } = require('../middlewares/auth');
const { upload } = require('../middlewares/upload');

const admin = [requireAuth, requireAdmin];

// ─── Dashboard ────────────────────────────────────────────────────────────────
router.get('/dashboard',                ...admin, ctrl.getDashboard);

// ─── Products ─────────────────────────────────────────────────────────────────
router.get('/products',                 ...admin, ctrl.getProducts);
router.post('/products',                ...admin, upload.single('featured_image'), ctrl.createProduct);
router.put('/products/:id',             ...admin, upload.single('featured_image'), ctrl.updateProduct);
router.delete('/products/:id',          ...admin, ctrl.deleteProduct);

// ─── Categories ───────────────────────────────────────────────────────────────
router.get('/categories',               ...admin, ctrl.getCategories);
router.post('/categories',              ...admin, ctrl.createCategory);
router.put('/categories/:id',           ...admin, ctrl.updateCategory);
router.delete('/categories/:id',        ...admin, ctrl.deleteCategory);

// ─── Brands ───────────────────────────────────────────────────────────────────
router.get('/brands',                   ...admin, ctrl.getBrands);
router.post('/brands',                  ...admin, upload.single('image'), ctrl.createBrand);
router.put('/brands/:id',               ...admin, upload.single('image'), ctrl.updateBrand);
router.delete('/brands/:id',            ...admin, ctrl.deleteBrand);

// ─── Orders ───────────────────────────────────────────────────────────────────
router.get('/orders',                   ...admin, ctrl.getOrders);
router.get('/orders/:orderNo',          ...admin, ctrl.getOrderDetails);
router.put('/orders/:orderNo/status',   ...admin, ctrl.updateOrderStatus);
router.delete('/orders/:orderNo',       ...admin, ctrl.deleteOrder);
router.get('/reports/sales',            ...admin, ctrl.getSalesReport);

// ─── Customers ────────────────────────────────────────────────────────────────
router.get('/customers',                ...admin, ctrl.getCustomers);
router.delete('/customers/:id',         ...admin, ctrl.deleteCustomer);

// ─── Blogs ────────────────────────────────────────────────────────────────────
router.get('/blogs',                    ...admin, ctrl.getBlogs);
router.post('/blogs',                   ...admin, upload.single('image'), ctrl.createBlog);
router.put('/blogs/:id',                ...admin, upload.single('image'), ctrl.updateBlog);
router.delete('/blogs/:id',             ...admin, ctrl.deleteBlog);

// ─── Reviews ──────────────────────────────────────────────────────────────────
router.get('/reviews',                  ...admin, ctrl.getReviews);
router.post('/reviews',                 ...admin, upload.single('image'), ctrl.createReview);
router.put('/reviews/:id',              ...admin, upload.single('image'), ctrl.updateReview);
router.delete('/reviews/:id',           ...admin, ctrl.deleteReview);

// ─── Employees ────────────────────────────────────────────────────────────────
router.get('/employees',                ...admin, ctrl.getEmployees);
router.post('/employees',               ...admin, ctrl.createEmployee);
router.put('/employees/:id',            ...admin, ctrl.updateEmployee);
router.delete('/employees/:id',         ...admin, ctrl.deleteEmployee);

// ─── Suppliers ────────────────────────────────────────────────────────────────
router.get('/suppliers',                ...admin, ctrl.getSuppliers);
router.post('/suppliers',               ...admin, ctrl.createSupplier);
router.put('/suppliers/:id',            ...admin, ctrl.updateSupplier);
router.delete('/suppliers/:id',         ...admin, ctrl.deleteSupplier);

// ─── Promos ───────────────────────────────────────────────────────────────────
router.get('/promos',                   ...admin, ctrl.getPromos);
router.post('/promos',                  ...admin, ctrl.createPromo);
router.put('/promos/:id',               ...admin, ctrl.updatePromo);
router.delete('/promos/:id',            ...admin, ctrl.deletePromo);

// ─── Offers ───────────────────────────────────────────────────────────────────
router.get('/offers',                   ...admin, ctrl.getOffers);
router.post('/offers',                  ...admin, ctrl.createOffer);
router.put('/offers/:id',               ...admin, ctrl.updateOffer);
router.delete('/offers/:id',            ...admin, ctrl.deleteOffer);

// ─── Enquiries ────────────────────────────────────────────────────────────────
router.get('/enquiries',                ...admin, ctrl.getContactEnquiries);
router.delete('/enquiries/:id',         ...admin, ctrl.deleteContactEnquiry);
router.get('/enquiries/product',        ...admin, ctrl.getProductEnquiries);
router.delete('/enquiries/product/:id', ...admin, ctrl.deleteProductEnquiry);

// ─── Newsletter ───────────────────────────────────────────────────────────────
router.get('/newsletter',               ...admin, ctrl.getNewsletterSubscribers);
router.delete('/newsletter/:id',        ...admin, ctrl.deleteSubscriber);

// ─── Pins ─────────────────────────────────────────────────────────────────────
router.get('/pins',                     ...admin, ctrl.getPins);

// ─── Admin password ───────────────────────────────────────────────────────────
router.put('/change-password',          ...admin, ctrl.changePassword);

module.exports = router;
