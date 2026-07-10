const express = require('express');
const router = express.Router();
const c = require('../controllers/settingsController');

router.get('/', c.get);
router.put('/', c.update);

module.exports = router;
