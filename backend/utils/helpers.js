'use strict';
const crypto = require('crypto');

/** Generate a unique order number like ORD20250710123456789 */
function generateOrderNo() {
  return 'ORD' + Date.now() + crypto.randomInt(100, 999);
}

/** Generate a random cart cookie string */
function generateCartCookie() {
  return crypto.randomBytes(16).toString('hex');
}

/** Return today's date as YYYY-MM-DD */
function today() {
  return new Date().toISOString().slice(0, 10);
}

/** Calculate discount percentage */
function discountPercent(regular, sale) {
  if (!regular || !sale || regular <= 0) return 0;
  return Math.round(((regular - sale) / regular) * 100);
}

module.exports = { generateOrderNo, generateCartCookie, today, discountPercent };
