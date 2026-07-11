'use strict';
const { Video }        = require('../models/Banner');
const { Pin, Gallery, Price, Color } = require('../models/Misc');
const { asyncHandler } = require('../middlewares/helpers');
const { ok, created, fail } = require('../utils/response');
const { getUploadedFilename } = require('../services/uploadService');

// ─── Settings (videos) ────────────────────────────────────────────────────────
exports.getSettings = asyncHandler(async (req, res) => {
  const videos = await Video.get();
  ok(res, { videos: videos || { video1: '', video2: '' } });
});

exports.updateVideos = asyncHandler(async (req, res) => {
  const { video1, video2 } = req.body;
  await Video.upsert(video1 || '', video2 || '');
  ok(res, { video1, video2 }, { message: 'Videos updated' });
});

// ─── Pincode Shipping Rates ───────────────────────────────────────────────────
exports.getAllPins = asyncHandler(async (req, res) => {
  ok(res, await Pin.findAll());
});

exports.checkPin = asyncHandler(async (req, res) => {
  const pin = await Pin.findByCode(req.params.code);
  if (!pin) return ok(res, { serviceable: false, shipping_charge: 0 });
  ok(res, { serviceable: true, shipping_charge: pin.shipping_charge });
});

exports.addPin = asyncHandler(async (req, res) => {
  const { pin_code, shipping_charge } = req.body;
  if (!pin_code) return fail(res, 'pin_code is required');
  const id = await Pin.create(pin_code, shipping_charge || 0);
  created(res, { pin_id: id, pin_code, shipping_charge });
});

exports.updatePin = asyncHandler(async (req, res) => {
  const { pin_code, shipping_charge } = req.body;
  if (!pin_code) return fail(res, 'pin_code is required');
  await Pin.update(req.params.id, pin_code, shipping_charge);
  ok(res, null, { message: 'Updated' });
});

exports.deletePin = asyncHandler(async (req, res) => {
  await Pin.softDelete(req.params.id);
  ok(res, null, { message: 'Deleted' });
});

// ─── Product Gallery ──────────────────────────────────────────────────────────
exports.getGallery = asyncHandler(async (req, res) => {
  ok(res, await Gallery.findByProduct(req.params.productId));
});

exports.addGalleryImage = asyncHandler(async (req, res) => {
  const image = getUploadedFilename(req);
  if (!image) return fail(res, 'Image is required');
  const id = await Gallery.add(req.params.productId, image);
  created(res, { gallery_id: id, image });
});

exports.removeGalleryImage = asyncHandler(async (req, res) => {
  await Gallery.remove(req.params.id);
  ok(res, null, { message: 'Image removed' });
});

// ─── Product Pricing (Size/Age Tiers) ────────────────────────────────────────
exports.getPrices = asyncHandler(async (req, res) => {
  ok(res, await Price.findByProduct(req.params.productId));
});

exports.addPrice = asyncHandler(async (req, res) => {
  const { age, regular_price, price, update_date } = req.body;
  const id = await Price.add(req.params.productId, age, regular_price, price, update_date);
  created(res, { price_id: id });
});

exports.removePrice = asyncHandler(async (req, res) => {
  await Price.remove(req.params.id);
  ok(res, null, { message: 'Price removed' });
});

// ─── Product Colors ───────────────────────────────────────────────────────────
exports.getColors = asyncHandler(async (req, res) => {
  ok(res, await Color.findByProduct(req.params.productId));
});

exports.addColor = asyncHandler(async (req, res) => {
  const { color_name, color } = req.body;
  if (!color_name) return fail(res, 'color_name is required');
  const id = await Color.add(req.params.productId, color_name, color || color_name);
  created(res, { color_id: id });
});

exports.removeColor = asyncHandler(async (req, res) => {
  await Color.remove(req.params.id);
  ok(res, null, { message: 'Color removed' });
});
