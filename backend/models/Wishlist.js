'use strict';
const { query, getOne } = require('../config/database');

const Wishlist = {
  async findByUser(userId) {
    return query(
      `SELECT w.*, p.product_name, p.product_slug, p.featured_image,
              p.sale_price, p.regular_price
       FROM tbl_wishlist w
       INNER JOIN tbl_product p ON w.product_id = p.product_id
       WHERE w.user_id = ? AND w.status = 1`,
      [userId]
    );
  },

  async findItem(userId, productId) {
    return getOne(
      'SELECT * FROM tbl_wishlist WHERE user_id = ? AND product_id = ? AND status = 1',
      [userId, productId]
    );
  },

  async add(userId, productId, price) {
    const result = await query(
      'INSERT INTO tbl_wishlist (user_id, product_id, whislist_price, status) VALUES (?, ?, ?, 1)',
      [userId, productId, price || 0]
    );
    return result.insertId;
  },

  async remove(wishlistId, userId) {
    await query('UPDATE tbl_wishlist SET status = 0 WHERE wishlist_id = ? AND user_id = ?', [wishlistId, userId]);
  },

  async clearByUser(userId) {
    await query('UPDATE tbl_wishlist SET status = 0 WHERE user_id = ?', [userId]);
  }
};

module.exports = Wishlist;
