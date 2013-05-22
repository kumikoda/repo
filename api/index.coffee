express = require 'express'
app = express()


allowCrossDomain = (req, res, next) ->
  res.header 'Access-Control-Allow-Origin', 'http://localhost:3000'
  res.header 'Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE'
  res.header 'Access-Control-Allow-Headers', 'Content-Type'

  next()



app.use require 'users'
app.use require 'repos'
app.use require 'reviews'
app.use express.bodyParser()
app.use express.cookieParser()
app.use allowCrossDomain
app.use app.router

app.get "/test", (req,res) ->
  res.send('yay')

app.listen 5000, ->
  console.log 'API listening on port 5000'
