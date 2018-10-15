$ ->
  $('#pins').imagesLoaded ->
    $('#pins').masonry
      itemSelector: '.pin'
      isFitWidth: true
$ ->
  if $('.pagination').length && $('#posts').length
    $(window).scroll ->
      url = $('.pagination .next_page').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 10
        $('.pagination').text("Cargando mas Blogs..")
        $.getScript(url)
    $(window).scroll()