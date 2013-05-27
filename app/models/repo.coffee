mongoose = require('mongoose')
Schema = mongoose.Schema

# Repo Schema

schema = Schema
  name      : { type: String, required: true}
  category  : { type: String, required: true}
  


module.exports = mongoose.model('Repo', schema)