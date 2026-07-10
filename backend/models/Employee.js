'use strict';
const { query, getOne } = require('../config/database');

const Employee = {
  async findByUserId(userId) {
    return getOne('SELECT * FROM tbl_employee WHERE user_id = ? AND status = 1', [userId]);
  },
  async findById(id) {
    return getOne('SELECT * FROM tbl_employee WHERE employee_id = ? AND status = 1', [id]);
  },
  async findAll() {
    return query('SELECT employee_id, employee_name, employee_email, employee_contact, employee_type, user_id, emp_status FROM tbl_employee WHERE status = 1 ORDER BY employee_id DESC');
  },
  async create(data) {
    const fields = Object.keys(data);
    const result = await query(
      `INSERT INTO tbl_employee (${fields.join(', ')}) VALUES (${fields.map(() => '?').join(', ')})`,
      fields.map(f => data[f])
    );
    return result.insertId;
  },
  async update(id, data) {
    const fields = Object.keys(data);
    const setClause = fields.map(f => `${f} = ?`).join(', ');
    await query(`UPDATE tbl_employee SET ${setClause} WHERE employee_id = ?`, [...fields.map(f => data[f]), id]);
  },
  async softDelete(id) {
    await query('UPDATE tbl_employee SET status = 0 WHERE employee_id = ?', [id]);
  },
  async updatePassword(userId, hashedPassword) {
    await query('UPDATE tbl_employee SET password = ? WHERE user_id = ?', [hashedPassword, userId]);
  }
};

const Supplier = {
  async findAll() {
    return query('SELECT * FROM tbl_supplier WHERE status = 1 ORDER BY supplier_id DESC');
  },
  async findById(id) {
    return getOne('SELECT * FROM tbl_supplier WHERE supplier_id = ? AND status = 1', [id]);
  },
  async create(data) {
    const fields = Object.keys(data);
    const result = await query(
      `INSERT INTO tbl_supplier (${fields.join(', ')}) VALUES (${fields.map(() => '?').join(', ')})`,
      fields.map(f => data[f])
    );
    return result.insertId;
  },
  async update(id, data) {
    const fields = Object.keys(data);
    const setClause = fields.map(f => `${f} = ?`).join(', ');
    await query(`UPDATE tbl_supplier SET ${setClause} WHERE supplier_id = ?`, [...fields.map(f => data[f]), id]);
  },
  async softDelete(id) {
    await query('UPDATE tbl_supplier SET status = 0 WHERE supplier_id = ?', [id]);
  }
};

module.exports = { Employee, Supplier };
