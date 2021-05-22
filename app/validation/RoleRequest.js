const response = require('../../helpers/response')
const { body, validationResult }  = require('express-validator')

const valid = async (req, res, next) => {
	body('name').isLength({min:3}).withMessage('Name is required, minimum 3 character'),
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