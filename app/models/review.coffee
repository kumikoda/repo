mongoose = require('mongoose')
Schema = mongoose.Schema

# Repo Schema

reviewSchema = Schema
  _module : { type: Schema.Types.ObjectId, ref: 'Module' }
  _owner  : { type: Schema.Types.ObjectId, ref: 'User' }
  title   : { type: String, required: true}
  text    : { type: String, required: true}


module.exports = mongoose.model('Review', reviewSchema)