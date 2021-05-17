const db = require('../../config/database')
const { uuid } = require('uuidv4')
const data = require('../../helpers/data')

const table = 'users'

// Selecting data

exports.all = async (req) => {
	return await db.any(`SELECT * FROM ${table}`)
}

exports.where = async (req, limit=false) => {
	let query = `SELECT * FROM ${table} WHERE ${req}`
	
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
	const query = await db.any(`SELECT * FROM ${table} WHERE "id" = '${id}' LIMIT 1`)
	return query[0]
}


// DB Transaction

exports.register = async (req) => {
	req.id = uuid()
	const KEY = await data.columns(Object.keys(req))
	const VAL = await data.values(Object.values(req))
	return await db.any(`INSERT INTO ${table} (${KEY}) VALUES(${VAL}) RETURNING *`)
}