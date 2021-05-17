require('dotenv/config')
const pgp = require('pg-promise')(/* options */)
const db = pgp(process.env.DB_CONNECTION)

module.exports = db