const { query } = require('../config/database');
const { asyncHandler } = require('../middleware/helpers');

exports.getAll = asyncHandler(async (req, res) => {
  const rows = await query('SELECT * FROM tbl_brand WHERE status = 1 ORDER BY title ASC');
  res.json({ success: true, data: rows });
});

exports.getBySlug = asyncHandler(async (req, res) => {
  const rows = await query('SELECT * FROM tbl_brand WHERE slug = ? AND status = 1', [req.params.slug]);
  if (!rows.length) return res.status(404).json({ success: false, message: 'Brand not found' });
  res.json({ success: true, data: rows[0] });
});
