$ ->
  $('#pins').imagesLoaded ->
    $('#pins').masonry
      itemSelector: '.pin'
      isFitWidth: true

grid = document.querySelector('.grid')
msnry = new Masonry(grid,
  itemSelector: '.grid-item'
  columnWidth: 100)

$ ->
  $('#masonry-container').imagesLoaded ->
    $('#masonry-container').masonry
      itemSelector: '.box'
      isFitWidth: true
$ ->
  if $('.pagination').length && $('#posts').length
    $(window).scroll ->
      url = $('.pagination .next_page').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 10
        $('.pagination').text("Cargando mas Blogs..")
        $.getScript(url)
    $(window).scroll()