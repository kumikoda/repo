app = module.exports = require('lib/config')()
passport = require 'passport'
mongoose = require 'mongoose'
User = mongoose.model('User')

app.post '/users', (req, res, next) ->
  usr = new User req.body.user
  console.log usr
  usr.save (err) ->
    if err
      console.log(err)
      req.flash('error', err.message)
      res.redirect('/')
    else 
      console.log('user: ' + usr.name + " saved.")
      req.logIn usr, (err) ->
        if err 
          return next(err)
        res.redirect('/account')

app.post '/user/login', (req, res, next) ->
  passport.authenticate('local', (err, user, info) ->
    if err
      console.log 'login err'
      return next(err) 
    if !user
      console.log 'user not found'
      req.session.messages =  [info.message]
      return res.redirect('/')
    
    req.logIn(user, (err) ->
      if err
         return next(err) 
      return res.redirect('/home')
    )
  )(req, res, next) 
      
    
  