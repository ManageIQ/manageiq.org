---
layout: doc_page
title: User Reference
permalink: /docs/reference/oparin/
doc_group: user
doc_branch: oparin
---

## Installation

{% for item in site.data["menus"]["ref_menu_oparin"]["installation"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Administration

{% for item in site.data["menus"]["ref_menu_oparin"]["administration"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Authentication

{% for item in site.data["menus"]["ref_menu_oparin"]["authentication"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Integration

{% for item in site.data["menus"]["ref_menu_oparin"]["integration"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}


## Reference

{% for item in site.data["menus"]["ref_menu_oparin"]["reference"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}
