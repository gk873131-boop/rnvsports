'use strict';
const _slugify = require('slugify');

/**
 * Generate a URL-safe slug from any string.
 * Falls back to timestamp if empty.
 */
function slugify(str, fallback = '') {
  if (!str) return fallback || String(Date.now());
  return _slugify(str, { lower: true, strict: true, trim: true });
}

/**
 * Append a random suffix to make a slug unique.
 */
function uniqueSlug(str) {
  return `${slugify(str)}-${Math.floor(Math.random() * 9000) + 1000}`;
}

module.exports = { slugify, uniqueSlug };
