'use strict';
const { Banner, Video } = require('../models/Banner');
const { asyncHandler }  = require('../middlewares/helpers');
const { ok, created }   = require('../utils/response');
const { getUploadedFilename } = require('../services/uploadService');

exports.getHomeBanners = asyncHandler(async (req, res) => {
  ok(res, await Banner.getHome());
});

exports.addHomeBanner = asyncHandler(async (req, res) => {
  const image = getUploadedFilename(req);
  const name  = req.body.name || '';
  const id    = await Banner.addHome(name, image);
  created(res, { id, name, image });
});

exports.deleteHomeBanner = asyncHandler(async (req, res) => {
  await Banner.deleteHome(req.params.id);
  ok(res, null, { message: 'Banner deleted' });
});

exports.getLeftBanners = asyncHandler(async (req, res) => {
  ok(res, await Banner.getLeft());
});

exports.addLeftBanner = asyncHandler(async (req, res) => {
  const image = getUploadedFilename(req);
  const id = await Banner.addLeft(image);
  created(res, { id, image });
});

exports.deleteLeftBanner = asyncHandler(async (req, res) => {
  await Banner.deleteLeft(req.params.id);
  ok(res, null, { message: 'Banner deleted' });
});

exports.getRightBanners = asyncHandler(async (req, res) => {
  ok(res, await Banner.getRight());
});

exports.addRightBanner = asyncHandler(async (req, res) => {
  const image = getUploadedFilename(req);
  const id = await Banner.addRight(image);
  created(res, { id, image });
});

exports.deleteRightBanner = asyncHandler(async (req, res) => {
  await Banner.deleteRight(req.params.id);
  ok(res, null, { message: 'Banner deleted' });
});

exports.getExtraBanners = asyncHandler(async (req, res) => {
  ok(res, await Banner.getExtra(req.query.type || null));
});

exports.addExtraBanner = asyncHandler(async (req, res) => {
  const image = getUploadedFilename(req);
  const id = await Banner.addExtra(image, req.body.type || 1);
  created(res, { id, image, type: req.body.type || 1 });
});

exports.deleteExtraBanner = asyncHandler(async (req, res) => {
  await Banner.deleteExtra(req.params.id);
  ok(res, null, { message: 'Banner deleted' });
});

exports.getVideos = asyncHandler(async (req, res) => {
  const data = await Video.get();
  ok(res, data || { video1: '', video2: '' });
});

exports.updateVideos = asyncHandler(async (req, res) => {
  const { video1, video2 } = req.body;
  await Video.upsert(video1 || '', video2 || '');
  ok(res, { video1, video2 }, { message: 'Videos updated' });
});
