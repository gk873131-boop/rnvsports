'use strict';
const { query, getOne } = require('../config/database');

const Product = {
  async findAll({ category_id, brand_id, min_price, max_price, sort, search, special, featured_product, new_arraival, page = 1, limit = 12 } = {}) {
    const p = Math.max(1, parseInt(page, 10));
    const l = Math.min(100, parseInt(limit, 10));
    const offset = (p - 1) * l;

    let where = 'WHERE p.status = 1';
    const vals = [];

    if (category_id)  { where += ' AND p.category_id = ?';                      vals.push(category_id); }
    if (brand_id)     { where += ' AND p.brand_id = ?';                          vals.push(brand_id); }
    if (min_price)    { where += ' AND p.sale_price >= ?';                       vals.push(min_price); }
    if (max_price)    { where += ' AND p.sale_price <= ?';                       vals.push(max_price); }
    if (search)       { where += ' AND (p.product_name LIKE ? OR p.product_code LIKE ?)'; vals.push(`%${search}%`, `%${search}%`); }
    if (special !== undefined)          { where += ' AND p.special = ?';             vals.push(special); }
    if (featured_product !== undefined) { where += ' AND p.featured_product = ?';    vals.push(featured_product); }
    if (new_arraival !== undefined)     { where += ' AND p.new_arraival = ?';         vals.push(new_arraival); }

    const orderMap = {
      price_asc:  'p.sale_price ASC',
      price_desc: 'p.sale_price DESC',
      name_asc:   'p.product_name ASC',
      name_desc:  'p.product_name DESC',
      newest:     'p.created_at DESC'
    };
    const orderBy = orderMap[sort] || 'p.created_at DESC';

    const sql = `
      SELECT p.*,
             c.category_name, c.category_slug,
             b.title AS brand_title, b.slug AS brand_slug
      FROM tbl_product p
      LEFT JOIN tbl_category c ON p.category_id = c.category_id
      LEFT JOIN tbl_brand    b ON p.brand_id    = b.id
      ${where}
      ORDER BY ${orderBy}
      LIMIT ? OFFSET ?`;

    const [rows, countRows] = await Promise.all([
      query(sql, [...vals, l, offset]),
      query(`SELECT COUNT(*) AS total FROM tbl_product p ${where}`, vals)
    ]);

    return { rows, total: countRows[0].total, page: p, limit: l };
  },

  async findBySlug(slug) {
    const product = await getOne(
      `SELECT p.*, c.category_name, c.category_slug, b.title AS brand_title, b.slug AS brand_slug
       FROM tbl_product p
       LEFT JOIN tbl_category c ON p.category_id = c.category_id
       LEFT JOIN tbl_brand    b ON p.brand_id    = b.id
       WHERE p.product_slug = ? AND p.status = 1`,
      [slug]
    );
    if (!product) return null;

    const [gallery, sizes, colors] = await Promise.all([
      query('SELECT * FROM tbl_product_gallery WHERE product_id = ? AND status = 1', [product.product_id]),
      query('SELECT * FROM tbl_price WHERE product_id = ? AND price_status = 1', [product.product_id]),
      query('SELECT * FROM tbl_color WHERE product_id = ? AND status = 1', [product.product_id])
    ]);

    return { ...product, gallery, sizes, colors };
  },

  async findById(id) {
    return getOne('SELECT * FROM tbl_product WHERE product_id = ? AND status = 1', [id]);
  },

  async findByCategory(slug, page = 1, limit = 12) {
    const p = Math.max(1, parseInt(page, 10));
    const l = Math.min(100, parseInt(limit, 10));
    const offset = (p - 1) * l;

    const [rows, countRows] = await Promise.all([
      query(
        `SELECT p.* FROM tbl_product p
         INNER JOIN tbl_category c ON p.category_id = c.category_id
         WHERE c.category_slug = ? AND p.status = 1
         ORDER BY p.product_name ASC LIMIT ? OFFSET ?`,
        [slug, l, offset]
      ),
      query(
        `SELECT COUNT(*) AS total FROM tbl_product p
         INNER JOIN tbl_category c ON p.category_id = c.category_id
         WHERE c.category_slug = ? AND p.status = 1`,
        [slug]
      )
    ]);
    return { rows, total: countRows[0].total, page: p, limit: l };
  },

  async findByBrand(slug, page = 1, limit = 12) {
    const p = Math.max(1, parseInt(page, 10));
    const l = Math.min(100, parseInt(limit, 10));
    const offset = (p - 1) * l;

    const [rows, countRows] = await Promise.all([
      query(
        `SELECT p.* FROM tbl_product p
         INNER JOIN tbl_brand b ON p.brand_id = b.id
         WHERE b.slug = ? AND p.status = 1
         ORDER BY p.product_name ASC LIMIT ? OFFSET ?`,
        [slug, l, offset]
      ),
      query(
        `SELECT COUNT(*) AS total FROM tbl_product p
         INNER JOIN tbl_brand b ON p.brand_id = b.id
         WHERE b.slug = ? AND p.status = 1`,
        [slug]
      )
    ]);
    return { rows, total: countRows[0].total, page: p, limit: l };
  },

  async findRelated(productId, categoryId, limit = 4) {
    return query(
      'SELECT * FROM tbl_product WHERE category_id = ? AND product_id != ? AND status = 1 LIMIT ?',
      [categoryId, productId, limit]
    );
  },

  async search(term, limit = 15) {
    return query(
      `SELECT product_id AS id, product_name AS name, product_slug AS slug,
              featured_image, sale_price, regular_price
       FROM tbl_product WHERE product_name LIKE ? AND status = 1 LIMIT ?`,
      [`%${term}%`, limit]
    );
  },

  async create(data) {
    const fields = Object.keys(data);
    const placeholders = fields.map(() => '?').join(', ');
    const result = await query(
      `INSERT INTO tbl_product (${fields.join(', ')}) VALUES (${placeholders})`,
      fields.map(f => data[f])
    );
    return result.insertId;
  },

  async update(id, data) {
    const fields = Object.keys(data);
    const setClause = fields.map(f => `${f} = ?`).join(', ');
    await query(
      `UPDATE tbl_product SET ${setClause} WHERE product_id = ?`,
      [...fields.map(f => data[f]), id]
    );
  },

  async softDelete(id) {
    await query('UPDATE tbl_product SET status = 0 WHERE product_id = ?', [id]);
  },

  async priceRange() {
    return getOne('SELECT MIN(sale_price) AS min_price, MAX(sale_price) AS max_price FROM tbl_product WHERE status = 1');
  }
};

module.exports = Product;
