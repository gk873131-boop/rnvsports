const { query, getOne } = require('../config/database');
const { asyncHandler } = require('../middleware/helpers');
const bcrypt = require('bcryptjs');
const { generateToken } = require('../middleware/auth');

exports.register = asyncHandler(async (req, res) => {
  const { firstName, lastName, email, password, mobile } = req.body;
  if (!email || !password) return res.status(400).json({ success: false, message: 'Email and password required' });

  const existing = await getOne('SELECT * FROM tbl_customer WHERE customer_email = ? AND customer_status = 1', [email]);
  if (existing) return res.status(409).json({ success: false, message: 'Email already registered' });

  const hashed = bcrypt.hashSync(password, 10);
  const result = await query(
    `INSERT INTO tbl_customer (customer_fname, customer_lname, customer_email, customer_password, customer_password1, customer_mobile, customer_status)
     VALUES (?, ?, ?, ?, ?, ?, 1)`,
    [firstName, lastName, email, hashed, password, mobile]
  );

  const user = { id: result.insertId, role: 'customer', email };
  const token = generateToken(user);
  res.status(201).json({ success: true, data: { token, user } });
});

exports.login = asyncHandler(async (req, res) => {
  const { email, password } = req.body;
  const user = await getOne('SELECT * FROM tbl_customer WHERE customer_email = ? AND customer_status = 1', [email]);
  if (!user) return res.status(401).json({ success: false, message: 'Invalid credentials' });

  const valid = bcrypt.compareSync(password, user.customer_password);
  if (!valid) return res.status(401).json({ success: false, message: 'Invalid credentials' });

  const token = generateToken({ id: user.user_id, role: 'customer', email: user.customer_email });
  res.json({
    success: true,
    data: {
      token,
      user: {
        id: user.user_id,
        email: user.customer_email,
        firstName: user.customer_fname,
        lastName: user.customer_lname,
        mobile: user.customer_mobile
      }
    }
  });
});

exports.adminLogin = asyncHandler(async (req, res) => {
  const { user_id, password } = req.body;
  const admin = await getOne('SELECT * FROM tbl_employee WHERE user_id = ? AND status = 1', [user_id]);
  if (!admin) return res.status(401).json({ success: false, message: 'Invalid admin credentials' });

  const valid = bcrypt.compareSync(password, admin.password);
  if (!valid) return res.status(401).json({ success: false, message: 'Invalid admin credentials' });

  const token = generateToken({ id: admin.employee_id, role: 'admin', username: admin.user_id });
  res.json({ success: true, data: { token, user: { id: admin.employee_id, role: 'admin', name: admin.employee_name } } });
});

exports.getProfile = [require('../middleware/auth').verifyToken, asyncHandler(async (req, res) => {
  const user = await getOne('SELECT user_id, customer_fname, customer_lname, customer_email, customer_mobile, customer_address1, customer_city, customer_state, customer_pincode, customer_country, customer_company, profile FROM tbl_customer WHERE user_id = ?', [req.user.id]);
  if (!user) return res.status(404).json({ success: false, message: 'User not found' });
  res.json({ success: true, data: user });
})];

exports.updateProfile = [require('../middleware/auth').verifyToken, asyncHandler(async (req, res) => {
  const { firstName, lastName, mobile, address1, city, state, pincode, company } = req.body;
  await query(
    `UPDATE tbl_customer SET customer_fname=?, customer_lname=?, customer_mobile=?, customer_address1=?, customer_city=?, customer_state=?, customer_pincode=?, customer_company=? WHERE user_id=?`,
    [firstName, lastName, mobile, address1, city, state, pincode, company, req.user.id]
  );
  res.json({ success: true, message: 'Profile updated' });
})];

exports.changePassword = [require('../middleware/auth').verifyToken, asyncHandler(async (req, res) => {
  const { oldPassword, newPassword } = req.body;
  const user = await getOne('SELECT customer_password FROM tbl_customer WHERE user_id = ?', [req.user.id]);
  if (!bcrypt.compareSync(oldPassword, user.customer_password)) {
    return res.status(400).json({ success: false, message: 'Old password incorrect' });
  }
  await query('UPDATE tbl_customer SET customer_password=?, customer_password1=? WHERE user_id=?', [bcrypt.hashSync(newPassword, 10), newPassword, req.user.id]);
  res.json({ success: true, message: 'Password changed' });
})];
