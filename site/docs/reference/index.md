---
layout: doc_page
title: User Reference
permalink: /docs/reference/
doc_group: user
doc_branch: latest
---

## Installing

{% for item in site.data["menus"]["ref_menu_latest"]["installing"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Administering

{% for item in site.data["menus"]["ref_menu_latest"]["administration"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Integrations

{% for item in site.data["menus"]["ref_menu_latest"]["integrations"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}

## Reference

{% for item in site.data["menus"]["ref_menu_latest"]["reference"]["children"] %}
### [{{item.title}}]({{item.path}})
{{item.desc}}

{% endfor %}
