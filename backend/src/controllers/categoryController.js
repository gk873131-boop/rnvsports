const { query, getOne } = require('../config/database');
const { asyncHandler } = require('../middleware/helpers');
const slugify = require('slugify');

exports.getAll = asyncHandler(async (req, res) => {
  const rows = await query('SELECT * FROM tbl_category WHERE status = 1 ORDER BY category_number ASC, category_name ASC');
  res.json({ success: true, data: rows });
});

exports.getBySlug = asyncHandler(async (req, res) => {
  const row = await getOne('SELECT * FROM tbl_category WHERE category_slug = ? AND status = 1', [req.params.slug]);
  if (!row) return res.status(404).json({ success: false, message: 'Category not found' });
  res.json({ success: true, data: row });
});

exports.create = asyncHandler(async (req, res) => {
  const { category_name, category_slug } = req.body;
  const slug = category_slug || slugify(category_name, { lower: true });
  const result = await query('INSERT INTO tbl_category (category_name, category_slug) VALUES (?, ?)', [category_name, slug]);
  res.status(201).json({ success: true, data: { category_id: result.insertId } });
});
