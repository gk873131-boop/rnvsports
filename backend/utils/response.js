'use strict';

exports.ok = (res, data, meta = {}) =>
  res.json({ success: true, data, ...meta });

exports.created = (res, data, meta = {}) =>
  res.status(201).json({ success: true, data, ...meta });

exports.noContent = (res) =>
  res.status(204).send();

exports.fail = (res, message, status = 400) =>
  res.status(status).json({ success: false, message });

exports.notFound = (res, message = 'Not found') =>
  res.status(404).json({ success: false, message });

exports.paginated = (res, data, pagination) =>
  res.json({ success: true, data, pagination });
