'use strict';
const { query, getOne } = require('../config/database');

const Cart = {
  async getByUser(userId) {
    return query(
      `SELECT c.*, p.product_name, p.product_slug, p.featured_image,
              p.regular_price, p.sale_price
       FROM tbl_cart c
       INNER JOIN tbl_product p ON c.product_id = p.product_id
       WHERE c.user_id = ? AND c.status = 1`,
      [userId]
    );
  },

  async getByCookie(cookieId) {
    return query(
      `SELECT c.*, p.product_name, p.product_slug, p.featured_image,
              p.regular_price, p.sale_price
       FROM tbl_cart c
       INNER JOIN tbl_product p ON c.product_id = p.product_id
       WHERE c.product_cookie = ? AND c.user_id IS NULL AND c.status = 1`,
      [cookieId]
    );
  },

  async findExisting(productId, sizeId, userId, cookieId) {
    if (userId) {
      return getOne(
        'SELECT * FROM tbl_cart WHERE product_id = ? AND size_id = ? AND user_id = ? AND status = 1',
        [productId, sizeId || null, userId]
      );
    }
    return getOne(
      'SELECT * FROM tbl_cart WHERE product_id = ? AND size_id = ? AND product_cookie = ? AND user_id IS NULL AND status = 1',
      [productId, sizeId || null, cookieId]
    );
  },

  async add({ userId, cookieId, product_id, product_qty = 1, cart_price, size_id, size, color_id, product_color }) {
    const result = await query(
      `INSERT INTO tbl_cart
       (user_id, product_id, product_qty, product_cookie, cart_price, size_id, size, color_id, product_color, status)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 1)`,
      [userId || null, product_id, product_qty, userId ? null : cookieId, cart_price, size_id || null, size || null, color_id || null, product_color || null]
    );
    return result.insertId;
  },

  async incrementQty(cartId, qty = 1) {
    await query('UPDATE tbl_cart SET product_qty = product_qty + ? WHERE cart_id = ?', [qty, cartId]);
  },

  async updateQty(cartId, qty) {
    await query('UPDATE tbl_cart SET product_qty = ? WHERE cart_id = ?', [qty, cartId]);
  },

  async remove(cartId) {
    await query('UPDATE tbl_cart SET status = 0 WHERE cart_id = ?', [cartId]);
  },

  async clearByUser(userId) {
    await query('UPDATE tbl_cart SET status = 0 WHERE user_id = ?', [userId]);
  },

  async clearByCookie(cookieId) {
    await query('UPDATE tbl_cart SET status = 0 WHERE product_cookie = ? AND user_id IS NULL', [cookieId]);
  },

  async countByUser(userId) {
    const r = await getOne('SELECT SUM(product_qty) AS total FROM tbl_cart WHERE user_id = ? AND status = 1', [userId]);
    return r?.total || 0;
  },

  async countByCookie(cookieId) {
    const r = await getOne('SELECT SUM(product_qty) AS total FROM tbl_cart WHERE product_cookie = ? AND user_id IS NULL AND status = 1', [cookieId]);
    return r?.total || 0;
  }
};

module.exports = Cart;
