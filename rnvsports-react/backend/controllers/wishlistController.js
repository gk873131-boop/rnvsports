'use strict';
const Wishlist         = require('../models/Wishlist');
const { asyncHandler } = require('../middlewares/helpers');
const { ok, created, fail } = require('../utils/response');

exports.getWishlist = asyncHandler(async (req, res) => {
  const rows = await Wishlist.findByUser(req.user.id);
  ok(res, rows);
});

exports.addItem = asyncHandler(async (req, res) => {
  const { product_id, price } = req.body;
  if (!product_id) return fail(res, 'product_id is required');

  const existing = await Wishlist.findItem(req.user.id, product_id);
  if (existing) return fail(res, 'Product already in wishlist', 409);

  const id = await Wishlist.add(req.user.id, product_id, price);
  created(res, { wishlist_id: id }, { message: 'Added to wishlist' });
});

exports.removeItem = asyncHandler(async (req, res) => {
  await Wishlist.remove(req.params.id, req.user.id);
  ok(res, null, { message: 'Removed from wishlist' });
});
