'use strict';
const { query, getOne } = require('../config/database');

const Order = {
  async create(orderNo, item, meta) {
    const result = await query(
      `INSERT INTO tbl_order_management
       (order_no, client_name, user_id, product_id, qty, product_price, total_amt,
        payment_mode, address, landmark, pin, state, city, mobile, email, company_name,
        order_status, date, payment_status,
        ship_fname, ship_lname, ship_company, ship_Address, ship_apartment,
        ship_city, ship_state, ship_zipcode, ship_email, ship_mobile,
        total_discount, promo_id, size, product_color, status)
       VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,'Pending',?,0,?,?,?,?,?,?,?,?,?,?,?,?,?,?,1)`,
      [
        orderNo,
        meta.client_name,
        meta.user_id || null,
        item.product_id,
        item.qty,
        item.product_price,
        item.total_amt,
        meta.payment_mode || 'online',
        meta.address,
        meta.landmark || null,
        meta.pin,
        meta.state,
        meta.city,
        meta.mobile,
        meta.email,
        meta.company_name || null,
        meta.date,
        meta.ship_fname || null,
        meta.ship_lname || null,
        meta.ship_company || null,
        meta.ship_Address || null,
        meta.ship_apartment || null,
        meta.ship_city || null,
        meta.ship_state || null,
        meta.ship_zipcode || null,
        meta.ship_email || null,
        meta.ship_mobile || null,
        meta.total_discount || 0,
        meta.promo_id || null,
        item.size || null,
        item.product_color || null
      ]
    );
    return result.insertId;
  },

  async findByUser(userId) {
    return query(
      `SELECT order_no, client_name, SUM(total_amt) AS grand_total,
              order_status, payment_status, payment_mode, date, created_at
       FROM tbl_order_management
       WHERE user_id = ? AND status = 1
       GROUP BY order_no
       ORDER BY created_at DESC`,
      [userId]
    );
  },

  async findByOrderNo(orderNo, userId = null) {
    const sql = userId
      ? 'SELECT om.*, p.product_name, p.featured_image FROM tbl_order_management om LEFT JOIN tbl_product p ON om.product_id = p.product_id WHERE om.order_no = ? AND om.user_id = ?'
      : 'SELECT om.*, p.product_name, p.featured_image FROM tbl_order_management om LEFT JOIN tbl_product p ON om.product_id = p.product_id WHERE om.order_no = ?';
    const params = userId ? [orderNo, userId] : [orderNo];
    return query(sql, params);
  },

  async findAll({ page = 1, limit = 20, status, order_status } = {}) {
    const p = Math.max(1, parseInt(page, 10));
    const l = Math.min(100, parseInt(limit, 10));
    const offset = (p - 1) * l;

    let where = 'WHERE om.status = 1';
    const vals = [];
    if (order_status) { where += ' AND om.order_status = ?'; vals.push(order_status); }

    const rows = await query(
      `SELECT order_no, client_name, email, mobile,
              SUM(total_amt) AS grand_total, order_status,
              payment_status, payment_mode, date, created_at
       FROM tbl_order_management om
       ${where}
       GROUP BY order_no
       ORDER BY created_at DESC
       LIMIT ? OFFSET ?`,
      [...vals, l, offset]
    );
    const [{ total }] = await query(
      `SELECT COUNT(DISTINCT order_no) AS total FROM tbl_order_management om ${where}`, vals
    );
    return { rows, total, page: p, limit: l };
  },

  async updateStatus(orderNo, orderStatus, paymentStatus) {
    await query(
      'UPDATE tbl_order_management SET order_status = ?, payment_status = ? WHERE order_no = ?',
      [orderStatus, paymentStatus, orderNo]
    );
  },

  async updatePaymentStatus(orderNo, status) {
    await query('UPDATE tbl_order_management SET payment_status = ? WHERE order_no = ?', [status, orderNo]);
  },

  async softDelete(orderNo) {
    await query('UPDATE tbl_order_management SET status = 0 WHERE order_no = ?', [orderNo]);
  },

  async todayStats() {
    const today = new Date().toISOString().slice(0, 10);
    const [ordersRow, salesRow] = await Promise.all([
      getOne('SELECT COUNT(DISTINCT order_no) AS count FROM tbl_order_management WHERE date = ? AND status = 1', [today]),
      getOne('SELECT COALESCE(SUM(total_amt),0) AS total FROM tbl_order_management WHERE date = ? AND status = 1', [today])
    ]);
    return { todayOrders: ordersRow.count, todaySales: salesRow.total };
  },

  async totalStats() {
    const [salesRow, productsRow] = await Promise.all([
      getOne('SELECT COALESCE(SUM(total_amt),0) AS total FROM tbl_order_management WHERE status = 1'),
      getOne('SELECT COUNT(*) AS count FROM tbl_product WHERE status = 1')
    ]);
    return { totalSales: salesRow.total, totalProducts: productsRow.count };
  },

  async salesReport(from, to) {
    return query(
      `SELECT om.order_no, om.client_name, p.product_name,
              om.qty, om.product_price, om.total_amt, om.order_status, om.date
       FROM tbl_order_management om
       LEFT JOIN tbl_product p ON om.product_id = p.product_id
       WHERE om.date BETWEEN ? AND ? AND om.status = 1
       ORDER BY om.date DESC`,
      [from, to]
    );
  }
};

module.exports = Order;
