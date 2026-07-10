const express = require('express');
const router = express.Router();
const c = require('../controllers/promoController');

router.post('/validate', c.validate);
router.get('/', c.getAll);

module.exports = router;
