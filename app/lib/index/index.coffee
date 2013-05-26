app = module.exports = require('./../../config/mvc')(__dirname)

# Routes
app.get '/', (req,res) ->
  res.render 'index', 
    title: 'Home'