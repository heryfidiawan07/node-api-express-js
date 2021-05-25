const bcrypt = require('bcrypt')
const UserModel = require('../models/UserModel')
const {roles} = require('../models/RoleUser')
const response = require('../../helpers/response')
const file = require('../../helpers/file')

exports.Index = async (req, res, next) => {
	await UserModel.findAll()
	.then(result => {
		if(!result) return response.data(false, result, 'Data not found', res)
		return response.data(true, result, 'Data found', res)
	})
	.catch(err => response.data(false, err, 'Error', res))
}

exports.Show = async (req, res, next) => {
	await UserModel.findByPk(req.params.id, {include: [roles]})
	.then(result => {
		if(!result) return response.data(false, result, 'Data not found', res)
		return response.data(true, result, 'Data found', res)
	})
	.catch(err => response.data(false, err, 'Error', res))
}

exports.Post = async (req, res, next) => {
	// console.log('req.body',req.body)
	// console.log('req.files',req.files)

	if (req.files.length < 1) return response.data(false, 'File is required !', 'Validation error !', res)
	let user = await UserModel.findOne({where: {email: req.body.email}})
	
	if (user) {
		await file.remove(req.files)
		return response.data(false, null, 'Sorry, email already registered !', res)
	} 

	if (req.body.password) {
		const salt = await bcrypt.genSalt(10)
		const hash = await bcrypt.hash(req.body.password, salt)
		req.body.password = hash
	}

	if (req.files.length > 0) req.body.photo = await req.files[0].path

	await UserModel.create(req.body)
	.then(result => {
		if(result) return response.data(true, result, 'Data successfully created', res)
		return response.data(false, result, 'Database transaction error', res)
	})
	.catch(err => response.data(false, err, 'Error', res))
}

exports.Put = async (req, res, next) => {
	// console.log('req.body',req.body)
	// console.log('req.files',req.files)

	let user = await model.findOne({where: {id: req.params.id}})

	if (!user) {
		await file.remove(req.files)
		return response.data(false, null, 'Data not found !', res)
	} 

	if (req.files.length > 0) {
		await file.remove([1], user.photo)
		req.body.photo = await req.files[0].path
	}

	if (req.body.password) {
		const salt = await bcrypt.genSalt(10)
		const hash = await bcrypt.hash(req.body.password, salt)
		req.body.password = hash
	}

	await UserModel.update(user.id, req.body)
	.then(result => {
		if(result) return response.data(true, result, 'Data successfully updated', res)
		return response.data(false, result, 'Database transaction error', res)
	})
	.catch(err => response.data(false, err, 'Error', res))
}

exports.Delete = async (req, res, next) => {
	await UserModel.destroy({where: {id: req.params.id}})
	.then(async (result) => {
		if(result) {
			await file.remove([1], user.photo)
			return response.data(true, result, 'Data successfully deleted', res)
		}

		return response.data(false, result, 'Database transaction error', res)
	})
	.catch(err => response.data(false, err, 'Error', res))
}
