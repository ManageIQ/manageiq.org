---
layout: doc_page
title: User Reference
permalink: /docs/reference/petrosian/
doc_group: user
doc_branch: petrosian
---

## Installation

{% for item in site.data["menus"]["ref_menu_petrosian"]["installation"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Administration

{% for item in site.data["menus"]["ref_menu_petrosian"]["administration"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Authentication

{% for item in site.data["menus"]["ref_menu_petrosian"]["authentication"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Integration

{% for item in site.data["menus"]["ref_menu_petrosian"]["integration"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}


## Reference

{% for item in site.data["menus"]["ref_menu_petrosian"]["reference"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}
