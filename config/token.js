require('dotenv/config')
const jwt    = require('jsonwebtoken')

exports.setToken = async (user) => {
	return {
		'token': await jwt.sign({_id: user.id}, process.env.SECRET_KEY, {expiresIn: `${process.env.lifeTime}`}), 
		'expired': `${process.env.lifeTime}`,
		'user': user
	}
}