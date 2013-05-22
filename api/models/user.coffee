mongoose = require('mongoose')
Schema = mongoose.Schema

# User Schema

schema = Schema
  name    : { type: String, required: true}


module.exports = mongoose.model('User', schema)