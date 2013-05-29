mongoose = require('mongoose')
Schema = mongoose.Schema

# Repo Schema

moduleSchema = Schema
  name        : { type: String, required: true}
  language    : { type: String, required: true}
  url         : { type: String, required: true}

  official    : { type: Boolean}
  
  categories : [{ type: Schema.Types.ObjectId, ref: 'Review' }]
  reviews    : [{ type: Schema.Types.ObjectId, ref: 'Review' }]


moduleSchema.virtual('rating').get () ->
  return 3.5


module.exports = mongoose.model('Module', moduleSchema)