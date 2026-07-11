'use strict';
const paymentService   = require('../services/payment');
const Order            = require('../models/Order');
const { asyncHandler } = require('../middlewares/helpers');
const { ok, fail }     = require('../utils/response');

exports.initiatePayment = asyncHandler(async (req, res) => {
  const { order_no, amount, customer_id, email, mobile } = req.body;
  if (!order_no || !amount) return fail(res, 'order_no and amount are required');

  const { redirectUrl, transactionId } = await paymentService.initiatePayment({
    amount,
    orderId:         order_no,
    customerId:      customer_id,
    customerEmail:   email,
    customerMobile:  mobile
  });

  ok(res, { redirectUrl, transactionId, order_no });
});

exports.callback = asyncHandler(async (req, res) => {
  const { response } = req.body;
  const xVerify = req.headers['x-verify'];

  if (!response || !xVerify) {
    return res.redirect(`${process.env.CLIENT_URL || 'http://localhost:5173'}/order-failed`);
  }

  const isValid = paymentService.verifyCallback(response, xVerify);
  if (!isValid) {
    return res.redirect(`${process.env.CLIENT_URL || 'http://localhost:5173'}/order-failed`);
  }

  let decoded;
  try {
    decoded = JSON.parse(Buffer.from(response, 'base64').toString('utf-8'));
  } catch {
    return res.redirect(`${process.env.CLIENT_URL || 'http://localhost:5173'}/order-failed`);
  }

  const txnId  = decoded?.data?.merchantTransactionId || '';
  if (!txnId) {
    return res.redirect(`${process.env.CLIENT_URL || 'http://localhost:5173'}/order-failed`);
  }
  // Extract order_no from transactionId (format: TXN_ORDxxx_timestamp)
  const parts  = txnId.split('_');
  const orderNo = parts.slice(1, -1).join('_');

  if (decoded?.data?.responseCode === 'SUCCESS') {
    await Order.updatePaymentStatus(orderNo, 1);
    return res.redirect(`${process.env.CLIENT_URL || 'http://localhost:5173'}/order-success?order=${orderNo}`);
  }

  return res.redirect(`${process.env.CLIENT_URL || 'http://localhost:5173'}/order-failed?order=${orderNo}`);
});

exports.checkStatus = asyncHandler(async (req, res) => {
  const { transactionId } = req.params;
  const data = await paymentService.checkStatus(transactionId);
  ok(res, data);
});
