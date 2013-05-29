app = require('lib/config')()


# App initialization and configuration
require('lib/database')
require('lib/authentication')(app)


# Mount the routes
app.use require 'routes/signup'
app.use require 'routes/modules'
app.use require 'routes/account'
app.use require 'routes/users'


# Server
app.listen process.env.PORT || 3000, ->
  console.log 'APP listening on port 3000'

