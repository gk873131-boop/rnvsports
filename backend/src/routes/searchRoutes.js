const express = require('express');
const router = express.Router();
const c = require('../controllers/searchController');

router.get('/', c.search);

module.exports = router;
