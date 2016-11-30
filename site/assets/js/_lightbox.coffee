# A super simple image zoom solution inspired by Dribbble

@miq ||= {}

class miq.LightboxImg
  constructor: (elem) ->
    @element = $(elem)
    @bindEvents()

  bindEvents: ->
    @element.on 'click', ->
      miq.lightbox.display(@.src, @.alt)

class miq.Lightbox
  constructor: (boxDiv) ->
    @box = $(boxDiv)

    @title = @box.find('.lightbox-title')
    @titleText = "Enlarged Image"

    @closeBtn = @box.find('.lightbox-close')
    @image = @box.find('.lightbox-image > img')

    @bindEvents()

  display: (imgSrc, text = '') ->
    @image.attr('src', imgSrc)

    if text.length > 0
      @title.text(text)

    # set body to no-scroll
    $('body').addClass('js-no_scroll')

    # reset zoom
    $('.lightbox-image').removeClass('lightbox-full')

    # set class of container
    @box.addClass('js-display')

  close: ->
    @box.removeClass('js-display')
    $('body').removeClass('js-no_scroll')

  bindEvents: =>
    @closeBtn.on 'click', =>
      @close()

    @box.on 'click', (e) =>
      @close()

    @image.on 'click', (e) ->
      e.stopPropagation()
      $('.lightbox-image').toggleClass('lightbox-full')

$(document).ready ->
  miq.boxImgs = []
  miq.boxImgs.push(new miq.LightboxImg(elem)) for elem in $('.large_img')

  miq.lightbox = new miq.Lightbox('#lightbox')
