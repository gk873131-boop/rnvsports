const express = require('express');
const router = express.Router();
const c = require('../controllers/categoryController');

router.get('/', c.getAll);
router.get('/:slug', c.getBySlug);
router.post('/', c.create);

module.exports = router;
