const express = require('express')
const router = express.Router()

const authenticated = require('../app/validation/authenticated')
const RoleRequest = require('../app/validation/RoleRequest')
const RoleController = require('../app/controllers/role')

router.get('/', authenticated, RoleController.Index)

router.post('/', authenticated, RoleRequest, RoleController.Post)

router.get('/:id', authenticated, RoleController.Show)

router.put('/:id', authenticated, RoleRequest, RoleController.Put)

router.delete('/:id', authenticated, RoleController.Delete)

module.exports = router
