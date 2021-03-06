app = module.exports = require('lib/config')()
mongoose = require 'mongoose'
Module = mongoose.model 'Module'

app.get '/module/:name', (req,res) ->

  Module.findOne {name:req.params.name},  (err, module)->
    if err or !module 
      console.log(err)
      res.send(404)
    
    else
      res.render 'module', 
        title : module.name
        module : module
        user: req.user



app.get '/module', (req,res) ->
  res.render 'new_module',
    title: 'New Module'
    user: req.user

app.get '/modules', (req,res) ->
  console.log 'list all modules'
  res.render 'index',
    title: "List of modules"
    user: req.user


app.post '/modules', (req,res) ->
  module = new Module req.body.module
  
  # split the string by commas and remove leading and trailing spaces
  module.tags = module.tags.toString().split(',').map (tag)->
    tag.trim()
  
  module.save (err) ->
    if err
      console.log(err)
      req.flash('error', err.message)
      res.redirect('/module/')
    else 
      console.log('module: ' + module.name + " saved.") 
      res.redirect('/module/'+module.name)