app = module.exports = require('lib/config')()

passport = require('passport')
LocalStrategy = require('passport-local').Strategy

# Routes
app.get '/', (req,res) -> 
  console.log req.user
  res.render 'index', 
    title: 'Welcome'
    errors: req.flash('error')
    user : req.user



