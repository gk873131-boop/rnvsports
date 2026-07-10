'use strict';
const bcrypt         = require('bcrypt');
const { sign }       = require('../config/jwt');
const Customer       = require('../models/Customer');
const { Employee }   = require('../models/Employee');
const { asyncHandler } = require('../middlewares/helpers');
const { ok, created, fail } = require('../utils/response');
const emailService   = require('../services/emailService');

exports.register = asyncHandler(async (req, res) => {
  const { firstName, lastName, email, password, mobile } = req.body;
  if (!email || !password) return fail(res, 'Email and password are required');
  if (password.length < 6) return fail(res, 'Password must be at least 6 characters');

  const existing = await Customer.findByEmail(email);
  if (existing) return fail(res, 'Email is already registered', 409);

  const hashed = await bcrypt.hash(password, 12);
  const userId = await Customer.create({ firstName, lastName, email, password: hashed, mobile });

  const token = sign({ id: userId, role: 'customer', email });
  emailService.sendWelcome({ email, firstName }).catch(() => {});

  created(res, {
    token,
    user: { id: userId, email, firstName, lastName, role: 'customer' }
  });
});

exports.login = asyncHandler(async (req, res) => {
  const { email, password } = req.body;
  if (!email || !password) return fail(res, 'Email and password are required');

  const user = await Customer.findByEmail(email);
  if (!user) return fail(res, 'Invalid email or password', 401);

  const valid = await bcrypt.compare(password, user.customer_password);
  if (!valid) return fail(res, 'Invalid email or password', 401);

  const token = sign({ id: user.user_id, role: 'customer', email: user.customer_email });
  ok(res, {
    token,
    user: {
      id:        user.user_id,
      email:     user.customer_email,
      firstName: user.customer_fname,
      lastName:  user.customer_lname,
      mobile:    user.customer_mobile,
      role:      'customer'
    }
  });
});

exports.adminLogin = asyncHandler(async (req, res) => {
  const { user_id, password } = req.body;
  if (!user_id || !password) return fail(res, 'Username and password are required');

  const admin = await Employee.findByUserId(user_id);
  if (!admin) return fail(res, 'Invalid credentials', 401);

  const valid = await bcrypt.compare(password, admin.password);
  if (!valid) return fail(res, 'Invalid credentials', 401);

  const token = sign({ id: admin.employee_id, role: 'admin', username: admin.user_id });
  ok(res, {
    token,
    user: { id: admin.employee_id, role: 'admin', name: admin.employee_name, username: admin.user_id }
  });
});
