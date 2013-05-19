express = require 'express'
app = express()

app.use require 'users'
app.use require 'repos'
app.use require 'reviews'

app.listen 3000, ->
	console.log 'listening on port 3000'
