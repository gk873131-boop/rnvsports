'use strict';
const router = require('express').Router();
const ctrl   = require('../controllers/cartController');
const { optionalAuth } = require('../middlewares/auth');

router.get('/',         optionalAuth, ctrl.getCart);
router.get('/count',    optionalAuth, ctrl.getCount);
router.post('/',        optionalAuth, ctrl.addItem);
router.put('/:id',      optionalAuth, ctrl.updateItem);
router.delete('/clear', optionalAuth, ctrl.clearCart);
router.delete('/:id',   optionalAuth, ctrl.removeItem);

module.exports = router;
