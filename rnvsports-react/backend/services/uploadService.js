'use strict';
/**
 * Upload service — thin wrapper around multer helpers.
 * Keeps upload business logic out of controllers.
 */
const path = require('path');
const fs   = require('fs');
const { UPLOAD_DIR, deleteUpload } = require('../middlewares/upload');

/**
 * Get the public URL path for a stored filename.
 */
function getPublicPath(filename) {
  if (!filename) return null;
  const base = (process.env.BASE_URL || '').replace(/\/$/, '');
  return `${base}/uploads/${path.basename(filename)}`;
}

/**
 * Delete old file when replacing it.
 */
function replaceFile(oldFilename, newFilename) {
  if (oldFilename && oldFilename !== newFilename) {
    deleteUpload(oldFilename);
  }
}

/**
 * Extract filename from multer req.file.
 */
function getUploadedFilename(req) {
  return req.file ? req.file.filename : null;
}

module.exports = { getPublicPath, replaceFile, getUploadedFilename, deleteUpload };
