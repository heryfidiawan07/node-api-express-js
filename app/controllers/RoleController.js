const RoleModel = require('../models/RoleModel')
const {users} = require('../models/RoleUser')
const response = require('../../helpers/response')

exports.Index = async (req, res, next) => {
	await RoleModel.findAll()
	.then(result => {
		if(!result) return response.data(false, result, 'Data not found', res)
		return response.data(true, result, 'Data found', res)
	})
	.catch(err => response.data(false, err, 'Error', res))
}

exports.Show = async (req, res, next) => {
	await RoleModel.findByPk(req.params.id, {include: [users]})
	.then(result => {
		if(!result) return response.data(false, result, 'Data not found', res)
		return response.data(true, result, 'Data found', res)
	})
	.catch(err => response.data(false, err, 'Error', res))
}

exports.Post = async (req, res, next) => {
	let exist = await RoleModel.findOne({where: {name: req.body.name}})
	if (exist) return response.data(false, null, 'Sorry, name already registered !', res)
	
	await RoleModel.create(req.body)
	.then(result => {
		if(result) return response.data(true, result, 'Data successfully created', res)
		return response.data(false, result, 'Database transaction error', res)
	})
	.catch(err => response.data(false, err, 'Error', res))
}

exports.Put = async (req, res, next) => {
	let role = await RoleModel.findOne({where: {id: req.params.id}})
	if (!role) return response.data(false, null, 'Data not found !', res)

	await RoleModel.update(req.body, {where: {id: role.id}})
	.then(result => {
		if(result) return response.data(true, result, 'Data successfully updated', res)
		return response.data(false, result, 'Database transaction error', res)
	})
	.catch(err => response.data(false, err, 'Error', res))
}

exports.Delete = async (req, res, next) => {
	await RoleModel.destroy({where: {id: role.id}})
	.then(result => {
		if(result) return response.data(true, result, 'Data successfully deleted', res)
		return response.data(false, result, 'Database transaction error', res)
	})
	.catch(err => response.data(false, err, 'Error', res))
}
