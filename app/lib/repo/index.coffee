app = module.exports = require('./../../config/mvc')(__dirname)


app.get '/repo/:id', (req,res) ->

  reviews = [
    
      user:
        name: 'kumikoda'
      story:
        title : "jade is fucking awesome"
        story : "it really is mvc express im not sure if i am doing it the right way"
    ,
    
      user:
        name: 'kumikoda'
      story:
        title : "jade is fucking awesome"
        story : "it really is mvc express im not sure if i am doing it the right way"
    ,
    
      user:
        name: 'kumikoda'
      story:
        title : "jade is fucking awesome"
        story : "it really is mvc express im not sure if i am doing it the right way"

    ,
    
      user:
        name: 'kumikoda'
      story:
        title : "jade is fucking awesome"
        story : "it really is mvc express im not sure if i am doing it the right way"


    
  ] 


  res.render 'repo', 
    title: 'Repo Profile'
    reviews: reviews