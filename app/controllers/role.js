const bcrypt = require('bcrypt')
const RoleModel = require('../models/RoleModel')
const response = require('../../helpers/response')

exports.Index = async (req, res, next) => {
	await RoleModel.findAll()
	.then(result => {
		// console.log('result role controller',result)
		if(!result) 
		return response.data(false, result, 'Data not found', res)

		return response.data(true, result, 'Data found', res)
	})
	.catch(err => {
		// console.log('err role controller',err)
		return response.data(false, err, 'Error', res)
	})
}

exports.Show = async (req, res, next) => {
	let role = await RoleModel.findOne({where: {id: req.params.id}})
	// console.log('req req params id',req.params.id)
	// console.log('role find',role)
	if (!role) return response.data(false, null, 'Data not found !', res)

	RoleModel.findAll({
		where: {
	    	id: role.id
	  	}
	})
	.then(result => {
		// console.log('result role controller',result)
		if(!result) 
		return response.data(false, result, 'Data not found', res)

		return response.data(true, result, 'Data found', res)
	})
	.catch(err => {
		// console.log('err role controller',err)
		return response.data(false, err, 'Error', res)
	})
}

exports.Post = async (req, res, next) => {
	console.log('req.body',req.body)

	let exist = await RoleModel.findOne({where: {name: req.body.name}})
	console.log('exist',exist)
	
	if (exist) return response.data(false, null, 'Sorry, name already registered !', res)

	// console.log('req role controller',req.body)
	await RoleModel.create(req.body)
	.then(result => {
		// console.log('result role controller',result)
		if(result) 
		return response.data(true, result, 'Data successfully created', res)

		return response.data(false, result, 'Database transaction error', res)
	})
	.catch(err => {
		// console.log('err role controller',err)
		return response.data(false, err, 'Error', res)
	})
}

exports.Put = async (req, res, next) => {
	console.log('req.body',req.body)

	let role = await RoleModel.findOne({where: {id: req.params.id}})
	// console.log('role where',role)
	if (!role) return response.data(false, null, 'Data not found !', res)

	// console.log('req role controller',req.body)
	await RoleModel.update(req.body, {where: {id: role.id}})
	.then(result => {
		// console.log('result role controller',result)
		if(result) 
		return response.data(true, result, 'Data successfully updated', res)

		return response.data(false, result, 'Database transaction error', res)
	})
	.catch(err => {
		// console.log('err role controller',err)
		return response.data(false, err, 'Error', res)
	})
}

exports.Delete = async (req, res, next) => {
	// console.log('req req params id',req.params.id)
	// console.log('req role controller',req.body)

	let role = await RoleModel.findAll({where: {id: req.params.id}})
	// console.log('role find',role)
	if (!role) return response.data(false, null, 'Data not found !', res)

	await RoleModel.destroy({where: {id: role.id}})
	.then(async (result) => {
		// console.log('result role controller',result)
		if(result) 
		return response.data(true, result, 'Data successfully deleted', res)

		return response.data(false, result, 'Database transaction error', res)
	})
	.catch(err => {
		// console.log('err role controller',err)
		return response.data(false, err, 'Error', res)
	})
}
