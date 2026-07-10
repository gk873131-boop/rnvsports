'use strict';
const router = require('express').Router();
const ctrl   = require('../controllers/productController');
const { requireAuth, requireAdmin } = require('../middlewares/auth');
const { upload } = require('../middlewares/upload');

// Public
router.get('/',                    ctrl.getAll);
router.get('/featured',            ctrl.getFeatured);
router.get('/hot-selling',         ctrl.getHotSelling);
router.get('/new-arrivals',        ctrl.getNewArrivals);
router.get('/price-range',         ctrl.getPriceRange);
router.get('/search',              ctrl.search);
router.get('/category/:slug',      ctrl.getByCategory);
router.get('/brand/:slug',         ctrl.getByBrand);
router.get('/:id/related',         ctrl.getRelated);
router.get('/:slug',               ctrl.getBySlug);

// Admin only
router.post('/',    requireAuth, requireAdmin, upload.single('featured_image'), ctrl.create);
router.put('/:id',  requireAuth, requireAdmin, upload.single('featured_image'), ctrl.update);
router.delete('/:id', requireAuth, requireAdmin, ctrl.remove);

module.exports = router;
