---
layout: doc_page
title: User Reference
permalink: /docs/reference/spassky/
doc_group: user
doc_branch: spassky
---

## Installation

{% for item in site.data["menus"]["ref_menu_spassky"]["installation"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Administration

{% for item in site.data["menus"]["ref_menu_spassky"]["administration"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Integration

{% for item in site.data["menus"]["ref_menu_spassky"]["integration"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Reference

{% for item in site.data["menus"]["ref_menu_spassky"]["reference"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}
