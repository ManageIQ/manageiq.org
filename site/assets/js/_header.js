// Header animation

miq.setup_header_ani = function() {
  miq.header = miq.select(".site-header");
  miq.triad  = miq.select(".triad");
  miq.title  = miq.select(".banner h1");

  miq.fade_offset = miq.header.offsetHeight;
  miq.fade_start  = miq.fade_offset / 2; // Start fading a little lower than top
  miq.fade_stop   = (miq.triad.offsetTop + miq.triad.offsetHeight);
  miq.fade_diff   = (miq.fade_stop - miq.fade_start) / 1.8;

  miq.header_pad  = parseInt($(miq.header).css('padding-top'));
  miq.scale_start = miq.header.offsetHeight;
  miq.scale_stop  = miq.fade_stop;
  miq.scale_diff  = (miq.scale_stop - miq.fade_start) * 1.1;

  miq.last_scroll_y = -1;
};

miq.fade_header = function() {
  let opac;
  if ((miq.last_scroll_y > miq.fade_start) && (miq.last_scroll_y < miq.fade_stop)) {
    opac = miq.last_scroll_y / miq.fade_diff;
  } else if (miq.last_scroll_y < miq.fade_start) {
    opac = 0;
  } else if (miq.last_scroll_y > miq.fade_stop) {
    opac = 1;
  }

  const start_values = [6, 52, 81, opac];
  const end_values   = [12, 105, 165, opac];

  const start_color = `rgba(${start_values.join()})`;
  const end_color   = `rgba(${end_values.join()})`;

  miq.header.style.backgroundImage = `linear-gradient(to right, ${start_color} 0, ${end_color} 100%)`;
};

miq.scale_header = function() {
  // shrink padding by half

  let divider;
  if ((miq.last_scroll_y > miq.scale_start) && (miq.last_scroll_y < miq.scale_stop)) {
    divider = 1 + (miq.last_scroll_y / miq.scale_diff);
  } else if (miq.last_scroll_y < miq.scale_start) {
    divider = 1;
  } else if (miq.last_scroll_y > miq.scale_stop) {
    divider = 2;
  }

  const pad = miq.header_pad / divider;

  miq.header.style.paddingTop = `${pad}px`;
  miq.header.style.paddingBottom = `${pad}px`;
};

miq.on_scroll = () => miq.update_background();

miq.update_background = function() {
  if (miq.last_scroll_y === window.scrollY) {
    requestAnimationFrame(miq.update_background);
    return false;
  } else {
    miq.last_scroll_y = window.scrollY;
  }

  miq.animate_header();
  requestAnimationFrame(miq.update_background);
};

miq.animate_header = function() {
  miq.fade_header();
  miq.scale_header();
};


$(document).ready(function() {
  if ($(".triad").length > 0) {
    miq.setup_header_ani();
    miq.scale_header();
    window.addEventListener("scroll", miq.on_scroll);
  }
});
