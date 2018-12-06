$ ->
  $('#mason').imagesLoaded ->
    $('#mason').masonry
      itemSelector: '.box'
      columnWidth: 200
      isFitWidth: true
