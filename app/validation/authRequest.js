const response = require('../../helpers/response')
const { body, validationResult }  = require('express-validator')

exports.Login = async (req, res, next) => {
	body('email').isLength({min:5}).withMessage('Email is required, minimum 5 character'),
	body('password').isLength({min:6}).withMessage('Password is required, minimum 6 character'),
	(req, res, next) => {
    	const errors = validationResult(req.body)
    	if (!errors.isEmpty()) {
    		return response.data(false, errors.array(), 'Validation error !', res)
    	}
	    next()
	}
	next()
}

exports.Register = async (req, res, next) => {
	body('name').isLength({min:3}).withMessage('Name is required, minimum 3 character'),
	body('email').isLength({min:5}).withMessage('Email is required, minimum 5 character'),
	body('password').isLength({min:6}).withMessage('Password is required, minimum 6 character'),
	(req, res, next) => {
    	const errors = validationResult(req.body)
    	if (!errors.isEmpty()) {
    		return response.data(false, errors.array(), 'Validation error !', res)
    	}
	    next()
	}
	next()
}
