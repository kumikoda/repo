express = require 'express'
app = module.exports = express()
coffeescript = require 'connect-coffee-script'
stylus = require 'stylus' 


app.set 'views', './../views'
app.set 'view engine', 'jade'
app.use express.bodyParser()
app.use express.cookieParser()
app.use express.logger 'dev'
app.use coffeescript { src: './../public', bare: true } 
app.use stylus.middleware {  src: './../public' , compile:compile } 
app.use express.static  './../public' 

compile = (str, path) ->
  return stylus(str)
    .set('filename', path)
    .use(nib());