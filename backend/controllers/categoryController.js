'use strict';
const Category         = require('../models/Category');
const { asyncHandler } = require('../middlewares/helpers');
const { ok, created, fail, notFound } = require('../utils/response');
const { slugify, uniqueSlug } = require('../utils/slugify');

exports.getAll = asyncHandler(async (req, res) => {
  const rows = await Category.findAll();
  ok(res, rows);
});

exports.getBySlug = asyncHandler(async (req, res) => {
  const cat = await Category.findBySlug(req.params.slug);
  if (!cat) return notFound(res, 'Category not found');
  ok(res, cat);
});

exports.create = asyncHandler(async (req, res) => {
  const { category_name } = req.body;
  if (!category_name) return fail(res, 'Category name is required');
  const slug = slugify(category_name) || uniqueSlug(category_name);
  const id = await Category.create(category_name, slug);
  const cat = await Category.findById(id);
  created(res, cat);
});

exports.update = asyncHandler(async (req, res) => {
  const { category_name } = req.body;
  if (!category_name) return fail(res, 'Category name is required');
  const slug = slugify(category_name) || uniqueSlug(category_name);
  await Category.update(req.params.id, category_name, slug);
  const cat = await Category.findById(req.params.id);
  ok(res, cat);
});

exports.remove = asyncHandler(async (req, res) => {
  await Category.softDelete(req.params.id);
  ok(res, null, { message: 'Category deleted' });
});
