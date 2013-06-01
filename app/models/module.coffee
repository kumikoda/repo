mongoose = require('mongoose')
Schema = mongoose.Schema
Review = mongoose 


# Review as sub document
reviewSchema = Schema
  user        : { type: Schema.Types.ObjectId, ref: 'User', required: true}
  title       : { type: String, required: true}
  text        : { type: String, required: true}

# Category as sub document
categorySchema = Schema
  name        : { type: String, required: true}
  description : { type: String, required: true}

# Module Schema
moduleSchema = Schema
  name        : { type: String, required: true}
  language    : { type: String, required: true}
  url         : { type: String, required: true}
  official    : { type: Boolean}
  
  categories : [categorySchema]
  reviews    : [reviewSchema]


moduleSchema.virtual('rating').get () ->
  return 3.5


mongoose.model('Module', moduleSchema)
mongoose.model('Review', reviewSchema)
mongoose.model('Category', categorySchema)
