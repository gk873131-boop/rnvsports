'use strict';
const Order            = require('../models/Order');
const Cart             = require('../models/Cart');
const { asyncHandler, paginate } = require('../middlewares/helpers');
const { ok, created, fail, notFound, paginated } = require('../utils/response');
const { generateOrderNo, today } = require('../utils/helpers');
const emailService     = require('../services/emailService');

exports.createOrder = asyncHandler(async (req, res) => {
  const {
    customer_name, email, mobile, address, landmark, pin, state, city, company_name,
    ship_fname, ship_lname, ship_company, ship_Address, ship_apartment,
    ship_city, ship_state, ship_zipcode, ship_email, ship_mobile,
    items, total_amount, total_discount, payment_mode, promo_id
  } = req.body;

  if (!items || !items.length) return fail(res, 'No items in order');
  if (!email || !mobile || !address) return fail(res, 'Email, mobile, and address are required');

  const orderNo = generateOrderNo();
  const userId  = req.user?.id || null;

  const meta = {
    client_name: customer_name,
    user_id: userId,
    payment_mode: payment_mode || 'online',
    address, landmark, pin, state, city, company_name,
    mobile, email,
    ship_fname, ship_lname, ship_company, ship_Address, ship_apartment,
    ship_city, ship_state, ship_zipcode, ship_email, ship_mobile,
    total_discount: total_discount || 0,
    promo_id: promo_id || null,
    date: today()
  };

  for (const item of items) {
    await Order.create(orderNo, {
      product_id:    item.product_id,
      qty:           item.qty || item.quantity || 1,
      product_price: item.product_price || item.price,
      total_amt:     item.total_amt || (item.price * (item.qty || 1)),
      size:          item.size || null,
      product_color: item.product_color || item.color || null
    }, meta);
  }

  // Clear the user's cart after successful order
  if (userId) {
    await Cart.clearByUser(userId);
  } else if (req.headers['x-cart-cookie']) {
    await Cart.clearByCookie(req.headers['x-cart-cookie']);
  }

  emailService.sendOrderConfirmation({
    email, customerName: customer_name, orderNo, items, totalAmount: total_amount
  }).catch(() => {});

  created(res, { order_no: orderNo, total_amount, payment_mode }, { message: 'Order placed successfully' });
});

exports.getMyOrders = asyncHandler(async (req, res) => {
  const rows = await Order.findByUser(req.user.id);
  ok(res, rows);
});

exports.getOrderDetails = asyncHandler(async (req, res) => {
  const rows = await Order.findByOrderNo(req.params.orderNo, req.user.id);
  if (!rows.length) return notFound(res, 'Order not found');
  ok(res, rows);
});
