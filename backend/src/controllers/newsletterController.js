const { query } = require('../config/database');
const { asyncHandler } = require('../middleware/helpers');

exports.subscribe = asyncHandler(async (req, res) => {
  const { email } = req.body;
  if (!email) return res.status(400).json({ success: false, message: 'Email required' });
  try {
    await query('INSERT INTO tbl_newsletter (email, status) VALUES (?, 1)', [email]);
    res.status(201).json({ success: true, message: 'Subscribed successfully' });
  } catch (err) {
    if (err.code === 'ER_DUP_ENTRY') return res.json({ success: true, message: 'Already subscribed' });
    throw err;
  }
});
