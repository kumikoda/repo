express = require 'express'
app = express()

# Express Config 
app.use express.bodyParser()
app.use express.cookieParser()
app.use express.logger 'dev'
app.use app.router

# View Controllers
app.use require './lib/common'
app.use require './lib/repo'


# Server
app.listen process.env.PORT || 3000, ->
  console.log 'APP listening on port 3000'


