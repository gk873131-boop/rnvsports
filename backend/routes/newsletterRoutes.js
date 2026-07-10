'use strict';
const router = require('express').Router();
const ctrl   = require('../controllers/newsletterController');
const { requireAuth, requireAdmin } = require('../middlewares/auth');

router.post('/subscribe',  ctrl.subscribe);
router.get('/',            requireAuth, requireAdmin, ctrl.getAll);
router.delete('/:id',      requireAuth, requireAdmin, ctrl.remove);

module.exports = router;
