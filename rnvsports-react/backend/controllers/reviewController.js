'use strict';
const { Review }       = require('../models/Misc');
const { asyncHandler } = require('../middlewares/helpers');
const { ok, created }  = require('../utils/response');
const { getUploadedFilename } = require('../services/uploadService');

exports.getAll = asyncHandler(async (req, res) => {
  ok(res, await Review.findAll());
});

exports.create = asyncHandler(async (req, res) => {
  const data = { ...req.body };
  const image = getUploadedFilename(req);
  if (image) data.image = image;
  const id = await Review.create(data);
  created(res, { review_id: id });
});

exports.update = asyncHandler(async (req, res) => {
  const data = { ...req.body };
  const image = getUploadedFilename(req);
  if (image) data.image = image;
  await Review.update(req.params.id, data);
  ok(res, null, { message: 'Review updated' });
});

exports.remove = asyncHandler(async (req, res) => {
  await Review.softDelete(req.params.id);
  ok(res, null, { message: 'Review deleted' });
});
