'use strict';
const router = require('express').Router();
const ctrl   = require('../controllers/authController');
const { authLimiter } = require('../middlewares/rateLimiter');

router.post('/register',    authLimiter, ctrl.register);
router.post('/login',       authLimiter, ctrl.login);
router.post('/admin/login', authLimiter, ctrl.adminLogin);

module.exports = router;
