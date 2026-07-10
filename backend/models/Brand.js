'use strict';
const { query, getOne } = require('../config/database');

const Brand = {
  async findAll() {
    return query('SELECT * FROM tbl_brand WHERE status = 1 ORDER BY title ASC');
  },
  async findBySlug(slug) {
    return getOne('SELECT * FROM tbl_brand WHERE slug = ? AND status = 1', [slug]);
  },
  async findById(id) {
    return getOne('SELECT * FROM tbl_brand WHERE id = ? AND status = 1', [id]);
  },
  async create(data) {
    const fields = Object.keys(data);
    const result = await query(
      `INSERT INTO tbl_brand (${fields.join(', ')}) VALUES (${fields.map(() => '?').join(', ')})`,
      fields.map(f => data[f])
    );
    return result.insertId;
  },
  async update(id, data) {
    const fields = Object.keys(data);
    const setClause = fields.map(f => `${f} = ?`).join(', ');
    await query(`UPDATE tbl_brand SET ${setClause} WHERE id = ?`, [...fields.map(f => data[f]), id]);
  },
  async softDelete(id) {
    await query('UPDATE tbl_brand SET status = 0 WHERE id = ?', [id]);
  }
};

module.exports = Brand;
