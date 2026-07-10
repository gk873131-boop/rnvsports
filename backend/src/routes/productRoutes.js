const express = require('express');
const router = express.Router();
const c = require('../controllers/productController');
const { asyncHandler } = require('../middleware/helpers');

router.get('/', c.getAll);
router.get('/featured', c.getFeatured);
router.get('/hot-selling', c.getHotSelling);
router.get('/new-arrivals', c.getNewArrivals);
router.get('/category/:slug', c.getByCategory);
router.get('/brand/:slug', c.getByBrand);
router.get('/related/:id', c.getRelated);
router.get('/search', c.search);
router.get('/:slug', c.getBySlug);

module.exports = router;
