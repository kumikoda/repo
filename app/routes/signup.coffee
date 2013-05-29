app = module.exports = require('lib/config')()

passport = require('passport')
LocalStrategy = require('passport-local').Strategy

# Routes
app.get '/', (req,res) -> 
  res.render 'signup', 
    title: 'Welcome'
    message: req.flash('error')


