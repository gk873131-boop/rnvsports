'use strict';
const { verify, extractBearer } = require('../config/jwt');

/** Require a valid JWT — attaches req.user = { id, role, ... } */
exports.requireAuth = (req, res, next) => {
  const token = extractBearer(req);
  if (!token) return res.status(401).json({ success: false, message: 'Authentication required' });
  try {
    req.user = verify(token);
    next();
  } catch {
    return res.status(401).json({ success: false, message: 'Invalid or expired token' });
  }
};

/** Attach req.user if token present, continue either way */
exports.optionalAuth = (req, res, next) => {
  const token = extractBearer(req);
  if (token) {
    try { req.user = verify(token); } catch {}
  }
  next();
};

/** Must be called after requireAuth */
exports.requireAdmin = (req, res, next) => {
  if (!req.user || req.user.role !== 'admin') {
    return res.status(403).json({ success: false, message: 'Admin access required' });
  }
  next();
};

/** Alias kept for back-compat with any existing imports */
exports.verifyToken = exports.requireAuth;
