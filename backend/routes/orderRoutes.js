'use strict';
const router = require('express').Router();
const ctrl   = require('../controllers/orderController');
const { requireAuth, optionalAuth } = require('../middlewares/auth');

router.post('/',                  optionalAuth, ctrl.createOrder);
router.get('/my-orders',          requireAuth,  ctrl.getMyOrders);
router.get('/:orderNo',           requireAuth,  ctrl.getOrderDetails);

module.exports = router;
