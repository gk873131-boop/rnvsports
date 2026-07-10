'use strict';
const Cart             = require('../models/Cart');
const { asyncHandler } = require('../middlewares/helpers');
const { ok, created, fail } = require('../utils/response');
const { generateCartCookie } = require('../utils/helpers');

function resolveCookieId(req, res) {
  let cookieId = req.headers['x-cart-cookie'] || req.cookies?.cart_id;
  if (!cookieId) {
    cookieId = generateCartCookie();
    res.setHeader('X-Cart-Cookie', cookieId);
  }
  return cookieId;
}

exports.getCart = asyncHandler(async (req, res) => {
  const cookieId = resolveCookieId(req, res);
  const userId   = req.user?.id;
  const rows     = userId
    ? await Cart.getByUser(userId)
    : await Cart.getByCookie(cookieId);

  res.setHeader('X-Cart-Cookie', cookieId);
  ok(res, rows, { cookieId });
});

exports.addItem = asyncHandler(async (req, res) => {
  const { product_id, quantity = 1, cart_price, size_id, size, color_id, product_color } = req.body;
  if (!product_id) return fail(res, 'product_id is required');

  const cookieId = resolveCookieId(req, res);
  const userId   = req.user?.id;
  const qty      = Math.max(1, parseInt(quantity, 10));

  const existing = await Cart.findExisting(product_id, size_id, userId, cookieId);

  if (existing) {
    await Cart.incrementQty(existing.cart_id, qty);
  } else {
    await Cart.add({ userId, cookieId, product_id, product_qty: qty, cart_price, size_id, size, color_id, product_color });
  }

  res.setHeader('X-Cart-Cookie', cookieId);
  ok(res, null, { message: 'Item added to cart' });
});

exports.updateItem = asyncHandler(async (req, res) => {
  const qty = parseInt(req.body.quantity, 10);
  if (isNaN(qty) || qty < 0) return fail(res, 'Invalid quantity');
  if (qty === 0) {
    await Cart.remove(req.params.id);
  } else {
    await Cart.updateQty(req.params.id, qty);
  }
  ok(res, null, { message: 'Cart updated' });
});

exports.removeItem = asyncHandler(async (req, res) => {
  await Cart.remove(req.params.id);
  ok(res, null, { message: 'Item removed' });
});

exports.clearCart = asyncHandler(async (req, res) => {
  const cookieId = resolveCookieId(req, res);
  const userId   = req.user?.id;
  if (userId) {
    await Cart.clearByUser(userId);
  } else {
    await Cart.clearByCookie(cookieId);
  }
  ok(res, null, { message: 'Cart cleared' });
});

exports.getCount = asyncHandler(async (req, res) => {
  const cookieId = resolveCookieId(req, res);
  const userId   = req.user?.id;
  const count    = userId
    ? await Cart.countByUser(userId)
    : await Cart.countByCookie(cookieId);
  ok(res, { count });
});
