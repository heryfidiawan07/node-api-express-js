const express = require('express')
const router = express.Router()

const authController = require('../app/controllers/auth')
// const {body}  = require('express-validator')
// const tokenVerify = require('../validator/token')

/* GET users listing. */

// const UserRequest = [
// 		body('name').isLength({min:3}).withMessage('Name is required, minimum 3 character'),
// 		body('username').isLength({min:3}).withMessage('Username is required, minimum 3 character'),
// 		body('email').isLength({min:5}).withMessage('Email is required, minimum 5 character'),
// 		body('password').isLength({min:6}).withMessage('Password is required, minimum 6 character'),
// 		body('address').isLength({min:6}).withMessage('Address is required, minimum 6 character'),
// 	]

router.post('/login', authController.Login)

// router.put('/:id', tokenVerify, UserRequest, authController.Put)
router.post('/register', authController.Register)

module.exports = router
