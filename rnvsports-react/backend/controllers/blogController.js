'use strict';
const Blog             = require('../models/Blog');
const { asyncHandler, paginate } = require('../middlewares/helpers');
const { ok, created, fail, notFound, paginated } = require('../utils/response');
const { slugify, uniqueSlug } = require('../utils/slugify');
const { getUploadedFilename } = require('../services/uploadService');

exports.getAll = asyncHandler(async (req, res) => {
  const { page, limit } = paginate(req.query.page, req.query.limit || 9);
  const result = await Blog.findAll(page, limit);
  paginated(res, result.rows, {
    page: result.page, limit: result.limit, total: result.total,
    totalPages: Math.ceil(result.total / result.limit)
  });
});

exports.getBySlug = asyncHandler(async (req, res) => {
  const blog = await Blog.findBySlug(req.params.slug);
  if (!blog) return notFound(res, 'Blog post not found');
  const recent = await Blog.findRecent(4);
  ok(res, { ...blog, recentPosts: recent });
});

exports.getRecent = asyncHandler(async (req, res) => {
  const limit = Math.min(10, parseInt(req.query.limit || '4', 10));
  const rows = await Blog.findRecent(limit);
  ok(res, rows);
});

exports.create = asyncHandler(async (req, res) => {
  const data = { ...req.body };
  if (!data.blog_name) return fail(res, 'Blog title is required');
  data.slug       = data.slug || slugify(data.blog_name) || uniqueSlug(data.blog_name);
  data.blog_image = getUploadedFilename(req) || data.blog_image || null;
  const id   = await Blog.create(data);
  const blog = await Blog.findBySlug(data.slug);
  created(res, blog);
});

exports.update = asyncHandler(async (req, res) => {
  const { id } = req.params;
  const data = { ...req.body };
  const image = getUploadedFilename(req);
  if (image) data.blog_image = image;
  await Blog.update(id, data);
  const updated = await require('../config/database').getOne('SELECT * FROM tbl_blog WHERE blog_id = ?', [id]);
  ok(res, updated);
});

exports.remove = asyncHandler(async (req, res) => {
  await Blog.softDelete(req.params.id);
  ok(res, null, { message: 'Blog post deleted' });
});
