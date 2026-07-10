const { query } = require('../config/database');
const { asyncHandler } = require('../middleware/helpers');

exports.search = asyncHandler(async (req, res) => {
  const q = req.query.q || '';
  if (!q) return res.json({ success: true, data: [] });
  const rows = await query(
    `SELECT product_id as id, product_name as name, product_slug as slug, featured_image, sale_price, regular_price
     FROM tbl_product WHERE product_name LIKE ? AND status = 1 LIMIT 15`,
    [`%${q}%`]
  );
  res.json({ success: true, data: rows });
});
