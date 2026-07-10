'use strict';
const Product          = require('../models/Product');
const { asyncHandler } = require('../middlewares/helpers');
const { ok }           = require('../utils/response');

exports.search = asyncHandler(async (req, res) => {
  const q = (req.query.q || req.query.term || '').trim();
  if (!q) return ok(res, []);
  const rows = await Product.search(q, 15);
  ok(res, rows);
});

exports.autocomplete = asyncHandler(async (req, res) => {
  const q = (req.query.term || req.query.q || '').trim();
  if (!q || q.length < 2) return res.json([]);
  const rows = await Product.search(q, 10);
  // jQuery UI autocomplete format
  res.json(rows.map(r => ({ id: r.id, value: r.name, slug: r.slug, image: r.featured_image })));
});
