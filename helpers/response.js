exports.data = async (status, data, message, res) => {
	return await res.send({
		'status': status,
		'data': data,
		'message': message
	})
}