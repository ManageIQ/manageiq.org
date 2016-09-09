# Header animation

miq.header = miq.select(".site-header")
miq.triad  = miq.select(".triad")
miq.title  = miq.select(".banner h1")

miq.last_scroll_y = -1
miq.ticking = false

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
  offset_pos  = miq.header.offsetHeight
  start_pos   = miq.title.offsetTop - offset_pos
  stop_pos    = (miq.triad.offsetTop + miq.triad.offsetHeight) - offset_pos
  pos_diff    = (stop_pos - start_pos) / 1.8

  if @last_scroll_y > start_pos && @last_scroll_y < stop_pos
    opac = @last_scroll_y / pos_diff
  else if @last_scroll_y < start_pos
    opac = 0
  else if @last_scroll_y > stop_pos
    opac = 1

  start_values = [6, 52, 81, opac]
  end_values   = [12, 105, 165, opac]

  start_color = "rgba(#{start_values.join()})"
  end_color   = "rgba(#{end_values.join()})"

  miq.header.style.backgroundImage = "linear-gradient(to right, #{start_color} 0, #{end_color} 100%)"


window.addEventListener "scroll", miq.on_scroll

document.addEventListener "DOMContentLoaded", ->
  miq.last_scroll_y = window.scrollY
