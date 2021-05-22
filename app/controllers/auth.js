const bcrypt = require('bcrypt')
const model = require('../models/auth')
const token = require('../../config/token')
const response = require('../../helpers/response')

exports.Login = async (req, res, next) => {
	let user = await model.where(`"email"='${req.body.email}'`, 1)

	// console.log('req auth controller',req.body)
	// console.log('user where',user)

	// If email registered
	if (!user) return response.data(false, null, 'Email / password failed !', res)

	// Check password
	const password = await bcrypt.compare(req.body.password, user.password)
	if (!password) return response.data(false, null, 'Email / password failed !', res)
	
	delete user.password
	return response.data(true, await token.setToken(user), 'Logged', res)
}

exports.Register = async (req, res, next) => {
	let user = await model.where(`"email"='${req.body.email}'`)

	// console.log('user where',user)

	// Check Email
	if (user) return response.data(false, null, 'Sorry, email already registered !', res)
	
	const salt = await bcrypt.genSalt(10)
	const hash = await bcrypt.hash(req.body.password, salt)
	req.body.password = hash
	
	// console.log('req auth controller',req.body)

	await model.register(req.body)
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
