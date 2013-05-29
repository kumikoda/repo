app = module.exports = require('lib/config')()

app.get '/account', (req,res) ->

  res.render 'account', 
    title: 'Account'