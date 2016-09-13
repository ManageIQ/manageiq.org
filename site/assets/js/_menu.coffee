# Menu

# Open items below clicked element
miq.open_menu = ->
  $(".menu-open").each (i, elem) ->
    $(elem).attr("class", "menu-parent")

  $(@).parents("li").each (i, elem) ->
    $(elem).addClass("menu-open")

# Open all down to active link
miq.open_active = ->
  $("li.active").parents("li").each (i, elem) ->
    $(elem).addClass("menu-open")

  if $("li.active").find("ul").length > 0
    console.log 'kids!'

$(document).ready ->
  if $(".menu-parent").length > 0
    miq.open_active()

    miq.menu_headings = $(".menu-parent")

    miq.menu_headings.each (i, item) ->
      $(item).find("a").on "click", miq.open_menu
