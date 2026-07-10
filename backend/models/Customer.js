'use strict';
const { query, getOne } = require('../config/database');

const Customer = {
  async findByEmail(email) {
    return getOne('SELECT * FROM tbl_customer WHERE customer_email = ? AND customer_status = 1', [email]);
  },

  async findById(id) {
    return getOne(
      `SELECT user_id, customer_fname, customer_lname, customer_email, customer_mobile,
              customer_address1, apartment, customer_city, customer_state, customer_pincode,
              customer_country, customer_company, gender, profile, created_at
       FROM tbl_customer WHERE user_id = ? AND customer_status = 1`,
      [id]
    );
  },

  async create({ firstName, lastName, email, password, mobile }) {
    const result = await query(
      `INSERT INTO tbl_customer
       (customer_fname, customer_lname, customer_email, customer_password, customer_mobile, customer_status)
       VALUES (?, ?, ?, ?, ?, 1)`,
      [firstName, lastName, email, password, mobile || null]
    );
    return result.insertId;
  },

  async updateProfile(id, data) {
    await query(
      `UPDATE tbl_customer
       SET customer_fname=?, customer_lname=?, customer_mobile=?,
           customer_company=?, gender=?, customer_address1=?,
           apartment=?, customer_city=?, customer_state=?,
           customer_pincode=?, customer_country=?
       WHERE user_id = ?`,
      [
        data.firstName, data.lastName, data.mobile,
        data.company, data.gender, data.address1,
        data.apartment, data.city, data.state,
        data.pincode, data.country || 'India',
        id
      ]
    );
  },

  async updatePhoto(id, filename) {
    await query('UPDATE tbl_customer SET profile = ? WHERE user_id = ?', [filename, id]);
  },

  async updatePassword(id, hashedPassword) {
    await query('UPDATE tbl_customer SET customer_password = ? WHERE user_id = ?', [hashedPassword, id]);
  },

  async findAll() {
    return query(
      `SELECT user_id, customer_fname, customer_lname, customer_email,
              customer_mobile, customer_status, created_at
       FROM tbl_customer ORDER BY created_at DESC`
    );
  },

  async softDelete(id) {
    await query('UPDATE tbl_customer SET customer_status = 0 WHERE user_id = ?', [id]);
  }
};

module.exports = Customer;
