const { query } = require('../config/database');
const { asyncHandler } = require('../middleware/helpers');

exports.getAll = asyncHandler(async (req, res) => {
  const rows = await query('SELECT * FROM tbl_adm_review WHERE status = 1 ORDER BY review_id DESC');
  res.json({ success: true, data: rows });
});
