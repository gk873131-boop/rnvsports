const { verifyToken, requireAdmin } = require('../middleware/auth');
const { asyncHandler } = require('../middleware/helpers');

function makeRouter(controller, options = {}) {
  const router = require('express').Router();
  const { auth = false, admin = false } = options;

  const protect = auth ? [verifyToken] : [];
  const adminProtect = admin ? [verifyToken, requireAdmin] : [];

  if (controller.getAll) {
    router.get('/', controller.getAll);
    router.get('/all', controller.getAll);
  }
  if (controller.create) {
    router.post('/', [...adminProtect, controller.create]);
  }
  if (controller.update) {
    router.put('/:id', [...adminProtect, controller.update]);
  }
  if (controller.remove) {
    router.delete('/:id', [...adminProtect, controller.remove]);
  }
  return router;
}

module.exports = { makeRouter };
