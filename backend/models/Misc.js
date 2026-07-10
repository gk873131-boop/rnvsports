'use strict';
const { query, getOne } = require('../config/database');

const Review = {
  async findAll() {
    return query('SELECT * FROM tbl_adm_review WHERE status = 1 ORDER BY review_id DESC');
  },
  async create(data) {
    const fields = Object.keys(data);
    const result = await query(
      `INSERT INTO tbl_adm_review (${fields.join(', ')}) VALUES (${fields.map(() => '?').join(', ')})`,
      fields.map(f => data[f])
    );
    return result.insertId;
  },
  async update(id, data) {
    const fields = Object.keys(data);
    const setClause = fields.map(f => `${f} = ?`).join(', ');
    await query(`UPDATE tbl_adm_review SET ${setClause} WHERE review_id = ?`, [...fields.map(f => data[f]), id]);
  },
  async softDelete(id) {
    await query('UPDATE tbl_adm_review SET status = 0 WHERE review_id = ?', [id]);
  }
};

const Pin = {
  async findAll() {
    return query('SELECT * FROM tbl_pin WHERE status = 1 ORDER BY pin_id DESC');
  },
  async findByCode(pinCode) {
    return getOne('SELECT * FROM tbl_pin WHERE pin_code = ? AND status = 1', [pinCode]);
  },
  async create(pinCode, shippingCharge) {
    const result = await query('INSERT INTO tbl_pin (pin_code, shipping_charge) VALUES (?, ?)', [pinCode, shippingCharge]);
    return result.insertId;
  },
  async update(id, pinCode, shippingCharge) {
    await query('UPDATE tbl_pin SET pin_code = ?, shipping_charge = ? WHERE pin_id = ?', [pinCode, shippingCharge, id]);
  },
  async softDelete(id) {
    await query('UPDATE tbl_pin SET status = 0 WHERE pin_id = ?', [id]);
  }
};

const Gallery = {
  async findByProduct(productId) {
    return query('SELECT * FROM tbl_product_gallery WHERE product_id = ? AND status = 1', [productId]);
  },
  async add(productId, image) {
    const result = await query('INSERT INTO tbl_product_gallery (product_id, image) VALUES (?, ?)', [productId, image]);
    return result.insertId;
  },
  async remove(galleryId) {
    await query('UPDATE tbl_product_gallery SET status = 0 WHERE gallery_id = ?', [galleryId]);
  }
};

const Price = {
  async findByProduct(productId) {
    return query('SELECT * FROM tbl_price WHERE product_id = ? AND price_status = 1', [productId]);
  },
  async add(productId, age, regularPrice, price, updateDate) {
    const result = await query(
      'INSERT INTO tbl_price (product_id, age, regular_price, price, update_date) VALUES (?, ?, ?, ?, ?)',
      [productId, age, regularPrice, price, updateDate]
    );
    return result.insertId;
  },
  async remove(priceId) {
    await query('UPDATE tbl_price SET price_status = 0 WHERE price_id = ?', [priceId]);
  }
};

const Color = {
  async findByProduct(productId) {
    return query('SELECT * FROM tbl_color WHERE product_id = ? AND status = 1', [productId]);
  },
  async add(productId, colorName, color) {
    const result = await query('INSERT INTO tbl_color (product_id, color_name, color) VALUES (?, ?, ?)', [productId, colorName, color]);
    return result.insertId;
  },
  async remove(colorId) {
    await query('UPDATE tbl_color SET status = 0 WHERE color_id = ?', [colorId]);
  }
};

module.exports = { Review, Pin, Gallery, Price, Color };
