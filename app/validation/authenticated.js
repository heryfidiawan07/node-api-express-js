const jwt = require('jsonwebtoken')
const response = require('../../helpers/response')

const verify = (req, res, next) => {
	// const ContentType   = req.header('Content-Type')
	const Authorization = req.header('Authorization')

	if (!Authorization) return response.data(false, null, 'Access denied !', res)

	try{
		const verified = jwt.verify(Authorization, process.env.SECRET_KEY)
		req.user = verified
		next()
	}catch(err) {
		return response.data(false, null, 'Invalid Token !', res)
	}
}

module.exports = verify