require('dotenv/config')
const { Sequelize, DataTypes } = require('sequelize')
const sequelize = new Sequelize(process.env.DB_CONNECTION)

try {
    sequelize.authenticate()
    console.log('Connection has been established successfully.');
} catch (error) {
    console.error('Unable to connect to the database:', error);
}

const User = sequelize.define('users', {
    // Model attributes are defined here
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
    created_at: Sequelize.DATE,
    updated_at: Sequelize.DATE,
}, {
    timestamps: false,
})

module.exports = User