app = module.exports = require('lib/config')()

mongoose = require 'mongoose'
User = mongoose.model('User')

app.post '/users', (req,res,next)->
  usr = new User(req.body.user)
  console.log req.body.user
  usr.save (err) ->
    if err
      console.log(err)
      req.flash('error', err.message)
      res.redirect('/')
    else 
      console.log('user: ' + usr.username + " saved.")
      next()