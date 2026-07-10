'use strict';
const Newsletter       = require('../models/Newsletter');
const { asyncHandler, paginate } = require('../middlewares/helpers');
const { ok, created, fail, paginated } = require('../utils/response');

exports.subscribe = asyncHandler(async (req, res) => {
  const { email } = req.body;
  if (!email || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
    return fail(res, 'A valid email address is required');
  }
  const { already } = await Newsletter.subscribe(email);
  if (already) return ok(res, null, { message: 'You are already subscribed' });
  created(res, { email }, { message: 'Subscribed successfully' });
});

exports.getAll = asyncHandler(async (req, res) => {
  const { page, limit } = paginate(req.query.page, req.query.limit || 20);
  const result = await Newsletter.findAll(page, limit);
  paginated(res, result.rows, { page: result.page, limit: result.limit, total: result.total });
});

exports.remove = asyncHandler(async (req, res) => {
  await Newsletter.softDelete(req.params.id);
  ok(res, null, { message: 'Subscriber removed' });
});
