const express = require('express');
const router = express.Router();
const c = require('../controllers/brandController');

router.get('/', c.getAll);
router.get('/:slug', c.getBySlug);

module.exports = router;
