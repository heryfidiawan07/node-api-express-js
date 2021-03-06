const { DataTypes } = require('sequelize')
const DB = require('../../config/database')
const moment = require('moment')
const { uuid } = require('uuidv4')

const User = DB.define('users', {
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
    email: {
        type: DataTypes.STRING,
        allowNull: false
    },
    password: {
        type: DataTypes.STRING,
        allowNull: false
    },
    photo: {
        type: DataTypes.STRING,
        allowNull: false
    },
    created_at: {
        type: DataTypes.DATE,
        defaultValue: () => {
            return moment().format('YYYY-MM-DD')
        },
    },
    updated_at: {
        type: DataTypes.DATE,
        defaultValue: () => {
            return moment().format('YYYY-MM-DD')
        },
    },
}, {
    timestamps: false,
})

module.exports = User