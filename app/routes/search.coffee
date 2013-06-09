app = module.exports = require('lib/config')()
ensureAuthenticated = app.get 'ensureAuthenticated'

mongoose = require 'mongoose'
Module = mongoose.model 'Module'


app.get '/search', (req,res) ->
  query = req.query.query 
  Module.find().or([{tags: query}, {name:query}]).exec (err, modules)->
    res.render 'search', 
      title: 'Search'
      user: req.user
      modules : modules