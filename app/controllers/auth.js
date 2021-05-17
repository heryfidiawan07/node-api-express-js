const bcrypt = require('bcrypt')
const jwt    = require('jsonwebtoken')

const model = require('../models/auth')
const response = require('../../helpers/response')

exports.Login = async (req, res, next) => {
	let request = req.body

	const param = `"email"='${request.email}'`

	let user = await model.where(param, 1)

	// console.log('req auth controller',request)
	// console.log('user where',user)

	// If email registered
	if (!user) return response.data(false, null, 'Email / password failed !', res)

	// Check password
	const password = await bcrypt.compare(request.password, user.password)
	if (!password) return response.data(false, null, 'Email / password failed !', res)
	
	delete user.password
	return response.data(false, [{
		'token': jwt.sign({_id: user.id}, process.env.SECRET_KEY, {expiresIn: '2h'}), 
		'expired': '2 hours',
		'user': user
	}], 'Logged', res)
}

exports.Register = async (req, res, next) => {
	let request = req.body

	const param = `"email"='${request.email}'`

	let user = await model.where(param)

	// console.log('user where',user)

	// Check Email
	if (user) return response.data(false, null, 'Sorry, email already registered !', res)
	
	const salt = await bcrypt.genSalt(10)
	const hash = await bcrypt.hash(request.password, salt)
	request.password = hash
	
	// console.log('req auth controller',request)

	await model.register(request)
	.then(result => {
		if(result) 
		return response.data(true, result, 'Data successfully registered', res)

		return response.data(false, result, 'Database transaction error', res)
	})
	.catch(err => {
		// console.log('err auth controller',err)
		return response.data(false, err, 'Error', res)
	})
}
