###

A generator for a pre-configured mountable mvc app-module

> app
  > styles
  > scripts
  > views
    index.coffee

###

coffeescript = require 'connect-coffee-script'
stylus = require 'stylus' 
nib = require 'nib'
express = require 'express'

module.exports = (dirname) ->

  app = express() 

  # jade
  app.set 'views', dirname + '/views'
  app.set 'view engine', 'jade'

  # coffeescript
  app.use coffeescript  
    src: dirname 
    bare: true  

  # stylus + nib
  app.use stylus.middleware
    src: dirname 
    compile: (str, path) ->
      return stylus(str)
        .set('filename', path)
        .use(nib());

  # public directory
  app.use express.static dirname

  app
