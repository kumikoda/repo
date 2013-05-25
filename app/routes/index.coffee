# Since this is a simple webserver, we have really simple routes

express = require 'express'
app = module.exports = express()

app.set 'views', __dirname + '/../views'

# Routes
app.get '/', (req,res) ->
  res.render 'index', 
    title: 'Home'

app.get '/account', (req,res) ->
  res.render 'account',
    title: 'Account'

app.get '/signup', (req,res) ->
  res.render 'signup',
    title: 'Signup'

app.get '/user/:id', (req,res) ->
  res.render 'user', 
    title: 'User Profile'

app.get '/repo/:id', (req,res) ->
  res.render 'repo', 
    title: 'Repo Profile'