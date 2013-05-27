app = module.exports = require('lib/config')()

app.get '/home', (req,res) ->


  res.render 'home', 
    title: 'Home'