var $allStars, $rating, $starsBefore, reset;

$rating = $('#rating');

$allStars = $('.stars.rater .star');

$starsBefore = function(n) {
  return $allStars.filter(function() {
    var $this;

    $this = $(this);
    return $this.data('star') <= n;
  });
};

reset = function() {
  $allStars.removeClass('selected gold icon-star');
  return $allStars.addClass('icon-star-empty');
};

$allStars.on('click', function(e) {
  var $stars, n;

  n = $(this).data('star');
  $stars = $starsBefore(n);
  $rating.val(n);
  reset();
  $stars.addClass('icon-star gold');
  return $stars.removeClass('icon-star-empty');
});
