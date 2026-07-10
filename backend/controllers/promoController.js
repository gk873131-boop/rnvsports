'use strict';
const { Promo, Offer } = require('../models/Promo');
const { asyncHandler } = require('../middlewares/helpers');
const { ok, created, fail, notFound } = require('../utils/response');

// ─── Promo Codes ─────────────────────────────────────────────────────────────

exports.getAllPromos = asyncHandler(async (req, res) => {
  ok(res, await Promo.findAll());
});

exports.validatePromo = asyncHandler(async (req, res) => {
  const { code, amount } = req.body;
  if (!code) return fail(res, 'Promo code is required');

  const promo = await Promo.findByCode(code);
  if (!promo) return fail(res, 'Invalid promo code', 404);

  if (promo.expiry_date && new Date(promo.expiry_date) < new Date()) {
    return fail(res, 'Promo code has expired');
  }

  const cartAmount      = parseFloat(amount || 0);
  const discountAmount  = Math.round((cartAmount * promo.discount) / 100 * 100) / 100;
  const finalAmount     = Math.max(0, cartAmount - discountAmount);

  ok(res, {
    promo_id:       promo.promo_id,
    promo_code:     promo.promo_code,
    discount_pct:   promo.discount,
    discount_amount: discountAmount,
    final_amount:   finalAmount
  });
});

exports.createPromo = asyncHandler(async (req, res) => {
  const { promo_code, discount, expiry_date } = req.body;
  if (!promo_code || !discount) return fail(res, 'Promo code and discount are required');
  const id = await Promo.create({ promo_code, discount, expiry_date });
  created(res, { promo_id: id, promo_code, discount, expiry_date });
});

exports.updatePromo = asyncHandler(async (req, res) => {
  await Promo.update(req.params.id, req.body);
  ok(res, null, { message: 'Promo updated' });
});

exports.deletePromo = asyncHandler(async (req, res) => {
  await Promo.softDelete(req.params.id);
  ok(res, null, { message: 'Promo deleted' });
});

// ─── Tiered Offers ────────────────────────────────────────────────────────────

exports.getAllOffers = asyncHandler(async (req, res) => {
  ok(res, await Offer.findAll());
});

exports.getOffer = asyncHandler(async (req, res) => {
  const offer = await Offer.findById(req.params.id);
  if (!offer) return notFound(res, 'Offer not found');
  ok(res, offer);
});

exports.createOffer = asyncHandler(async (req, res) => {
  const id = await Offer.create(req.body);
  created(res, { offer_id: id });
});

exports.updateOffer = asyncHandler(async (req, res) => {
  await Offer.update(req.params.id, req.body);
  ok(res, null, { message: 'Offer updated' });
});

exports.deleteOffer = asyncHandler(async (req, res) => {
  await Offer.softDelete(req.params.id);
  ok(res, null, { message: 'Offer deleted' });
});
