'use strict';
const router = require('express').Router();
const ctrl   = require('../controllers/bannerController');
const { requireAuth, requireAdmin } = require('../middlewares/auth');
const { upload } = require('../middlewares/upload');

// Home banners
router.get('/home',            ctrl.getHomeBanners);
router.post('/home',           requireAuth, requireAdmin, upload.single('image'), ctrl.addHomeBanner);
router.delete('/home/:id',     requireAuth, requireAdmin, ctrl.deleteHomeBanner);

// Left banners
router.get('/left',            ctrl.getLeftBanners);
router.post('/left',           requireAuth, requireAdmin, upload.single('image'), ctrl.addLeftBanner);
router.delete('/left/:id',     requireAuth, requireAdmin, ctrl.deleteLeftBanner);

// Right banners
router.get('/right',           ctrl.getRightBanners);
router.post('/right',          requireAuth, requireAdmin, upload.single('image'), ctrl.addRightBanner);
router.delete('/right/:id',    requireAuth, requireAdmin, ctrl.deleteRightBanner);

// Extra banners
router.get('/extra',           ctrl.getExtraBanners);
router.post('/extra',          requireAuth, requireAdmin, upload.single('image'), ctrl.addExtraBanner);
router.delete('/extra/:id',    requireAuth, requireAdmin, ctrl.deleteExtraBanner);

// Videos
router.get('/videos',          ctrl.getVideos);
router.put('/videos',          requireAuth, requireAdmin, ctrl.updateVideos);

module.exports = router;
