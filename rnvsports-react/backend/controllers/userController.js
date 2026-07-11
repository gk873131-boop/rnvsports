'use strict';
const bcrypt           = require('bcrypt');
const Customer         = require('../models/Customer');
const { asyncHandler } = require('../middlewares/helpers');
const { ok, fail, notFound } = require('../utils/response');
const { getUploadedFilename } = require('../services/uploadService');

exports.getProfile = asyncHandler(async (req, res) => {
  const user = await Customer.findById(req.user.id);
  if (!user) return notFound(res, 'User not found');
  ok(res, user);
});

exports.updateProfile = asyncHandler(async (req, res) => {
  const { firstName, lastName, mobile, company, gender, address1, apartment, city, state, pincode, country } = req.body;
  const photoFile = getUploadedFilename(req);

  await Customer.updateProfile(req.user.id, {
    firstName, lastName, mobile, company, gender,
    address1, apartment, city, state, pincode, country
  });

  if (photoFile) await Customer.updatePhoto(req.user.id, photoFile);

  const updated = await Customer.findById(req.user.id);
  ok(res, updated);
});

exports.changePassword = asyncHandler(async (req, res) => {
  const { oldPassword, newPassword } = req.body;
  if (!oldPassword || !newPassword) return fail(res, 'Old and new passwords are required');
  if (newPassword.length < 6) return fail(res, 'Password must be at least 6 characters');

  const row = await require('../config/database').getOne(
    'SELECT customer_password FROM tbl_customer WHERE user_id = ?', [req.user.id]
  );
  if (!row) return notFound(res, 'User not found');

  const valid = await bcrypt.compare(oldPassword, row.customer_password);
  if (!valid) return fail(res, 'Current password is incorrect');

  const hashed = await bcrypt.hash(newPassword, 12);
  await Customer.updatePassword(req.user.id, hashed);
  ok(res, null, { message: 'Password changed successfully' });
});
