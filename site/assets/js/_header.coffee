# Header animation

miq.setup_header_ani = ->
  miq.header = miq.select(".site-header")
  miq.triad  = miq.select(".triad")
  miq.title  = miq.select(".banner h1")

  miq.offset_pos  = miq.header.offsetHeight
  miq.start_pos   = miq.offset_pos / 2 # Start fading a little lower than top
  miq.stop_pos    = (miq.triad.offsetTop + miq.triad.offsetHeight)
  miq.pos_diff    = (miq.stop_pos - miq.start_pos) / 1.8

  miq.last_scroll_y = -1

miq.on_scroll = ->
  miq.update_background()

miq.update_background = ->
  if miq.last_scroll_y == window.scrollY
    requestAnimationFrame(miq.update_background)
    return false
  else
    miq.last_scroll_y = window.scrollY

  miq.animate_header()
  requestAnimationFrame(miq.update_background)

miq.animate_header = ->
  if miq.last_scroll_y > miq.start_pos && miq.last_scroll_y < miq.stop_pos
    opac = miq.last_scroll_y / miq.pos_diff
  else if miq.last_scroll_y < miq.start_pos
    opac = 0
  else if miq.last_scroll_y > miq.stop_pos
    opac = 1

  start_values = [6, 52, 81, opac]
  end_values   = [12, 105, 165, opac]

  start_color = "rgba(#{start_values.join()})"
  end_color   = "rgba(#{end_values.join()})"

  miq.header.style.backgroundImage = "linear-gradient(to right, #{start_color} 0, #{end_color} 100%)"


$(document).ready ->
  if $(".triad").length > 0
    miq.setup_header_ani()
    window.addEventListener "scroll", miq.on_scroll
