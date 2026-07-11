'use strict';
const mysql = require('mysql2/promise');

const pool = mysql.createPool({
  host:             process.env.DB_HOST || 'localhost',
  port:             parseInt(process.env.DB_PORT || '3306', 10),
  user:             process.env.DB_USER || 'root',
  password:         process.env.DB_PASSWORD || '',
  database:         process.env.DB_NAME || 'salvaind_rnvsports',
  waitForConnections: true,
  connectionLimit:  15,
  queueLimit:       0,
  charset:          'utf8mb4',
  timezone:         '+00:00',
  namedPlaceholders: false
});

// Test connection on startup
pool.getConnection()
  .then(conn => { console.log('✅ MySQL connected'); conn.release(); })
  .catch(err => { console.error('❌ MySQL connection error:', err.message); });

/** Run a parameterised query, returns rows array */
async function query(sql, params = []) {
  const [rows] = await pool.execute(sql, params);
  return rows;
}

/** Return first row or null */
async function getOne(sql, params = []) {
  const [rows] = await pool.execute(sql, params);
  return rows[0] || null;
}

/** Return a raw connection from the pool (caller must release) */
async function getConnection() {
  return pool.getConnection();
}

/** Run multiple statements inside a transaction */
async function withTransaction(fn) {
  const conn = await pool.getConnection();
  await conn.beginTransaction();
  try {
    const result = await fn(conn);
    await conn.commit();
    return result;
  } catch (err) {
    await conn.rollback();
    throw err;
  } finally {
    conn.release();
  }
}

module.exports = { pool, query, getOne, getConnection, withTransaction };
