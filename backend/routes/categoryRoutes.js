'use strict';
const router = require('express').Router();
const ctrl   = require('../controllers/categoryController');
const { requireAuth, requireAdmin } = require('../middlewares/auth');

router.get('/',          ctrl.getAll);
router.get('/:slug',     ctrl.getBySlug);
router.post('/',         requireAuth, requireAdmin, ctrl.create);
router.put('/:id',       requireAuth, requireAdmin, ctrl.update);
router.delete('/:id',    requireAuth, requireAdmin, ctrl.remove);

module.exports = router;
