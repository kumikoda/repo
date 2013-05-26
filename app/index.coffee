# App config
app = require('./config/mvc')(__dirname)
require('./config/server')(app) 

# View Controllers
app.use require './lib/index'
app.use require './lib/repo'


# Server
app.listen process.env.PORT || 3000, ->
  console.log 'APP listening on port 3000'


