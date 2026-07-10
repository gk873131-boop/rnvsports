'use strict';
const { query, getOne } = require('../config/database');

const Banner = {
  async getHome() {
    return query('SELECT * FROM tbl_home_banner WHERE status = 1 ORDER BY banner_id DESC');
  },
  async addHome(name, image) {
    const result = await query('INSERT INTO tbl_home_banner (name, image) VALUES (?, ?)', [name, image]);
    return result.insertId;
  },
  async deleteHome(id) {
    await query('UPDATE tbl_home_banner SET status = 0 WHERE banner_id = ?', [id]);
  },

  async getLeft() {
    return query('SELECT * FROM tbl_left_banner WHERE status = 1');
  },
  async addLeft(image) {
    const result = await query('INSERT INTO tbl_left_banner (image) VALUES (?)', [image]);
    return result.insertId;
  },
  async deleteLeft(id) {
    await query('UPDATE tbl_left_banner SET status = 0 WHERE id = ?', [id]);
  },

  async getRight() {
    return query('SELECT * FROM tbl_right_banner WHERE status = 1');
  },
  async addRight(image) {
    const result = await query('INSERT INTO tbl_right_banner (image) VALUES (?)', [image]);
    return result.insertId;
  },
  async deleteRight(id) {
    await query('UPDATE tbl_right_banner SET status = 0 WHERE id = ?', [id]);
  },

  async getExtra(type = null) {
    if (type) return query('SELECT * FROM tbl_extra_banner WHERE type = ? AND status = 1', [type]);
    return query('SELECT * FROM tbl_extra_banner WHERE status = 1');
  },
  async addExtra(image, type = 1) {
    const result = await query('INSERT INTO tbl_extra_banner (image, type) VALUES (?, ?)', [image, type]);
    return result.insertId;
  },
  async deleteExtra(id) {
    await query('UPDATE tbl_extra_banner SET status = 0 WHERE extra_id = ?', [id]);
  }
};

const Video = {
  async get() {
    return getOne('SELECT * FROM tbl_video LIMIT 1');
  },
  async upsert(video1, video2) {
    const existing = await getOne('SELECT id FROM tbl_video LIMIT 1');
    if (existing) {
      await query('UPDATE tbl_video SET video1 = ?, video2 = ? WHERE id = ?', [video1, video2, existing.id]);
    } else {
      await query('INSERT INTO tbl_video (video1, video2) VALUES (?, ?)', [video1, video2]);
    }
  }
};

module.exports = { Banner, Video };
