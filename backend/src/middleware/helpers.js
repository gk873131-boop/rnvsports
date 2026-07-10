exports.asyncHandler = (fn) => (req, res, next) =>
  Promise.resolve(fn(req, res, next)).catch(next);

exports.paginate = (page = 1, limit = 12) => {
  const p = Math.max(1, parseInt(page, 10));
  const l = Math.min(100, Math.max(1, parseInt(limit, 10)));
  const offset = (p - 1) * l;
  return { page: p, limit: l, offset };
};

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
