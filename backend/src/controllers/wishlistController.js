const { query } = require('../config/database');
const { asyncHandler } = require('../middleware/helpers');
const { verifyToken } = require('../middleware/auth');

exports.getWishlist = [verifyToken, asyncHandler(async (req, res) => {
  const rows = await query(
    `SELECT w.*, p.product_name, p.product_slug, p.featured_image, p.sale_price, p.regular_price
     FROM tbl_wishlist w
     INNER JOIN tbl_product p ON w.product_id = p.product_id
     WHERE w.user_id = ? AND w.status = 1`,
    [req.user.id]
  );
  res.json({ success: true, data: rows });
})];

exports.addItem = [verifyToken, asyncHandler(async (req, res) => {
  const { product_id, price } = req.body;
  const existing = await query('SELECT * FROM tbl_wishlist WHERE user_id = ? AND product_id = ? AND status = 1', [req.user.id, product_id]);
  if (existing.length) return res.status(409).json({ success: false, message: 'Already in wishlist' });
  await query('INSERT INTO tbl_wishlist (user_id, product_id, whislist_price, status) VALUES (?, ?, ?, 1)', [req.user.id, product_id, price]);
  res.status(201).json({ success: true, message: 'Added to wishlist' });
})];

exports.removeItem = [verifyToken, asyncHandler(async (req, res) => {
  await query('UPDATE tbl_wishlist SET status = 0 WHERE wishlist_id = ? AND user_id = ?', [req.params.id, req.user.id]);
  res.json({ success: true, message: 'Removed from wishlist' });
})];
