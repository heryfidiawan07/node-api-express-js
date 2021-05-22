const express = require('express')
const router = express.Router()

const authRequest = require('../app/validation/authRequest')
const authController = require('../app/controllers/auth')

router.post('/login', authRequest.Login, authController.Login)
router.post('/register', authRequest.Register, authController.Register)

module.exports = router
