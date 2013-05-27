app = require('lib/config')()


# App initialization and configuration
require('lib/database')
require('lib/authentication')(app)


# Mount the routes
app.use require 'routes/index'
app.use require 'routes/repo'
app.use require 'routes/home'


# Server
app.listen process.env.PORT || 3000, ->
  console.log 'APP listening on port 3000'

