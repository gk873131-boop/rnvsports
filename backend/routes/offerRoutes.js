'use strict';
const router = require('express').Router();
const ctrl   = require('../controllers/promoController');
const { requireAuth, requireAdmin } = require('../middlewares/auth');

router.get('/',         ctrl.getAllOffers);
router.get('/:id',      ctrl.getOffer);
router.post('/',        requireAuth, requireAdmin, ctrl.createOffer);
router.put('/:id',      requireAuth, requireAdmin, ctrl.updateOffer);
router.delete('/:id',   requireAuth, requireAdmin, ctrl.deleteOffer);

module.exports = router;
