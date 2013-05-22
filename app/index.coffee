express = require 'express'
app = express()

app.use require './config'
app.use require './routes'


app.listen 3000, ->
  console.log 'APP listening on port 3000'

