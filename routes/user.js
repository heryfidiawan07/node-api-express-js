const express = require('express')
const router = express.Router()

const auth = require('../app/middleware/auth')
const UserRequest = require('../app/validation/UserRequest')
const UserController = require('../app/controllers/UserController')
const file = require('../helpers/file')

router.get('/', auth, UserController.Index)

router.post('/', auth, UserRequest, file.uploadImg('user', 'photo', 12), UserController.Post)

router.get('/:id', auth, UserController.Show)

router.put('/:id', auth, UserRequest, file.uploadImg('user', 'photo', 12), UserController.Put)

router.delete('/:id', auth, UserController.Delete)

module.exports = router
