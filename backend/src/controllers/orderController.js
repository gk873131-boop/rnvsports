const { query } = require('../config/database');
const { asyncHandler } = require('../middleware/helpers');
const { verifyToken, optionalAuth } = require('../middleware/auth');
const crypto = require('crypto');

exports.createOrder = [optionalAuth, asyncHandler(async (req, res) => {
  const {
    customer_name, email, mobile, address, city, state, pincode,
    ship_fname, ship_lname, ship_address, ship_city, ship_state, ship_zipcode,
    items, total_amount, total_discount, payment_mode, promo_id
  } = req.body;

  if (!items || !items.length) return res.status(400).json({ success: false, message: 'No items in order' });

  const order_no = 'ORD' + Date.now() + crypto.randomInt(100, 999);
  const date = new Date().toISOString().slice(0, 10);
  const userId = req.user?.id || null;

  for (const item of items) {
    await query(
      `INSERT INTO tbl_order_management
       (order_no, client_name, user_id, product_id, qty, product_price, total_amt,
        payment_mode, address, order_status, date, mobile, email, pin, state, city,
        payment_status, ship_fname, ship_lname, ship_Address, ship_city, ship_state, ship_zipcode,
        total_discount, promo_id, size, product_color, status)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 'Pending', ?, ?, ?, ?, ?, ?, 0, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 1)`,
      [order_no, customer_name, userId, item.product_id, item.quantity, item.price,
       item.price * item.quantity, payment_mode || 'online', address, date, mobile, email,
       pincode, state, city, ship_fname, ship_lname, ship_address, ship_city, ship_state, ship_zipcode,
       total_discount || 0, promo_id || null, item.size || null, item.color || null]
    );
  }

  res.status(201).json({ success: true, data: { order_no, total_amount, message: 'Order created successfully' } });
})];

exports.getOrders = [verifyToken, asyncHandler(async (req, res) => {
  const rows = await query(
    `SELECT order_no, client_name, total_amt, order_status, payment_status, date, created_at
     FROM tbl_order_management WHERE user_id = ? AND status = 1 GROUP BY order_no ORDER BY created_at DESC`,
    [req.user.id]
  );
  res.json({ success: true, data: rows });
})];

exports.getOrderDetails = [verifyToken, asyncHandler(async (req, res) => {
  const orders = await query('SELECT * FROM tbl_order_management WHERE order_no = ? AND user_id = ?', [req.params.orderNo, req.user.id]);
  if (!orders.length) return res.status(404).json({ success: false, message: 'Order not found' });
  res.json({ success: true, data: orders });
})];
