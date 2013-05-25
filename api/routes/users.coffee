express = require 'express'
app = module.exports = express()

app.get 'users', ->
  res.send('users!!!')