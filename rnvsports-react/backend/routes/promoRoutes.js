'use strict';
const router = require('express').Router();
const ctrl   = require('../controllers/promoController');
const { requireAuth, requireAdmin } = require('../middlewares/auth');

// Promo codes
router.get('/',              ctrl.getAllPromos);
router.post('/validate',     ctrl.validatePromo);
router.post('/',             requireAuth, requireAdmin, ctrl.createPromo);
router.put('/:id',           requireAuth, requireAdmin, ctrl.updatePromo);
router.delete('/:id',        requireAuth, requireAdmin, ctrl.deletePromo);

module.exports = router;
