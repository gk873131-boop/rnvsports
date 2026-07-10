const { query, getOne } = require('../config/database');
const { asyncHandler } = require('../middleware/helpers');

exports.validate = asyncHandler(async (req, res) => {
  const { code, amount } = req.body;
  const promo = await getOne('SELECT * FROM tbl_promo WHERE promo_code = ? AND status = 1', [code]);
  if (!promo) return res.status(404).json({ success: false, message: 'Invalid promo code' });
  if (promo.expiry_date && new Date(promo.expiry_date) < new Date()) {
    return res.status(400).json({ success: false, message: 'Promo code expired' });
  }
  const discountAmount = (amount * promo.discount) / 100;
  res.json({ success: true, data: { promo, discount: discountAmount, finalAmount: amount - discountAmount } });
});

exports.getAll = asyncHandler(async (req, res) => {
  const rows = await query('SELECT * FROM tbl_promo WHERE status = 1');
  res.json({ success: true, data: rows });
});
