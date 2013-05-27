mongoose = require('mongoose')
Schema = mongoose.Schema

# Repo Schema

repoSchema = Schema
  name      : { type: String, required: true}
  category  : { type: String, required: true}
  


module.exports = mongoose.model('Repo', repoSchema)