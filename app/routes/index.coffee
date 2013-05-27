app = module.exports = require('lib/config')()

passport = require('passport')
LocalStrategy = require('passport-local').Strategy

# Routes
app.get '/', (req,res) ->
  res.render 'index', 
    title: 'Repo'


app.get '/users', (req,res) ->
  res.redirect '/home'

