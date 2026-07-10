const express = require('express');
const router = express.Router();
const c = require('../controllers/enquiryController');

router.post('/contact', c.createEnquiry);
router.post('/product', c.createProductEnquiry);

module.exports = router;
