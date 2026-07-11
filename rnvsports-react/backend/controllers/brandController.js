'use strict';
const Brand            = require('../models/Brand');
const { asyncHandler } = require('../middlewares/helpers');
const { ok, created, fail, notFound } = require('../utils/response');
const { slugify, uniqueSlug } = require('../utils/slugify');
const { getUploadedFilename } = require('../services/uploadService');

exports.getAll = asyncHandler(async (req, res) => {
  const rows = await Brand.findAll();
  ok(res, rows);
});

exports.getBySlug = asyncHandler(async (req, res) => {
  const brand = await Brand.findBySlug(req.params.slug);
  if (!brand) return notFound(res, 'Brand not found');
  ok(res, brand);
});

exports.create = asyncHandler(async (req, res) => {
  const { title, description, seo_title, seo_description } = req.body;
  if (!title) return fail(res, 'Brand title is required');
  const slug = slugify(title) || uniqueSlug(title);
  const image = getUploadedFilename(req);
  const id = await Brand.create({ title, slug, image, description, seo_title, seo_description });
  const brand = await Brand.findById(id);
  created(res, brand);
});

exports.update = asyncHandler(async (req, res) => {
  const existing = await Brand.findById(req.params.id);
  if (!existing) return notFound(res, 'Brand not found');
  const data = { ...req.body };
  const image = getUploadedFilename(req);
  if (image) data.image = image;
  if (data.title && !data.slug) data.slug = slugify(data.title) || uniqueSlug(data.title);
  await Brand.update(req.params.id, data);
  const brand = await Brand.findById(req.params.id);
  ok(res, brand);
});

exports.remove = asyncHandler(async (req, res) => {
  await Brand.softDelete(req.params.id);
  ok(res, null, { message: 'Brand deleted' });
});
