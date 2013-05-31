app = module.exports = require('lib/config')()
mongoose = require 'mongoose'
Module = mongoose.model 'Module'

app.get '/module/:name', (req,res) ->
  Module.findOne {name:req.params.name},  (err, module)->
    if err or !module 
      console.log(err)
      res.send(404)
    
    else
      module.populate '_categories', '_reviews', ->
        res.render 'module', 
          title : module.name
          module : module

 

app.get '/module', (req,res) ->
  res.render 'new_module',
    title: 'New Module'

app.get '/modules', (req,res) ->
  console.log 'list all modules'
  res.render 'index'


app.post '/modules', (req,res) ->
  module = new Module req.body.module
  
  module.save (err) ->
    if err
      console.log(err)
      req.flash('error', err.message)
      res.redirect('/module/')
    else 
      console.log('module: ' + module.name + " saved.") 
      res.redirect('/module/'+module.name)