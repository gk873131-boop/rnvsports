const express = require('express');
const router = express.Router();
const c = require('../controllers/cartController');

router.get('/', c.getCart);
router.post('/', c.addItem);
router.put('/:id', c.updateItem);
router.delete('/:id', c.removeItem);
router.delete('/', c.clearCart);

module.exports = router;
