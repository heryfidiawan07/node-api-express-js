require('dotenv/config')
const { uuid } = require('uuidv4')
const { Sequelize, DataTypes } = require('sequelize')
const sequelize = new Sequelize(process.env.DB_CONNECTION)

try {
    sequelize.authenticate()
    console.log('Connection has been established successfully.');
} catch (error) {
    console.error('Unable to connect to the database:', error);
}

const Role = sequelize.define('roles', {
    // Model attributes are defined here
    id: {
        type: DataTypes.UUID,
        defaultValue: () => {
            return uuid()
        },
        primaryKey: true
    },
    name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    created_at: Sequelize.DATE,
    updated_at: Sequelize.DATE,
}, {
    timestamps: false,
})

module.exports = Role