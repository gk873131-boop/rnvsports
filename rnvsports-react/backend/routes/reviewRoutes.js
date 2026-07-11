'use strict';
const router = require('express').Router();
const ctrl   = require('../controllers/reviewController');
const { requireAuth, requireAdmin } = require('../middlewares/auth');
const { upload } = require('../middlewares/upload');

router.get('/',       ctrl.getAll);
router.post('/',      requireAuth, requireAdmin, upload.single('image'), ctrl.create);
router.put('/:id',    requireAuth, requireAdmin, upload.single('image'), ctrl.update);
router.delete('/:id', requireAuth, requireAdmin, ctrl.remove);

module.exports = router;
