const express = require('express');
const router = express.Router();
const { verifyToken, requireAdmin } = require('../middleware/auth');
const admin = require('../controllers/adminController');

const protect = [verifyToken, requireAdmin];

router.get('/dashboard', admin.dashboard);

router.get('/products', protect, admin.products.list);
router.post('/products', protect, admin.products.create);
router.put('/products/:id', protect, admin.products.update);
router.delete('/products/:id', protect, admin.products.remove);

router.get('/categories', protect, admin.categories.list);
router.post('/categories', protect, admin.categories.create);
router.put('/categories/:id', protect, admin.categories.update);
router.delete('/categories/:id', protect, admin.categories.remove);

router.get('/brands', protect, admin.brands.list);
router.post('/brands', protect, admin.brands.create);
router.put('/brands/:id', protect, admin.brands.update);
router.delete('/brands/:id', protect, admin.brands.remove);

router.get('/blogs', protect, admin.blogs.list);
router.post('/blogs', protect, admin.blogs.create);
router.put('/blogs/:id', protect, admin.blogs.update);
router.delete('/blogs/:id', protect, admin.blogs.remove);

router.get('/reviews', protect, admin.reviews.list);
router.post('/reviews', protect, admin.reviews.create);
router.put('/reviews/:id', protect, admin.reviews.update);
router.delete('/reviews/:id', protect, admin.reviews.remove);

router.get('/banners', protect, admin.banners.list);
router.post('/banners', protect, admin.banners.create);
router.put('/banners/:id', protect, admin.banners.update);
router.delete('/banners/:id', protect, admin.banners.remove);

router.get('/promos', protect, admin.promos.list);
router.post('/promos', protect, admin.promos.create);
router.put('/promos/:id', protect, admin.promos.update);
router.delete('/promos/:id', protect, admin.promos.remove);

router.get('/employees', protect, admin.employees.list);
router.post('/employees', protect, admin.employees.create);
router.put('/employees/:id', protect, admin.employees.update);
router.delete('/employees/:id', protect, admin.employees.remove);

router.get('/suppliers', protect, admin.suppliers.list);
router.post('/suppliers', protect, admin.suppliers.create);
router.put('/suppliers/:id', protect, admin.suppliers.update);
router.delete('/suppliers/:id', protect, admin.suppliers.remove);

router.get('/orders', protect, admin.orders.list);
router.put('/orders/:orderNo', protect, admin.orders.updateStatus);

router.get('/enquiries', protect, admin.enquiries.list);
router.delete('/enquiries/:id', protect, admin.enquiries.remove);

router.put('/password', protect, admin.changePassword);

module.exports = router;
