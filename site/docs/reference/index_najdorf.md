---
layout: doc_page
title: User Reference
permalink: /docs/reference/najdorf/
doc_group: user
doc_branch: najdorf
---

## Installation

{% for item in site.data["menus"]["ref_menu_najdorf"]["installation"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Administration

{% for item in site.data["menus"]["ref_menu_najdorf"]["administration"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Authentication

{% for item in site.data["menus"]["ref_menu_najdorf"]["authentication"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Integration

{% for item in site.data["menus"]["ref_menu_najdorf"]["integration"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}


## Reference

{% for item in site.data["menus"]["ref_menu_najdorf"]["reference"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}
