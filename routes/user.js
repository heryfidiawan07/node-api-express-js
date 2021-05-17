const express = require('express')
const router = express.Router()

const authenticated = require('../app/validation/authenticated')
const userController = require('../app/controllers/user')
const file = require('../helpers/file')

const { body }  = require('express-validator')
const validation = [
	body('name').isLength({min:3}).withMessage('Name is required, minimum 3 character'),
	body('email').isEmail().isLength({min:3}).withMessage('Email is required, minimum 5 character'),
	body('password').isLength({min:6}).withMessage('Password is required, minimum 6 character'),
]

router.get('/', authenticated, userController.Index)

router.post('/', authenticated, validation, file.uploadImg.array('photo', 12), userController.Post)

router.get('/:id', userController.Show)

router.put('/:id', authenticated, validation, file.uploadImg.array('photo', 12), userController.Put)

router.delete('/:id', authenticated, userController.Delete)

module.exports = router
