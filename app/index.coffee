express = require 'express'
app = express()
coffeescript = require 'connect-coffee-script'
stylus = require 'stylus' 

app.use require 'app/users'
app.use require 'app/repos'
app.use require 'app/reviews'

app.set 'views', 'app/views'
app.set 'view engine', 'jade'

app.use express.logger 'dev'
app.use coffeescript { src:__dirname + '/public', bare: true } 
app.use stylus.middleware {  src:__dirname + '/public' , compile:compile } 
app.use express.static __dirname + '/public' 

app.get '/', (req, res)->
  res.render 'index', 
    title : 'home'

app.listen 3000, ->
  console.log 'APP listening on port 3000'


compile = (str, path) ->
  return stylus(str)
    .set('filename', path)
    .use(nib());