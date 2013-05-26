express = require 'express'

module.exports = (app) ->

  # Express Config 
  app.use express.bodyParser()
  app.use express.cookieParser()
  app.use express.logger 'dev'
  app.use app.router



  