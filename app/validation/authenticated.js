const jwt = require('jsonwebtoken')
const token = require('../../config/token')
const UserModel = require('../models/UserModel')
const response = require('../../helpers/response')

const verify = async (req, res, next) => {
	// const ContentType   = req.header('Content-Type')
	const Authorization = req.header('Authorization')

	if (!Authorization) return response.data(false, null, 'Access denied !', res)

	try{
		const verified = jwt.verify(Authorization, process.env.SECRET_KEY)
		console.log('req originalUrl',req.originalUrl)
		console.log('req path',req.path)
		console.log('req baseUrl',req.baseUrl)
		console.log('req method',req.method)
		console.log('verified',verified)
		let now = Math.floor(new Date().getTime()/1000)
		console.log('now',now)
		console.log('expired in time', parseInt(verified.exp) - parseInt(now))
		// get user role permission in here by user_id (verified._id) and compare with url or request params
		// console.log('verified',verified)
		next()
	}catch(err) {
		let inTime = Math.floor(new Date(err.expiredAt).getTime()/1000) - Math.floor(new Date().getTime()/1000)
		let check = parseInt(inTime) + 7200
		if (check > 0) {
			const oldToken = jwt.verify(Authorization, process.env.SECRET_KEY, {ignoreExpiration: true})
			let user = await UserModel.findOne({where: {id: oldToken._id}})
			return response.data('refresh', await token.setToken(user), 'Refresh Token !', res)
		}
		err.inTime = inTime
		return response.data(false, err, 'Invalid Token !', res)
	}
}

module.exports = verify