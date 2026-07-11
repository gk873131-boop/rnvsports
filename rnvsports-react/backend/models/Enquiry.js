'use strict';
const { query, getOne } = require('../config/database');

const Enquiry = {
  async create({ name, email, subject = 'Contact Us', message }) {
    const result = await query(
      'INSERT INTO tbl_enquiry (name, email, subject, message) VALUES (?, ?, ?, ?)',
      [name, email, subject, message]
    );
    return result.insertId;
  },

  async findAll(page = 1, limit = 20) {
    const p = Math.max(1, parseInt(page, 10));
    const l = parseInt(limit, 10);
    const offset = (p - 1) * l;
    const [rows, [{ total }]] = await Promise.all([
      query('SELECT * FROM tbl_enquiry WHERE status = 1 ORDER BY created_at DESC LIMIT ? OFFSET ?', [l, offset]),
      query('SELECT COUNT(*) AS total FROM tbl_enquiry WHERE status = 1')
    ]);
    return { rows, total, page: p, limit: l };
  },

  async softDelete(id) {
    await query('UPDATE tbl_enquiry SET status = 0 WHERE id = ?', [id]);
  }
};

const ProductEnquiry = {
  async create({ product_id, name, email, number, address, message }) {
    const result = await query(
      'INSERT INTO tbl_product_enquiry (product_id, name, email, number, address, message) VALUES (?, ?, ?, ?, ?, ?)',
      [product_id, name, email, number, address, message]
    );
    return result.insertId;
  },

  async findAll(page = 1, limit = 20) {
    const p = Math.max(1, parseInt(page, 10));
    const l = parseInt(limit, 10);
    const offset = (p - 1) * l;
    const [rows, [{ total }]] = await Promise.all([
      query(
        `SELECT pe.*, p.product_name FROM tbl_product_enquiry pe
         LEFT JOIN tbl_product p ON pe.product_id = p.product_id
         WHERE pe.status = 1 ORDER BY pe.created_at DESC LIMIT ? OFFSET ?`,
        [l, offset]
      ),
      query('SELECT COUNT(*) AS total FROM tbl_product_enquiry WHERE status = 1')
    ]);
    return { rows, total, page: p, limit: l };
  },

  async softDelete(id) {
    await query('UPDATE tbl_product_enquiry SET status = 0 WHERE id = ?', [id]);
  }
};

module.exports = { Enquiry, ProductEnquiry };
