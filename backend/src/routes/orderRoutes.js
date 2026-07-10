const express = require('express');
const router = express.Router();
const c = require('../controllers/orderController');

router.post('/', c.createOrder);
router.get('/my-orders', c.getOrders);
router.get('/:orderNo', c.getOrderDetails);

module.exports = router;
