mongoose = require('mongoose')
Schema = mongoose.Schema

# Repo Schema

schema = Schema
  name    : { type: String, required: true}
  _owner  : { type: Schema.Types.ObjectId, ref: 'User' }
  title   : { type: String, required: true}
  text    : { type: String, required: true}


module.exports = mongoose.model('Reviews', schema)