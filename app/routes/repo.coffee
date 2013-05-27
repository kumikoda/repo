app = module.exports = require('lib/config')()

app.get '/repo/:id', (req,res) ->

  res.render 'repo', 
    title: 'Repo Profile'
    reviews: []