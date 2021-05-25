const { DataTypes } = require('sequelize')
const DB = require('../../config/database')
const User = require('./UserModel')
const Role = require('./RoleModel')

const RoleUser = DB.define('role_user', {
    user_id: {
        type: DataTypes.UUID,
        allowNull: false,
        references: {
            model: 'UserModel',
            key: 'id'
        },
        primaryKey: true
    },
    role_id: {
        type: DataTypes.UUID,
        allowNull: false,
        references: {
            model: 'RoleModel',
            key: 'id'
        },
        primaryKey: true
    },
}, {
    timestamps: false,
    tableName: 'role_user'
})

exports.roles = User.belongsToMany(Role, {through: RoleUser, foreignKey: 'user_id', otherKey: 'role_id'})
exports.users = Role.belongsToMany(User, {through: RoleUser, foreignKey: 'role_id', otherKey: 'user_id'})
