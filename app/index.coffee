# App initialization and configuration
require('lib/database')
app = require('lib/config')()

# Mount the routes
app.use require 'routes/index'
app.use require 'routes/home'
app.use require 'routes/modules'
app.use require 'routes/account'
app.use require 'routes/users'
app.use require 'routes/reviews'
app.use require 'routes/search'


# Server
app.listen process.env.PORT || 3000, ->
  console.log 'APP listening on port 3000'

