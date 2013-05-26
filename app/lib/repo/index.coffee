app = module.exports = require('./../../config/mvc')(__dirname)


app.get '/repo/:id', (req,res) ->
  res.render 'repo', 
    title: 'Repo Profile'