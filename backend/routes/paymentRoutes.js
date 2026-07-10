'use strict';
const router = require('express').Router();
const ctrl   = require('../controllers/paymentController');

// POST from frontend to initiate payment — returns PhonePe redirect URL
router.post('/initiate',       ctrl.initiatePayment);

// PhonePe webhook/callback (no JWT — PhonePe calls this directly)
router.post('/callback',       ctrl.callback);
router.get('/callback',        ctrl.callback);

// Status check
router.get('/status/:transactionId', ctrl.checkStatus);

module.exports = router;
