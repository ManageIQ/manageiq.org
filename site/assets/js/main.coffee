---
---

@miq ||= {
  ui: {}
}

miq.select = (selector = "body") ->
  document.querySelector(selector)

{% include_relative _header.coffee %}
{% include_relative _menu.coffee %}