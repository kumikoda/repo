express = require 'express'
app = module.exports = express()

app.use express.bodyParser()
app.use express.cookieParser()