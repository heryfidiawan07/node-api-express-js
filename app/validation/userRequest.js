const response = require('../../helpers/response')
const { body, validationResult }  = require('express-validator')

const valid = async (req, res, next) => {
	body('name').isLength({min:3}).withMessage('Name is required, minimum 3 character'),
	body('email').isEmail().isLength({min:3}).withMessage('Email is required, minimum 5 character'),
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

module.exports = valid