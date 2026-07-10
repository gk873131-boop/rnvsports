'use strict';
const crypto = require('crypto');
const https = require('https');

const MERCHANT_ID   = () => process.env.PHONEPE_MERCHANT_ID || '';
const SALT_KEY      = () => process.env.PHONEPE_SALT_KEY || '';
const SALT_INDEX    = () => process.env.PHONEPE_SALT_INDEX || '1';
const API_URL       = () => process.env.PHONEPE_API_URL || 'https://api.phonepe.com/apis/hermes/pg/v1/pay';
const CALLBACK_URL  = () => process.env.PHONEPE_CALLBACK_URL || '';
const BASE_URL      = () => (process.env.BASE_URL || 'http://localhost:5000');

/**
 * Build a PhonePe pay page redirect URL.
 * Returns { redirectUrl, transactionId }
 */
async function initiatePayment({ amount, orderId, customerId, customerEmail, customerMobile }) {
  const transactionId = `TXN_${orderId}_${Date.now()}`;
  const amountInPaise = Math.round(parseFloat(amount) * 100);

  const payload = {
    merchantId:          MERCHANT_ID(),
    merchantTransactionId: transactionId,
    merchantUserId:      String(customerId || 'GUEST'),
    amount:              amountInPaise,
    redirectUrl:         `${BASE_URL()}/api/payment/callback`,
    redirectMode:        'REDIRECT',
    callbackUrl:         CALLBACK_URL() || `${BASE_URL()}/api/payment/callback`,
    mobileNumber:        customerMobile || '',
    paymentInstrument:   { type: 'PAY_PAGE' }
  };

  const payloadBase64   = Buffer.from(JSON.stringify(payload)).toString('base64');
  const string          = payloadBase64 + '/pg/v1/pay' + SALT_KEY();
  const sha256          = crypto.createHash('sha256').update(string).digest('hex');
  const checksum        = `${sha256}###${SALT_INDEX()}`;

  return new Promise((resolve, reject) => {
    const postData = JSON.stringify({ request: payloadBase64 });

    const url = new URL(API_URL());
    const options = {
      hostname: url.hostname,
      path:     url.pathname,
      method:   'POST',
      headers:  {
        'Content-Type':       'application/json',
        'X-VERIFY':           checksum,
        'X-MERCHANT-ID':      MERCHANT_ID(),
        'Content-Length':     Buffer.byteLength(postData)
      }
    };

    const req = https.request(options, (res) => {
      let body = '';
      res.on('data', chunk => body += chunk);
      res.on('end', () => {
        try {
          const data = JSON.parse(body);
          if (data.success && data.data?.instrumentResponse?.redirectInfo?.url) {
            resolve({
              redirectUrl:   data.data.instrumentResponse.redirectInfo.url,
              transactionId
            });
          } else {
            reject(new Error(data.message || 'PhonePe initiation failed'));
          }
        } catch (e) {
          reject(e);
        }
      });
    });

    req.on('error', reject);
    req.write(postData);
    req.end();
  });
}

/**
 * Verify a PhonePe callback using X-VERIFY header.
 * Returns true if the signature matches.
 */
function verifyCallback(responseBase64, xVerify) {
  const string  = responseBase64 + SALT_KEY();
  const sha256  = crypto.createHash('sha256').update(string).digest('hex');
  const expected = `${sha256}###${SALT_INDEX()}`;
  return expected === xVerify;
}

/**
 * Check payment status by transaction ID.
 */
async function checkStatus(transactionId) {
  const string   = `/pg/v1/status/${MERCHANT_ID()}/${transactionId}` + SALT_KEY();
  const sha256   = crypto.createHash('sha256').update(string).digest('hex');
  const checksum = `${sha256}###${SALT_INDEX()}`;

  return new Promise((resolve, reject) => {
    const options = {
      hostname: 'api.phonepe.com',
      path:     `/apis/hermes/pg/v1/status/${MERCHANT_ID()}/${transactionId}`,
      method:   'GET',
      headers:  {
        'Content-Type':  'application/json',
        'X-VERIFY':      checksum,
        'X-MERCHANT-ID': MERCHANT_ID()
      }
    };

    const req = https.request(options, (res) => {
      let body = '';
      res.on('data', chunk => body += chunk);
      res.on('end', () => {
        try { resolve(JSON.parse(body)); } catch (e) { reject(e); }
      });
    });

    req.on('error', reject);
    req.end();
  });
}

module.exports = { initiatePayment, verifyCallback, checkStatus };
