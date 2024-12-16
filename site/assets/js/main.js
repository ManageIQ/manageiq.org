---
---

if (!window.miq) { window.miq = {
  ui: {}
}; }

miq.select = function(selector) {
  if (selector == null) { selector = "body"; }
  return document.querySelector(selector);
};

miq.selectAll = function(selector) {
  if (selector == null) { selector = "body"; }
  return document.querySelectorAll(selector);
};

{% include_relative _header.js %}
{% include_relative _site_menu.js %}
{% include_relative _doc_menu.js %}
{% include_relative _lightbox.js %}
{% include_relative _theme.js %}
