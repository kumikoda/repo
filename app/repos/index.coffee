express = require 'express'
app = module.exports = express()

app.set 'views', __dirname
app.set 'view engine', 'jade'

app.get '/repo/:name', (req, res) ->
  res.render 'repo',{title: req.name}
