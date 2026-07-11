'use strict';
const { query, getOne } = require('../config/database');

const Blog = {
  async findAll(page = 1, limit = 9) {
    const p = Math.max(1, parseInt(page, 10));
    const l = Math.min(50, parseInt(limit, 10));
    const offset = (p - 1) * l;
    const [rows, [{ total }]] = await Promise.all([
      query('SELECT * FROM tbl_blog WHERE status = 1 ORDER BY blog_date DESC, created_at DESC LIMIT ? OFFSET ?', [l, offset]),
      query('SELECT COUNT(*) AS total FROM tbl_blog WHERE status = 1')
    ]);
    return { rows, total, page: p, limit: l };
  },

  async findBySlug(slug) {
    return getOne('SELECT * FROM tbl_blog WHERE slug = ? AND status = 1', [slug]);
  },

  async findRecent(limit = 4) {
    return query('SELECT blog_id, blog_name, slug, blog_image, blog_date, author_name FROM tbl_blog WHERE status = 1 ORDER BY created_at DESC LIMIT ?', [limit]);
  },

  async create(data) {
    const fields = Object.keys(data);
    const result = await query(
      `INSERT INTO tbl_blog (${fields.join(', ')}) VALUES (${fields.map(() => '?').join(', ')})`,
      fields.map(f => data[f])
    );
    return result.insertId;
  },

  async update(id, data) {
    const fields = Object.keys(data);
    const setClause = fields.map(f => `${f} = ?`).join(', ');
    await query(`UPDATE tbl_blog SET ${setClause} WHERE blog_id = ?`, [...fields.map(f => data[f]), id]);
  },

  async softDelete(id) {
    await query('UPDATE tbl_blog SET status = 0 WHERE blog_id = ?', [id]);
  }
};

module.exports = Blog;
