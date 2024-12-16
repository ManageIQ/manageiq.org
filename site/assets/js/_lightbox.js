// A super simple image zoom solution inspired by Dribbble

miq.LightboxImg = class LightboxImg {
  constructor(elem) {
    this.element = $(elem);
    this.bindEvents();
  }

  bindEvents() {
    this.element.on('click', function() {
      miq.lightbox.display(this.src, this.alt);
    });
  }
};

miq.Lightbox = class Lightbox {
  constructor(boxDiv) {
    this.bindEvents = this.bindEvents.bind(this);
    this.box = $(boxDiv);

    this.title = this.box.find('.lightbox-title');
    this.titleText = "Enlarged Image";

    this.closeBtn = this.box.find('.lightbox-close');
    this.image = this.box.find('.lightbox-image > img');

    this.bindEvents();
  }

  display(imgSrc, text) {
    if (text == null) { text = ''; }
    this.image.attr('src', imgSrc);

    if (text.length > 0) {
      this.title.text(text);
    }

    // set body to no-scroll
    $('body').addClass('js-no_scroll');

    // reset zoom
    $('.lightbox-image').removeClass('lightbox-full');

    // set class of container
    this.box.addClass('js-display');
  }

  close() {
    this.box.removeClass('js-display');
    $('body').removeClass('js-no_scroll');
  }

  bindEvents() {
    this.closeBtn.on('click', () => {
      this.close();
    });

    this.box.on('click', e => {
      this.close();
    });

    this.image.on('click', function(e) {
      e.stopPropagation();
      $('.lightbox-image').toggleClass('lightbox-full');
    });
  }
};

$(document).ready(function() {
  miq.boxImgs = [];
  for (var elem of $('.large_img')) { miq.boxImgs.push(new miq.LightboxImg(elem)); }

  miq.lightbox = new miq.Lightbox('#lightbox');
});
