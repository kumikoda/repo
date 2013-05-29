mongoose = require('mongoose')
Schema = mongoose.Schema

# Repo Schema

moduleSchema = Schema
  name        : { type: String, required: true}
  language    : { type: String, required: true}
  url         : { type: String, required: true}

  official    : { type: Boolean}
  
  categories  : [{ type: String }]
  reviews     : [{ type: Schema.Types.ObjectId, ref: 'Review' }]



module.exports = mongoose.model('Module', moduleSchema)