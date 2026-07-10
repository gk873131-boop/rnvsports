const { query } = require('../config/database');
const { asyncHandler } = require('../middleware/helpers');

exports.createEnquiry = asyncHandler(async (req, res) => {
  const { name, email, subject, message } = req.body;
  await query('INSERT INTO tbl_enquiry (name, email, subject, message, status) VALUES (?, ?, ?, ?, 1)', [name, email, subject, message]);
  res.status(201).json({ success: true, message: 'Enquiry submitted' });
});

exports.createProductEnquiry = asyncHandler(async (req, res) => {
  const { product_id, name, email, number, address, message } = req.body;
  await query('INSERT INTO tbl_product_enquiry (product_id, name, email, number, address, message, status) VALUES (?, ?, ?, ?, ?, ?, 1)', [product_id, name, email, number, address, message]);
  res.status(201).json({ success: true, message: 'Product enquiry submitted' });
});
