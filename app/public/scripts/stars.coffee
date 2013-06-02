$rating = $('#rating')
$allStars = $('.stars.rater .star')

$starsBefore = (n) ->
  $allStars.filter ()->
    $this = $(this)
    $this.data('star') <= n

reset = () ->
  $allStars.removeClass 'selected gold icon-star' # remove all color from all stars
  $allStars.addClass 'icon-star-empty'  

  
$allStars.on 'click', (e)->
  n = $(this).data 'star'
  $stars = $starsBefore n
  $rating.val n

  reset()
  $stars.addClass 'icon-star gold'
  $stars.removeClass 'icon-star-empty'

