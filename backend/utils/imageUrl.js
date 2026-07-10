'use strict';

/** Build a full URL for an uploaded file */
function imageUrl(filename) {
  if (!filename) return null;
  if (filename.startsWith('http')) return filename;
  const base = (process.env.BASE_URL || 'http://localhost:5000').replace(/\/$/, '');
  return `${base}/uploads/${filename}`;
}

/** Strip the domain prefix and return just the filename */
function imageName(urlOrFilename) {
  if (!urlOrFilename) return null;
  return urlOrFilename.split('/').pop();
}

module.exports = { imageUrl, imageName };
