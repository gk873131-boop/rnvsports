const express = require('express');
const router = express.Router();
const { getProfile, updateProfile, changePassword } = require('../controllers/authController');

router.get('/profile', getProfile);
router.put('/profile', updateProfile);
router.put('/password', changePassword);

module.exports = router;
