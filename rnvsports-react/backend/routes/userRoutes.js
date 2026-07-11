'use strict';
const router = require('express').Router();
const ctrl   = require('../controllers/userController');
const { requireAuth } = require('../middlewares/auth');
const { upload } = require('../middlewares/upload');

router.get('/profile',          requireAuth, ctrl.getProfile);
router.put('/profile',          requireAuth, upload.single('photo'), ctrl.updateProfile);
router.put('/change-password',  requireAuth, ctrl.changePassword);

module.exports = router;
