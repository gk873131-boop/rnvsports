const { query, getOne } = require('../config/database');
const { asyncHandler, paginate, buildWhere } = require('../middleware/helpers');
const slugify = require('slugify');

const productImageBase = (row) => ({
  ...row,
  featured_image: row.featured_image ? `${process.env.BASE_URL || ''}/uploads/${row.featured_image}` : null,
  size_chart: row.size_chart ? `${process.env.BASE_URL || ''}/uploads/${row.size_chart}` : null
});

exports.getAll = asyncHandler(async (req, res) => {
  const { page, limit, offset } = paginate(req.query.page, req.query.limit);
  const { category_id, brand_id, min_price, max_price, sort, search } = req.query;

  let where = 'WHERE p.status = 1';
  const values = [];

  if (category_id) { where += ' AND p.category_id = ?'; values.push(category_id); }
  if (brand_id) { where += ' AND p.brand_id = ?'; values.push(brand_id); }
  if (min_price) { where += ' AND p.sale_price >= ?'; values.push(min_price); }
  if (max_price) { where += ' AND p.sale_price <= ?'; values.push(max_price); }
  if (search) { where += ' AND (p.product_name LIKE ? OR p.product_code LIKE ?)'; values.push(`%${search}%`, `%${search}%`); }

  let orderBy = 'ORDER BY p.created_at DESC';
  if (sort === 'price_asc') orderBy = 'ORDER BY p.sale_price ASC';
  if (sort === 'price_desc') orderBy = 'ORDER BY p.sale_price DESC';
  if (sort === 'name_asc') orderBy = 'ORDER BY p.product_name ASC';
  if (sort === 'name_desc') orderBy = 'ORDER BY p.product_name DESC';

  const sql = `
    SELECT p.*, c.category_name, c.category_slug, b.title as brand_title, b.slug as brand_slug
    FROM tbl_product p
    LEFT JOIN tbl_category c ON p.category_id = c.category_id
    LEFT JOIN tbl_brand b ON p.brand_id = b.id
    ${where} ${orderBy} LIMIT ? OFFSET ?`;

  const rows = await query(sql, [...values, limit, offset]);
  const countRows = await query(`SELECT COUNT(*) as total FROM tbl_product p ${where}`, values);
  const total = countRows[0].total;

  res.json({
    success: true,
    data: rows.map(r => ({
      ...r,
      category: r.category_name ? { id: r.category_id, name: r.category_name, slug: r.category_slug } : null,
      brand: r.brand_title ? { id: r.brand_id, title: r.brand_title, slug: r.brand_slug } : null
    })),
    pagination: { page, limit, total, totalPages: Math.ceil(total / limit) }
  });
});

exports.getBySlug = asyncHandler(async (req, res) => {
  const product = await getOne(
    `SELECT p.*, c.category_name, c.category_slug, b.title as brand_title, b.slug as brand_slug
     FROM tbl_product p
     LEFT JOIN tbl_category c ON p.category_id = c.category_id
     LEFT JOIN tbl_brand b ON p.brand_id = b.id
     WHERE p.product_slug = ? AND p.status = 1`,
    [req.params.slug]
  );
  if (!product) return res.status(404).json({ success: false, message: 'Product not found' });

  const gallery = await query('SELECT * FROM tbl_product_gallery WHERE product_id = ? AND status = 1', [product.product_id]);
  const sizes = await query('SELECT * FROM tbl_price WHERE product_id = ? AND price_status = 1', [product.product_id]);
  const colors = await query('SELECT * FROM tbl_color WHERE product_id = ? AND status = 1', [product.product_id]);

  res.json({
    success: true,
    data: {
      ...product,
      category: product.category_name ? { id: product.category_id, name: product.category_name, slug: product.category_slug } : null,
      brand: product.brand_title ? { id: product.brand_id, title: product.brand_title, slug: product.brand_slug } : null,
      gallery,
      sizes,
      colors
    }
  });
});

exports.getFeatured = asyncHandler(async (req, res) => {
  const rows = await query('SELECT * FROM tbl_product WHERE featured_product = 1 AND status = 1 LIMIT 10');
  res.json({ success: true, data: rows });
});

exports.getHotSelling = asyncHandler(async (req, res) => {
  const rows = await query('SELECT * FROM tbl_product WHERE special = 1 AND status = 1 LIMIT 10');
  res.json({ success: true, data: rows });
});

exports.getNewArrivals = asyncHandler(async (req, res) => {
  const rows = await query('SELECT * FROM tbl_product WHERE new_arraival = 1 AND status = 1 LIMIT 10');
  res.json({ success: true, data: rows });
});

exports.getByCategory = asyncHandler(async (req, res) => {
  const { page, limit, offset } = paginate(req.query.page, req.query.limit);
  const rows = await query(
    `SELECT p.* FROM tbl_product p
     INNER JOIN tbl_category c ON p.category_id = c.category_id
     WHERE c.category_slug = ? AND p.status = 1
     ORDER BY p.product_name ASC LIMIT ? OFFSET ?`,
    [req.params.slug, limit, offset]
  );
  res.json({ success: true, data: rows, pagination: { page, limit } });
});

exports.getByBrand = asyncHandler(async (req, res) => {
  const rows = await query(
    `SELECT p.* FROM tbl_product p
     INNER JOIN tbl_brand b ON p.brand_id = b.id
     WHERE b.slug = ? AND p.status = 1`,
    [req.params.slug]
  );
  res.json({ success: true, data: rows });
});

exports.search = asyncHandler(async (req, res) => {
  const q = req.query.q || '';
  const rows = await query(
    `SELECT product_id as id, product_name as name, product_slug as slug, featured_image, sale_price, regular_price
     FROM tbl_product WHERE product_name LIKE ? AND status = 1 LIMIT 15`,
    [`%${q}%`]
  );
  res.json({ success: true, data: rows });
});

exports.getRelated = asyncHandler(async (req, res) => {
  const product = await getOne('SELECT category_id FROM tbl_product WHERE product_id = ?', [req.params.id]);
  if (!product) return res.status(404).json({ success: false, message: 'Not found' });
  const rows = await query(
    'SELECT * FROM tbl_product WHERE category_id = ? AND product_id != ? AND status = 1 LIMIT 4',
    [product.category_id, req.params.id]
  );
  res.json({ success: true, data: rows });
});
