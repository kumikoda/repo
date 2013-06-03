app = module.exports = require('lib/config')()
ensureAuthenticated = app.get 'ensureAuthenticated'

mongoose = require 'mongoose'
Module = mongoose.model 'Module'


app.get '/search', (req,res) ->
  Module.find (err, modules)->
    res.render 'search', 
      title: 'Search'
      user: req.user
      modules : modules