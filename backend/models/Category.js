'use strict';
const { query, getOne } = require('../config/database');

const Category = {
  async findAll() {
    return query('SELECT * FROM tbl_category WHERE status = 1 ORDER BY category_name ASC');
  },
  async findBySlug(slug) {
    return getOne('SELECT * FROM tbl_category WHERE category_slug = ? AND status = 1', [slug]);
  },
  async findById(id) {
    return getOne('SELECT * FROM tbl_category WHERE category_id = ? AND status = 1', [id]);
  },
  async create(name, slug) {
    const result = await query('INSERT INTO tbl_category (category_name, category_slug) VALUES (?, ?)', [name, slug]);
    return result.insertId;
  },
  async update(id, name, slug) {
    await query('UPDATE tbl_category SET category_name = ?, category_slug = ? WHERE category_id = ?', [name, slug, id]);
  },
  async softDelete(id) {
    await query('UPDATE tbl_category SET status = 0 WHERE category_id = ?', [id]);
  }
};

module.exports = Category;
