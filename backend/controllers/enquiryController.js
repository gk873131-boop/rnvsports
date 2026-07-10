'use strict';
const { Enquiry, ProductEnquiry } = require('../models/Enquiry');
const { asyncHandler, paginate }  = require('../middlewares/helpers');
const { ok, created, fail, paginated } = require('../utils/response');

exports.submitContactEnquiry = asyncHandler(async (req, res) => {
  const { name, email, message, subject } = req.body;
  if (!name || !email || !message) return fail(res, 'Name, email, and message are required');
  const id = await Enquiry.create({ name, email, message, subject: subject || 'Contact Us' });
  created(res, { id }, { message: 'Enquiry submitted successfully' });
});

exports.getContactEnquiries = asyncHandler(async (req, res) => {
  const { page, limit } = paginate(req.query.page, req.query.limit || 20);
  const result = await Enquiry.findAll(page, limit);
  paginated(res, result.rows, { page: result.page, limit: result.limit, total: result.total });
});

exports.deleteContactEnquiry = asyncHandler(async (req, res) => {
  await Enquiry.softDelete(req.params.id);
  ok(res, null, { message: 'Enquiry deleted' });
});

exports.submitProductEnquiry = asyncHandler(async (req, res) => {
  const { product_id, name, email, number, address, message } = req.body;
  if (!product_id || !name || !email) return fail(res, 'Product ID, name, and email are required');
  const id = await ProductEnquiry.create({ product_id, name, email, number, address, message });
  created(res, { id }, { message: 'Product enquiry submitted successfully' });
});

exports.getProductEnquiries = asyncHandler(async (req, res) => {
  const { page, limit } = paginate(req.query.page, req.query.limit || 20);
  const result = await ProductEnquiry.findAll(page, limit);
  paginated(res, result.rows, { page: result.page, limit: result.limit, total: result.total });
});

exports.deleteProductEnquiry = asyncHandler(async (req, res) => {
  await ProductEnquiry.softDelete(req.params.id);
  ok(res, null, { message: 'Enquiry deleted' });
});
