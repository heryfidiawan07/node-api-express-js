const createError = require('http-errors')
const express = require('express')
const path = require('path')
const cookieParser = require('cookie-parser')
const logger = require('morgan')

const indexRouter = require('./routes/index')
const authRouter = require('./routes/auth')
const userRouter = require('./routes/user')

// lib
const parser = require('body-parser')
const multer = require('multer')
const cors 	 = require('cors')
// const forms  = multer()

const app = express()

// view engine setup
app.set('views', path.join(__dirname, 'views'))
app.set('view engine', 'jade')

app.use(logger('dev'))
// app.use(express.json())
// app.use(express.urlencoded({ extended: false }))
app.use(cookieParser())
app.use(express.static(path.join(__dirname, 'public')))

app.use(cors())
app.use(parser.urlencoded({ extended: true }))
// app.use(forms.array())
app.use(parser.json())

app.use((req, res, next) => {
	// req.setHeader('Access-Control-Allow-Origin', 'http:url.com')
	res.setHeader('Access-Control-Allow-Origin', '*')
	res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTION')
	res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization')

	// console.log('req.method',req.method)
	// console.log('req.header',req.header)
	// console.log('req.header Content-Type',req.header('Content-Type'))
	// console.log('req.body',req.body)

	next()
})

app.use('/', indexRouter)
app.use('/auth', authRouter)
app.use('/user', userRouter)

// catch 404 and forward to error handler
app.use((req, res, next) => {
  next(createError(404))
})

// error handler
app.use((err, req, res, next) => {
  // set locals, only providing error in development
  res.locals.message = err.message
  res.locals.error = req.app.get('env') === 'development' ? err : {}

  // render the error page
  res.status(err.status || 500)
  res.render('error')
})

module.exports = app
