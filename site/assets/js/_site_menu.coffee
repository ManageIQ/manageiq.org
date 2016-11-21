$(document).ready ->
  $('[data-behavior="off_canvas-toggle"]').on 'click', ->
    $('body').toggleClass('off_canvas-visible')
