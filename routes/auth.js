const express = require('express')
const router = express.Router()

const AuthRequest = require('../app/validation/AuthRequest')
const AuthController = require('../app/controllers/AuthController')

router.post('/login', AuthRequest.Login, AuthController.Login)
router.post('/register', AuthRequest.Register, AuthController.Register)

module.exports = router
