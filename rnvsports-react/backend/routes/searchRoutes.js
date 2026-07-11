'use strict';
const router = require('express').Router();
const ctrl   = require('../controllers/searchController');

router.get('/',            ctrl.search);
router.get('/autocomplete', ctrl.autocomplete);

module.exports = router;
