const { Sequelize, DataTypes } = require('sequelize')
const DB = require('../../config/database')

const RoleUser = DB.define('role_user', {
    user_id: {
        type: DataTypes.UUID,
        allowNull: false,
        references: {
            model: 'UserModel',
            key: 'id'
        }
    },
    role_id: {
        type: DataTypes.UUID,
        allowNull: false,
        references: {
            model: 'RoleModel',
            key: 'id'
        }
    },
}, {
    timestamps: false,
    tableName: 'role_user'
})

module.exports = RoleUser