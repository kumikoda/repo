express = require 'express'
app = module.exports = express()

app.get '/', (req, res)->
  res.render 'layout'

app.get '/about', ->

app.get '/contact', ->