express = require 'express'
app  = express()

# Config 
require('./config')(app)

# Routes
app.use require './routes'


# Server
app.listen process.env.PORT || 3000, ->
  console.log 'APP listening on port 3000'


