const { query, getOne } = require('../config/database');
const { asyncHandler } = require('../middleware/helpers');

exports.get = asyncHandler(async (req, res) => {
  const row = await getOne('SELECT * FROM tbl_video LIMIT 1');
  res.json({ success: true, data: row || { video1: '', video2: '' } });
});

exports.update = asyncHandler(async (req, res) => {
  const { video1, video2 } = req.body;
  const existing = await getOne('SELECT * FROM tbl_video LIMIT 1');
  if (existing) {
    await query('UPDATE tbl_video SET video1 = ?, video2 = ?', [video1, video2]);
  } else {
    await query('INSERT INTO tbl_video (video1, video2) VALUES (?, ?)', [video1, video2]);
  }
  res.json({ success: true, message: 'Videos updated' });
});
