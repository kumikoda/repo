express = require 'express'
app = module.exports = express()

app.use require './cors'
app.use require './users'
app.use require './repos'
app.use require './reviews'
app.use app.router