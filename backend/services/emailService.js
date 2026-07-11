'use strict';
/**
 * Email/notification service.
 * Uses nodemailer when SMTP credentials are configured via env vars,
 * otherwise logs to console (development mode).
 */

let transporter = null;

function getTransporter() {
  if (transporter) return transporter;
  const host = process.env.SMTP_HOST;
  const port = process.env.SMTP_PORT;
  const user = process.env.SMTP_USER;
  const pass = process.env.SMTP_PASS;
  if (!host || !user || !pass) return null;
  const nodemailer = require('nodemailer');
  transporter = nodemailer.createTransport({
    host,
    port: parseInt(port, 10) || 587,
    secure: (parseInt(port, 10) || 587) === 465,
    auth: { user, pass },
  });
  return transporter;
}

async function sendMail({ to, subject, html, text }) {
  const t = getTransporter();
  const from = process.env.SMTP_FROM || `"RNV Sports" <no-reply@rnvsports.com>`;
  if (!t) {
    console.log(`[EMAIL:DEV] To: ${to} | Subject: ${subject}\n${text || ''}`);
    return true;
  }
  await t.sendMail({ from, to, subject, html, text });
  return true;
}

async function sendOrderConfirmation({ email, customerName, orderNo, items, totalAmount }) {
  const itemCount = Array.isArray(items) ? items.length : 0;
  const subject = `Order Confirmation — ${orderNo}`;
  const text = `Hi ${customerName || 'Customer'},\n\nThank you for your order ${orderNo}.\nItems: ${itemCount}\nTotal: ₹${totalAmount}\n\nWe will notify you once your order is dispatched.\n\nRNV Sports`;
  const html = `<h2>Order Confirmation</h2><p>Hi ${customerName || 'Customer'},</p><p>Thank you for your order <strong>${orderNo}</strong>.</p><p>Items: ${itemCount}<br>Total: <strong>₹${totalAmount}</strong></p><p>We will notify you once your order is dispatched.</p><p>RNV Sports</p>`;
  return sendMail({ to: email, subject, html, text });
}

async function sendWelcome({ email, firstName }) {
  const subject = 'Welcome to RNV Sports!';
  const text = `Hi ${firstName || 'there'},\n\nWelcome to RNV Sports — your destination for premium sports and gym equipment.\n\nHappy shopping!\nRNV Sports`;
  const html = `<h2>Welcome to RNV Sports!</h2><p>Hi ${firstName || 'there'},</p><p>Welcome to RNV Sports — your destination for premium sports and gym equipment.</p><p>Happy shopping!</p><p>RNV Sports</p>`;
  return sendMail({ to: email, subject, html, text });
}

async function sendPasswordReset({ email, resetLink }) {
  const subject = 'Password Reset — RNV Sports';
  const text = `You requested a password reset.\n\nClick the link below to reset your password:\n${resetLink}\n\nIf you did not request this, please ignore this email.\n\nRNV Sports`;
  const html = `<h2>Password Reset</h2><p>You requested a password reset.</p><p>Click the link below to reset your password:</p><p><a href="${resetLink}">${resetLink}</a></p><p>If you did not request this, please ignore this email.</p><p>RNV Sports</p>`;
  return sendMail({ to: email, subject, html, text });
}

module.exports = { sendOrderConfirmation, sendWelcome, sendPasswordReset };
