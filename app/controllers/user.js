const bcrypt = require('bcrypt')
const model = require('../models/user')
const UserModel = require('../models/UserModel')
const response = require('../../helpers/response')
const file = require('../../helpers/file')

exports.Index = async (req, res, next) => {
	// await model.all()
	await UserModel.findAll()
	.then(result => {
		// console.log('result user controller',result)
		if(!result) 
		return response.data(false, result, 'Data not found', res)

		return response.data(true, result, 'Data found', res)
	})
	.catch(err => {
		// console.log('err user controller',err)
		return response.data(false, err, 'Error', res)
	})
}

exports.Show = async (req, res, next) => {
	let user = await model.find(req.params.id)
	// console.log('req req params id',req.params.id)
	// console.log('user find',user)
	if (!user) return response.data(false, null, 'Data not found !', res)

	await model.where(`"id"='${user.id}'`)
	.then(result => {
		// console.log('result user controller',result)
		if(!result) 
		return response.data(false, result, 'Data not found', res)

		return response.data(true, result, 'Data found', res)
	})
	.catch(err => {
		// console.log('err user controller',err)
		return response.data(false, err, 'Error', res)
	})
}

exports.Post = async (req, res, next) => {
	console.log('req.body',req.body)
	console.log('req.files',req.files)

	if (req.files.length < 1) return response.data(false, 'File is required !', 'Validation error !', res)
	let user = await model.where(`"email"='${req.body.email}'`, 1)
	
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

	// console.log('req user controller',req.body)
	await model.create(req.body)
	.then(result => {
		// console.log('result user controller',result)
		if(result) 
		return response.data(true, result, 'Data successfully created', res)

		return response.data(false, result, 'Database transaction error', res)
	})
	.catch(err => {
		// console.log('err user controller',err)
		return response.data(false, err, 'Error', res)
	})
}

exports.Put = async (req, res, next) => {
	console.log('req.body',req.body)
	console.log('req.files',req.files)

	let user = await model.find(req.params.id)
	// console.log('user where',user)

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

	// console.log('req user controller',req.body)
	await model.update(user.id, req.body)
	.then(result => {
		// console.log('result user controller',result)
		if(result) 
		return response.data(true, result, 'Data successfully updated', res)

		return response.data(false, result, 'Database transaction error', res)
	})
	.catch(err => {
		// console.log('err user controller',err)
		return response.data(false, err, 'Error', res)
	})
}

exports.Delete = async (req, res, next) => {
	// console.log('req req params id',req.params.id)
	// console.log('req user controller',req.body)

	let user = await model.find(req.params.id)
	// console.log('user find',user)
	if (!user) return response.data(false, null, 'Data not found !', res)

	await model.delete(user.id, req.body)
	.then(async (result) => {
		// console.log('result user controller',result)
		if(result) 
		// await file.remove([1], `storage/user/${user.photo}`)
		await file.remove([1], user.photo)
		return response.data(true, result, 'Data successfully deleted', res)

		return response.data(false, result, 'Database transaction error', res)
	})
	.catch(err => {
		// console.log('err user controller',err)
		return response.data(false, err, 'Error', res)
	})
}
