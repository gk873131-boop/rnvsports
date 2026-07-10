const express = require('express');
const router = express.Router();
const c = require('../controllers/bannerController');

router.get('/home', c.getHomeBanners);
router.get('/left', c.getLeftBanners);
router.get('/right', c.getRightBanners);
router.get('/videos', c.getVideos);

module.exports = router;
