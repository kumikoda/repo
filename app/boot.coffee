# Bootstrap the database
mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/test');

Repo = mongoose.model('Repo')
Review = mongoose.model('Review')
User = mongoose.model('User')


user = new User
  name: "kumikoda"
  

repo = new Repo
  name : 'Express'
  categories : [
    'web framework'
    'web development'
    'node'
  ]

logError = (err) ->
  if err
    console.log err

repo.save logError

review1 = new Review
  user:
    name: 'kumikoda'
  story:
    title : "jade is fucking awesome"
    text : "Absolutely hands down one of the best restaurant experiences I've ever had.  I went tonight to celebrate my graduation with a few friends and my mother. We were greeted with celebratory champagne and enjoyed some lovely amuse bouche before our dinner which gave our meal an extra special touch. The smoked trout was out of this world. There are no words for the melt in your mouth deliciousness that was this dish.  My pork belly entree was delicious.. The real winners, however,  came from the dessert... the peanut butter semifreddo paired with a Blanton's neat was a fantastic way to end the evening. "

review2 = new Review
  user:
    name: 'eventhough'
  story:
    title : "jade is fucking awesome"
    text : "Absolutely hands down one of the best restaurant experiences I've ever had.  I went tonight to celebrate my graduation with a few friends and my mother. We were greeted with celebratory champagne and enjoyed some lovely amuse bouche before our dinner which gave our meal an extra special touch. The smoked trout was out of this world. There are no words for the melt in your mouth deliciousness that was this dish.  My pork belly entree was delicious.. The real winners, however,  came from the dessert... the peanut butter semifreddo paired with a Blanton's neat was a fantastic way to end the evening. "

review3 = new Review
  user:
    name: 'kumikoda'
  story:
    title : "jade is fucking awesome"
    text : "Absolutely hands down one of the best restaurant experiences I've ever had.  I went tonight to celebrate my graduation with a few friends and my mother. We were greeted with celebratory champagne and enjoyed some lovely amuse bouche before our dinner which gave our meal an extra special touch. The smoked trout was out of this world. There are no words for the melt in your mouth deliciousness that was this dish.  My pork belly entree was delicious.. The real winners, however,  came from the dessert... the peanut butter semifreddo paired with a Blanton's neat was a fantastic way to end the evening. "

review1.save logError
review2.save logError
review3.save logError