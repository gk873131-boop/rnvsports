const { query } = require('../config/database');
const { asyncHandler } = require('../middleware/helpers');
const { optionalAuth } = require('../middleware/auth');

const crypto = require('crypto');

function getCookieId(req) {
  if (!req.headers['x-cart-cookie']) {
    req.headers['x-cart-cookie'] = crypto.randomBytes(16).toString('hex');
  }
  return req.headers['x-cart-cookie'];
}

exports.getCart = [optionalAuth, asyncHandler(async (req, res) => {
  const userId = req.user?.id;
  const cookieId = getCookieId(req);

  let where = 'status = 1';
  const values = [];
  if (userId) { where += ' AND user_id = ?'; values.push(userId); }
  else { where += ' AND product_cookie = ? AND user_id IS NULL'; values.push(cookieId); }

  const rows = await query(
    `SELECT c.*, p.product_name, p.product_slug, p.featured_image, p.regular_price, p.sale_price
     FROM tbl_cart c
     INNER JOIN tbl_product p ON c.product_id = p.product_id
     WHERE ${where}`,
    values
  );

  res.setHeader('X-Cart-Cookie', cookieId);
  res.json({ success: true, data: rows, cookieId });
})];

exports.addItem = [optionalAuth, asyncHandler(async (req, res) => {
  const { product_id, quantity = 1, price, size_id, size, color_id, product_color } = req.body;
  const userId = req.user?.id;
  const cookieId = getCookieId(req);

  const existing = await query(
    `SELECT * FROM tbl_cart WHERE product_id = ? AND ${userId ? 'user_id = ?' : 'product_cookie = ? AND user_id IS NULL'} AND status = 1`,
    userId ? [product_id, userId] : [product_id, cookieId]
  );

  if (existing.length > 0) {
    await query('UPDATE tbl_cart SET product_qty = product_qty + ? WHERE cart_id = ?', [quantity, existing[0].cart_id]);
  } else {
    await query(
      `INSERT INTO tbl_cart (user_id, product_id, product_qty, product_cookie, cart_price, size_id, size, color_id, product_color, status)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 1)`,
      userId ? [userId, product_id, quantity, null, price, size_id, size, color_id, product_color]
             : [null, product_id, quantity, cookieId, price, size_id, size, color_id, product_color]
    );
  }

  res.json({ success: true, message: 'Item added to cart' });
})];

exports.updateItem = [optionalAuth, asyncHandler(async (req, res) => {
  const { quantity } = req.body;
  if (quantity <= 0) {
    await query('UPDATE tbl_cart SET status = 0 WHERE cart_id = ?', [req.params.id]);
  } else {
    await query('UPDATE tbl_cart SET product_qty = ? WHERE cart_id = ?', [quantity, req.params.id]);
  }
  res.json({ success: true, message: 'Cart updated' });
})];

exports.removeItem = [optionalAuth, asyncHandler(async (req, res) => {
  await query('UPDATE tbl_cart SET status = 0 WHERE cart_id = ?', [req.params.id]);
  res.json({ success: true, message: 'Item removed' });
})];

exports.clearCart = [optionalAuth, asyncHandler(async (req, res) => {
  const userId = req.user?.id;
  const cookieId = getCookieId(req);
  if (userId) {
    await query('UPDATE tbl_cart SET status = 0 WHERE user_id = ?', [userId]);
  } else {
    await query('UPDATE tbl_cart SET status = 0 WHERE product_cookie = ? AND user_id IS NULL', [cookieId]);
  }
  res.json({ success: true, message: 'Cart cleared' });
})];
