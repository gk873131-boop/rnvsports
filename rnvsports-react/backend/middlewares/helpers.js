'use strict';

/**
 * Wraps an async route handler and forwards errors to Express error handler.
 */
exports.asyncHandler = (fn) => (req, res, next) =>
  Promise.resolve(fn(req, res, next)).catch(next);

/**
 * Parse pagination query params, returns { page, limit, offset }
 */
exports.paginate = (page = 1, limit = 12) => {
  const p = Math.max(1, parseInt(page, 10) || 1);
  const l = Math.min(100, Math.max(1, parseInt(limit, 10) || 12));
  return { page: p, limit: l, offset: (p - 1) * l };
};

/**
 * Build a safe WHERE clause from a conditions object.
 * Values containing % are treated as LIKE conditions.
 */
exports.buildWhere = (conditions) => {
  const clauses = [];
  const values = [];
  for (const [key, val] of Object.entries(conditions)) {
    if (val === undefined || val === null || val === '') continue;
    if (typeof val === 'string' && val.includes('%')) {
      clauses.push(`${key} LIKE ?`);
    } else {
      clauses.push(`${key} = ?`);
    }
    values.push(val);
  }
  const where = clauses.length ? 'WHERE ' + clauses.join(' AND ') : '';
  return { where, values };
};
