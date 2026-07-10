'use strict';
/**
 * Placeholder email/notification service.
 * In production, replace with nodemailer or an ESP SDK (SendGrid, Mailgun, etc.)
 */

async function sendOrderConfirmation({ email, customerName, orderNo, items, totalAmount }) {
  // TODO: integrate SMTP here
  console.log(`[EMAIL] Order confirmation → ${email} | Order: ${orderNo} | Total: ₹${totalAmount}`);
  return true;
}

async function sendWelcome({ email, firstName }) {
  console.log(`[EMAIL] Welcome email → ${email} | Name: ${firstName}`);
  return true;
}

async function sendPasswordReset({ email, resetLink }) {
  console.log(`[EMAIL] Password reset → ${email}`);
  return true;
}

module.exports = { sendOrderConfirmation, sendWelcome, sendPasswordReset };
