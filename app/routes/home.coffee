app = module.exports = require('lib/config')()
ensureAuthenticated = app.get 'ensureAuthenticated'

app.get '/home', ensureAuthenticated, (req,res) ->
  
  res.render 'home', 
    title: 'Home'
    user: req.user