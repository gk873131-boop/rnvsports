'use strict';
const { query, getOne } = require('../config/database');

const Newsletter = {
  async subscribe(email) {
    const existing = await getOne('SELECT * FROM tbl_newsletter WHERE email = ?', [email]);
    if (existing) {
      if (existing.status === 0) {
        await query('UPDATE tbl_newsletter SET status = 1 WHERE email = ?', [email]);
        return { already: false };
      }
      return { already: true };
    }
    await query('INSERT INTO tbl_newsletter (email) VALUES (?)', [email]);
    return { already: false };
  },

  async findAll(page = 1, limit = 20) {
    const p = Math.max(1, parseInt(page, 10));
    const l = parseInt(limit, 10);
    const offset = (p - 1) * l;
    const [rows, [{ total }]] = await Promise.all([
      query('SELECT * FROM tbl_newsletter WHERE status = 1 ORDER BY created_at DESC LIMIT ? OFFSET ?', [l, offset]),
      query('SELECT COUNT(*) AS total FROM tbl_newsletter WHERE status = 1')
    ]);
    return { rows, total, page: p, limit: l };
  },

  async softDelete(id) {
    await query('UPDATE tbl_newsletter SET status = 0 WHERE newsletter_id = ?', [id]);
  }
};

module.exports = Newsletter;
