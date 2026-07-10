const express = require('express');
const router = express.Router();
const c = require('../controllers/newsletterController');

router.post('/subscribe', c.subscribe);

module.exports = router;
