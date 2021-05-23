const { Sequelize, DataTypes } = require('sequelize')
const DB = require('../../config/database')
const moment = require('moment')
const { uuid } = require('uuidv4')

const Role = DB.define('roles', {
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
    created_at: {
        type: Sequelize.DATE,
        defaultValue: () => {
            return moment().format('YYYY-MM-DD')
        },
    },
    updated_at: {
        type: Sequelize.DATE,
        defaultValue: () => {
            return moment().format('YYYY-MM-DD')
        },
    },
}, {
    timestamps: false,
})

module.exports = Role