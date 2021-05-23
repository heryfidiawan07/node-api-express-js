const express = require('express')
const router = express.Router()

const auth = require('../app/middleware/auth')
const RoleRequest = require('../app/validation/RoleRequest')
const RoleController = require('../app/controllers/RoleController')

router.get('/', auth, RoleController.Index)

router.post('/', auth, RoleRequest, RoleController.Post)

router.get('/:id', auth, RoleController.Show)

router.put('/:id', auth, RoleRequest, RoleController.Put)

router.delete('/:id', auth, RoleController.Delete)

module.exports = router
