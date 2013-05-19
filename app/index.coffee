express = require 'express'
app = express()

app.use require 'users'
app.use require 'repos'
app.use require 'reviews'

app.listen 5100, ->
	console.log 'APP listening on port 5100'
