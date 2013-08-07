app = module.exports = require('lib/config')()
ensureAuthenticated = app.get 'ensureAuthenticated'

app.get '/account', ensureAuthenticated, (req,res) ->
  
  res.render 'account', 
    title: 'Account'
    user: req.user

app.get '/login', (req,res)->
  res.render 'Login', 
    title: 'Login'

app.get '/signup', (req, res)->
  res.render 'signup',
    title: 'Sign Up'