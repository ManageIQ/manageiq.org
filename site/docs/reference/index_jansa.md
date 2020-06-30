---
layout: doc_page
title: User Reference
permalink: /docs/reference/jansa/
doc_group: user
doc_branch: jansa
---

## Installation

{% for item in site.data["menus"]["ref_menu_jansa"]["installation"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Administration

{% for item in site.data["menus"]["ref_menu_jansa"]["administration"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Authentication

{% for item in site.data["menus"]["ref_menu_jansa"]["authentication"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Integration

{% for item in site.data["menus"]["ref_menu_jansa"]["integration"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}


## Reference

{% for item in site.data["menus"]["ref_menu_jansa"]["reference"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}
