const express = require('express')
const router = express.Router()

const authenticated = require('../app/validation/authenticated')
const userRequest = require('../app/validation/userRequest')
const userController = require('../app/controllers/user')
const file = require('../helpers/file')

router.get('/', authenticated, userController.Index)

router.post('/', authenticated, userRequest, file.uploadImg.array('photo', 12), userController.Post)

router.get('/:id', authenticated, userController.Show)

router.put('/:id', authenticated, userRequest, file.uploadImg.array('photo', 12), userController.Put)

router.delete('/:id', authenticated, userController.Delete)

module.exports = router
