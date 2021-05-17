const db = require('../../config/database')
const { uuid } = require('uuidv4')
const data = require('../../helpers/data')

const table = 'users'
const publicColumn = 'id, name, email, photo, email_verified_at, created_at, updated_at'


// Selecting data

exports.all = async (req) => {
	return await db.any(`SELECT ${publicColumn} FROM ${table}`)
}

exports.where = async (req, limit=false) => {
	let query = `SELECT ${publicColumn} FROM ${table} WHERE ${req}`
	
	if (limit) {
		query += ` LIMIT ${limit}`
	}

	if (limit === 1) {
		query = await db.any(query)
		return query[0]
	}

	return await db.any(query)
}

exports.find = async (id) => {
	const query = await db.any(`SELECT ${publicColumn} FROM ${table} WHERE "id" = '${id}' LIMIT 1`)
	return query[0]
}


// DB Transaction

exports.create = async (req) => {
	req.id = uuid()
	const KEY = await data.columns(Object.keys(req))
	const VAL = await data.values(Object.values(req))
	return await db.any(`INSERT INTO ${table} (${KEY}) VALUES(${VAL}) RETURNING ${publicColumn}`)
}

exports.update = async (id, req) => {
	const VALID = await data.update(Object.keys(req), Object.values(req))
	return await db.any(`UPDATE ${table} SET ${VALID} WHERE "id" = '${id}' RETURNING ${publicColumn}`)
}

exports.delete = async (id) => {
	return await db.any(`DELETE FROM ${table} WHERE "id" = '${id}' RETURNING ${publicColumn}`)
}
