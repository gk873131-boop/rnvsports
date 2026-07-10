'use strict';
const jwt = require('jsonwebtoken');

const SECRET = () => process.env.JWT_SECRET || 'dev_secret_change_in_production';
const EXPIRES_IN = () => process.env.JWT_EXPIRES_IN || '7d';

/** Sign a token for any user object with at least { id, role } */
function sign(payload) {
  return jwt.sign(payload, SECRET(), { expiresIn: EXPIRES_IN() });
}

/** Verify and decode a token; throws if invalid */
function verify(token) {
  return jwt.verify(token, SECRET());
}

/** Extract Bearer token from Authorization header */
function extractBearer(req) {
  const header = req.headers.authorization || '';
  if (!header.startsWith('Bearer ')) return null;
  return header.slice(7).trim();
}

module.exports = { sign, verify, extractBearer };
