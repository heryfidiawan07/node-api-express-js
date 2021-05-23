require('dotenv/config')

// const pgp = require('pg-promise')
// const db = pgp(process.env.DB_CONNECTION)

const { Sequelize } = require('sequelize')
const sequelize = new Sequelize(process.env.DB_CONNECTION)

try {
	sequelize.authenticate()
    console.log('Connection has been established successfully.');
} catch (error) {
    console.error('Unable to connect to the database:', error);
}

module.exports = sequelize