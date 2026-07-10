const { query, getOne } = require('../config/database');
const { asyncHandler } = require('../middleware/helpers');
const { verifyToken, requireAdmin } = require('../middleware/auth');
const bcrypt = require('bcryptjs');

// Dashboard stats
exports.dashboard = [verifyToken, requireAdmin, asyncHandler(async (req, res) => {
  const today = new Date().toISOString().slice(0, 10);
  const [[todayOrders]] = await query('SELECT COUNT(DISTINCT order_no) as count FROM tbl_order_management WHERE date = ? AND status = 1', [today]);
  const [[todaySale]] = await query('SELECT SUM(total_amt) as total FROM tbl_order_management WHERE date = ? AND status = 1', [today]);
  const [[totalProducts]] = await query('SELECT COUNT(*) as count FROM tbl_product WHERE status = 1');
  const [[totalSale]] = await query('SELECT SUM(total_amt) as total FROM tbl_order_management WHERE status = 1');

  res.json({
    success: true,
    data: {
      todayOrders: todayOrders.count,
      todaySale: todaySale.total || 0,
      totalProducts: totalProducts.count,
      totalSale: totalSale.total || 0
    }
  });
})];

// Generic CRUD factory for admin
const crudFor = (table, idField) => ({
  list: asyncHandler(async (req, res) => {
    const rows = await query(`SELECT * FROM ${table} WHERE status = 1 ORDER BY ${idField} DESC`);
    res.json({ success: true, data: rows });
  }),
  create: asyncHandler(async (req, res) => {
    const fields = Object.keys(req.body);
    const placeholders = fields.map(() => '?').join(', ');
    const values = fields.map(f => req.body[f]);
    const result = await query(`INSERT INTO ${table} (${fields.join(', ')}) VALUES (${placeholders})`, values);
    res.status(201).json({ success: true, data: { id: result.insertId } });
  }),
  update: asyncHandler(async (req, res) => {
    const fields = Object.keys(req.body).filter(f => f !== idField);
    const setClause = fields.map(f => `${f} = ?`).join(', ');
    const values = fields.map(f => req.body[f]);
    values.push(req.params.id);
    await query(`UPDATE ${table} SET ${setClause} WHERE ${idField} = ?`, values);
    res.json({ success: true, message: 'Updated' });
  }),
  remove: asyncHandler(async (req, res) => {
    await query(`UPDATE ${table} SET status = 0 WHERE ${idField} = ?`, [req.params.id]);
    res.json({ success: true, message: 'Deleted' });
  })
});

exports.products = crudFor('tbl_product', 'product_id');
exports.categories = crudFor('tbl_category', 'category_id');
exports.brands = crudFor('tbl_brand', 'id');
exports.blogs = crudFor('tbl_blog', 'blog_id');
exports.reviews = crudFor('tbl_adm_review', 'review_id');
exports.banners = crudFor('tbl_home_banner', 'banner_id');
exports.promos = crudFor('tbl_promo', 'promo_id');
exports.orders = {
  list: asyncHandler(async (req, res) => {
    const rows = await query('SELECT order_no, client_name, total_amt, order_status, payment_status, date FROM tbl_order_management WHERE status = 1 GROUP BY order_no ORDER BY created_at DESC');
    res.json({ success: true, data: rows });
  }),
  updateStatus: asyncHandler(async (req, res) => {
    const { order_status, payment_status } = req.body;
    await query('UPDATE tbl_order_management SET order_status = ?, payment_status = ? WHERE order_no = ?', [order_status, payment_status, req.params.orderNo]);
    res.json({ success: true, message: 'Order status updated' });
  })
};
exports.employees = crudFor('tbl_employee', 'employee_id');
exports.suppliers = crudFor('tbl_supplier', 'supplier_id');
exports.enquiries = {
  list: asyncHandler(async (req, res) => {
    const rows = await query('SELECT * FROM tbl_enquiry WHERE status = 1 ORDER BY id DESC');
    res.json({ success: true, data: rows });
  }),
  remove: asyncHandler(async (req, res) => {
    await query('UPDATE tbl_enquiry SET status = 0 WHERE id = ?', [req.params.id]);
    res.json({ success: true, message: 'Deleted' });
  })
};

exports.changePassword = asyncHandler(async (req, res) => {
  const { oldPassword, newPassword } = req.body;
  const admin = await getOne('SELECT * FROM tbl_employee WHERE user_id = ?', [req.user.username]);
  if (!bcrypt.compareSync(oldPassword, admin.password)) return res.status(400).json({ success: false, message: 'Old password incorrect' });
  await query('UPDATE tbl_employee SET password = ? WHERE user_id = ?', [bcrypt.hashSync(newPassword, 10), req.user.username]);
  res.json({ success: true, message: 'Password changed' });
});
