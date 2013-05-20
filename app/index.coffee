express = require 'express'
app = express()

app.use require 'users'
app.use require 'repos'
app.use require 'reviews'

app.set 'views', 'app/views'
app.set 'view engine', 'jade'

app.get '/', (req, res)->
	res.render 'index'

app.listen 3000, ->
	console.log 'APP listening on port 3000'
