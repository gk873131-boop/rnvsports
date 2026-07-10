'use strict';
const router = require('express').Router();
const ctrl   = require('../controllers/enquiryController');
const { requireAuth, requireAdmin } = require('../middlewares/auth');

// Contact enquiries (public submit)
router.post('/',              ctrl.submitContactEnquiry);
router.get('/',               requireAuth, requireAdmin, ctrl.getContactEnquiries);
router.delete('/:id',         requireAuth, requireAdmin, ctrl.deleteContactEnquiry);

// Product enquiries (public submit)
router.post('/product',       ctrl.submitProductEnquiry);
router.get('/product',        requireAuth, requireAdmin, ctrl.getProductEnquiries);
router.delete('/product/:id', requireAuth, requireAdmin, ctrl.deleteProductEnquiry);

module.exports = router;
