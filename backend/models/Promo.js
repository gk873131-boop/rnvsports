'use strict';
const { query, getOne } = require('../config/database');

const Promo = {
  async findByCode(code) {
    return getOne(
      'SELECT * FROM tbl_promo WHERE promo_code = ? AND status = 1',
      [code]
    );
  },
  async findAll() {
    return query('SELECT promo_id, promo_code, discount, expiry_date, created_at FROM tbl_promo WHERE status = 1 ORDER BY created_at DESC');
  },
  async create(data) {
    const result = await query(
      'INSERT INTO tbl_promo (promo_code, discount, expiry_date) VALUES (?, ?, ?)',
      [data.promo_code, data.discount, data.expiry_date]
    );
    return result.insertId;
  },
  async update(id, data) {
    await query(
      'UPDATE tbl_promo SET promo_code = ?, discount = ?, expiry_date = ? WHERE promo_id = ?',
      [data.promo_code, data.discount, data.expiry_date, id]
    );
  },
  async softDelete(id) {
    await query('UPDATE tbl_promo SET status = 0 WHERE promo_id = ?', [id]);
  }
};

const Offer = {
  async findAll() {
    return query('SELECT * FROM tbl_offer WHERE status = 1 ORDER BY offer_id DESC');
  },
  async findById(id) {
    return getOne('SELECT * FROM tbl_offer WHERE offer_id = ? AND status = 1', [id]);
  },
  async create(data) {
    const fields = Object.keys(data);
    const result = await query(
      `INSERT INTO tbl_offer (${fields.join(', ')}) VALUES (${fields.map(() => '?').join(', ')})`,
      fields.map(f => data[f])
    );
    return result.insertId;
  },
  async update(id, data) {
    const fields = Object.keys(data);
    const setClause = fields.map(f => `${f} = ?`).join(', ');
    await query(`UPDATE tbl_offer SET ${setClause} WHERE offer_id = ?`, [...fields.map(f => data[f]), id]);
  },
  async softDelete(id) {
    await query('UPDATE tbl_offer SET status = 0 WHERE offer_id = ?', [id]);
  }
};

module.exports = { Promo, Offer };
