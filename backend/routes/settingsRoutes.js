'use strict';
const router = require('express').Router();
const ctrl   = require('../controllers/settingsController');
const { requireAuth, requireAdmin } = require('../middlewares/auth');
const { upload } = require('../middlewares/upload');

// Public
router.get('/',                            ctrl.getSettings);
router.get('/pin/:code',                   ctrl.checkPin);

// Admin only
router.put('/videos',                      requireAuth, requireAdmin, ctrl.updateVideos);

// Pincode shipping
router.get('/pins',                        requireAuth, requireAdmin, ctrl.getAllPins);
router.post('/pins',                       requireAuth, requireAdmin, ctrl.addPin);
router.put('/pins/:id',                    requireAuth, requireAdmin, ctrl.updatePin);
router.delete('/pins/:id',                 requireAuth, requireAdmin, ctrl.deletePin);

// Product gallery (could live in productRoutes but grouped here for admin convenience)
router.get('/gallery/:productId',          ctrl.getGallery);
router.post('/gallery/:productId',         requireAuth, requireAdmin, upload.single('image'), ctrl.addGalleryImage);
router.delete('/gallery/:id',              requireAuth, requireAdmin, ctrl.removeGalleryImage);

// Product prices
router.get('/prices/:productId',           ctrl.getPrices);
router.post('/prices/:productId',          requireAuth, requireAdmin, ctrl.addPrice);
router.delete('/prices/:id',               requireAuth, requireAdmin, ctrl.removePrice);

// Product colors
router.get('/colors/:productId',           ctrl.getColors);
router.post('/colors/:productId',          requireAuth, requireAdmin, ctrl.addColor);
router.delete('/colors/:id',               requireAuth, requireAdmin, ctrl.removeColor);

module.exports = router;
