const express = require('express');
const router = express.Router();
const c = require('../controllers/blogController');

router.get('/', c.getAll);
router.get('/:slug', c.getBySlug);

module.exports = router;
