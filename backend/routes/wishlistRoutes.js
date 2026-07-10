'use strict';
const router = require('express').Router();
const ctrl   = require('../controllers/wishlistController');
const { requireAuth } = require('../middlewares/auth');

router.get('/',         requireAuth, ctrl.getWishlist);
router.post('/',        requireAuth, ctrl.addItem);
router.delete('/:id',   requireAuth, ctrl.removeItem);

module.exports = router;
