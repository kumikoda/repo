express = require 'express'
app = module.exports = express()

app.use require './home'
app.use require './repos'
app.use require './users'
app.use app.router