# Create the app
express = require 'express'
app = module.exports = express()

# Initialize the models
require './models'

# Config
app.use require './config'

# Set the routes
app.use require './routes'

app.listen 5000, ->
  console.log 'API listening on port 5000'
