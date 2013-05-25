express = require 'express'
coffeescript = require 'connect-coffee-script'
stylus = require 'stylus' 
nib = require 'nib'

module.exports = (app) ->

  # express stuff
  app.use express.bodyParser()
  app.use express.cookieParser()
  app.use express.logger 'dev'
  app.use app.router

  # jade
  app.set 'view engine', 'jade'

  # coffeescript
  app.use coffeescript  
    src:__dirname + '/../public'
    bare: true  

  # stylus + nib
  app.use stylus.middleware
    src:__dirname + '/../public'
    compile:compile  

  # public directory
  app.use express.static __dirname + '/../public'


# compile function for using nib
compile = (str, path) ->
  return stylus(str)
    .set('filename', path)
    .use(nib());