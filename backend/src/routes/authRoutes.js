const express = require('express');
const router = express.Router();
const c = require('../controllers/authController');

router.post('/register', c.register);
router.post('/login', c.login);
router.post('/admin/login', c.adminLogin);

router.get('/profile', c.getProfile);
router.put('/profile', c.updateProfile);
router.put('/password', c.changePassword);

module.exports = router;
