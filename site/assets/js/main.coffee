---
---

@miq ||= {
  ui: {}
}

miq.select = (selector = "body") ->
  document.querySelector(selector)

miq.selectAll = (selector = "body") ->
  document.querySelectorAll(selector)

{% include_relative _header.coffee %}
{% include_relative _site_menu.coffee %}
{% include_relative _doc_menu.coffee %}
{% include_relative _lightbox.coffee %}
{% include_relative _theme.coffee %}
