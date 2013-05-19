express = require 'express'
app = express()

app.use require 'users'
app.use require 'repos'
app.use require 'reviews'

app.listen 5000, ->
	console.log 'API listening on port 5000'
