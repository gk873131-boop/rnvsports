const express = require('express');
const router = express.Router();
const c = require('../controllers/reviewController');

router.get('/', c.getAll);

module.exports = router;
