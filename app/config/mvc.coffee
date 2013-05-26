###
  A generator for a pre-configured mvc app

  - app
    - styles
    - scripts
    - views
    - index.coffee

###

express = require 'express'
coffeescript = require 'connect-coffee-script'
stylus = require 'stylus' 
nib = require 'nib'

module.exports = (dirname) ->

  app = express() 

  # jade
  app.set 'views', dirname + '/views'
  app.set 'view engine', 'jade'

  # coffeescript
  app.use coffeescript  
    src: dirname + '/scripts'
    bare: true  

  # stylus + nib
  app.use stylus.middleware
    src: dirname + '/styles'
    compile: (str, path) ->
      return stylus(str)
        .set('filename', path)
        .use(nib());

  # public directory
  app.use express.static dirname

  app
