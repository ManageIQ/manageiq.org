---
layout: doc_page
title: User Reference
permalink: /docs/reference/euwe/
doc_group: user
doc_branch: euwe
---

## Installation

{% for item in site.data["menus"]["ref_menu_euwe"]["installation"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Administration

{% for item in site.data["menus"]["ref_menu_euwe"]["administration"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Authentication

{% for item in site.data["menus"]["ref_menu_euwe"]["authentication"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Integration

{% for item in site.data["menus"]["ref_menu_euwe"]["integration"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}


## Reference

{% for item in site.data["menus"]["ref_menu_euwe"]["reference"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}
