const { pool } = require('./database');
const fs = require('fs');
const path = require('path');
const bcrypt = require('bcryptjs');

const SCHEMA_PATH = path.join(__dirname, '..', '..', 'database', 'schema.sql');

async function waitForDb(retries = 30) {
  for (let i = 0; i < retries; i++) {
    try {
      const conn = await pool.getConnection();
      await conn.ping();
      conn.release();
      return;
    } catch (e) {
      console.log(`Waiting for DB... (${i + 1}/${retries})`);
      await new Promise(r => setTimeout(r, 2000));
    }
  }
  throw new Error('DB not available after retries');
}

async function runSetup() {
  console.log('Starting DB setup...');

  if (!fs.existsSync(SCHEMA_PATH)) {
    console.error('schema.sql not found at', SCHEMA_PATH);
    process.exit(1);
  }

  const sql = fs.readFileSync(SCHEMA_PATH, 'utf8');
  const statements = sql.split(';').map(s => s.trim()).filter(Boolean);

  const conn = await pool.getConnection();
  try {
    for (const stmt of statements) {
      try {
        await conn.query(stmt);
      } catch (err) {
        if (err.code !== 'ER_DUP_ENTRY' && err.code !== 'ER_TABLE_EXISTS_ERROR') {
          console.warn('SQL warning:', err.message);
        }
      }
    }
    console.log('Schema applied.');

    const [[admin]] = await conn.query("SELECT COUNT(*) as c FROM tbl_employee WHERE user_id='admin'");
    if (admin.c === 0) {
      const pw = bcrypt.hashSync(process.env.ADMIN_PASSWORD || 'admin123', 10);
      await conn.query(
        "INSERT INTO tbl_employee (employee_name, user_id, password, employee_type, emp_status, status) VALUES (?, 'admin', ?, 'Manager', 'Active', 1)",
        [process.env.ADMIN_USERNAME || 'admin', pw]
      );
      console.log('Default admin user created: admin / ' + (process.env.ADMIN_PASSWORD || 'admin123'));
    } else {
      console.log('Admin user already exists.');
    }

    console.log('✅ Database setup complete.');
  } finally {
    conn.release();
    process.exit(0);
  }
}

waitForDb().then(runSetup).catch(err => {
  console.error('Setup failed:', err.message);
  process.exit(1);
});
