const { query } = require('../config/database');
const { asyncHandler } = require('../middleware/helpers');

exports.getHomeBanners = asyncHandler(async (req, res) => {
  const rows = await query('SELECT * FROM tbl_home_banner WHERE status = 1');
  res.json({ success: true, data: rows });
});

exports.getLeftBanners = asyncHandler(async (req, res) => {
  const rows = await query('SELECT * FROM tbl_left_banner WHERE status = 1');
  res.json({ success: true, data: rows });
});

exports.getRightBanners = asyncHandler(async (req, res) => {
  const rows = await query('SELECT * FROM tbl_right_banner WHERE status = 1');
  res.json({ success: true, data: rows });
});

exports.getVideos = asyncHandler(async (req, res) => {
  const rows = await query('SELECT * FROM tbl_video LIMIT 1');
  res.json({ success: true, data: rows[0] || { video1: '', video2: '' } });
});
