app = module.exports = require('lib/config')()
mongoose = require 'mongoose'
Module = mongoose.model 'Module'

app.get '/module/:name', (req,res) ->
  res.render 'module', 
    title: req.params.name
    reviews: []

app.get '/module', (req,res) ->
  res.render 'new_module',
    title: 'New Module'



app.post '/modules', (req,res) ->
  module = new Module req.body.module
  
  module.save (err) ->
    if err
      console.log(err)
      req.flash('error', err.message)
      res.redirect('/')
    else 
      console.log('module: ' + module.name + " saved.") 
      res.redirect('/module/'+module.name)