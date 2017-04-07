---
title: Announcing Fine Beta Release
author: chessbyte
date: 2017-04-05 07:49:24 UTC
comments: true
published: true
tags: releases announcements
---

On behalf of the ManageIQ team, we're pleased to announce the Beta release for ManageIQ Fine!

Fine is the next milestone release for ManageIQ cloud and virtualization management platform. With each release, ManageIQ gets more robust and feature complete across providers. In this release, a lot of attention was given to Ansible. However, other providers, REST API, as well as performance also benefit in this release.

* Added **"Ansible Playbook"** to the list of catalog item types.
* Automate Model: Add Amazon block storage automation models.
* Adding new report and widgets for Containers and Add option for container performance reports.
* Add Alert Definitions (MiqAlert) bulk edits support.
* Middleware: Hawkular Allow adding datawarehouse provider with a port other than 80.

If you want to hear about features, improvements, and fixes directly from the developers, check out the [Last Week in ManageIQ blog posts](http://manageiq.org/blog/tags/LWIMIQ/).

Take a look at the [changelog](https://github.com/ManageIQ/manageiq/blob/fine/CHANGELOG.md/) for more details.

We encourage you to download the Fine Beta Release and try it out!

{% assign releasename = "Fine-1-Beta1" %}
{% assign releasetag = "fine-1-beta1" %}

| Appliance | Format | Size |
| --------- | ------ | ---- |
| <a href="https://hub.docker.com/r/manageiq/manageiq/" onClick="ga('send', 'event', { eventCategory: 'Appliance', eventAction: 'outbound', eventLabel: 'Docker {{releasename}}', transport: 'beacon' });">Docker (tag {{releasetag}})</a> | docker | 0.7 GB |
{% for type in site.data.download_types %} | <a href="http://releases.manageiq.org/manageiq-{{type.download_platform}}-{{releasetag}}.{{type.ext}}" onClick="ga('send', 'event', { eventCategory: 'Appliance', eventAction: 'download', eventLabel: '{{type.name}} {{releasename}}', transport: 'beacon' });">{{ type.name }}</a> | {{ type.download_platform }} | {{ type.size_pre }} |
{% endfor %} | <a href="https://atlas.hashicorp.com/manageiq/boxes/fine" onClick="ga('send', 'event', { eventCategory: 'Appliance', eventAction: 'outbound', eventLabel: 'Vagrant {{releasename}}', transport: 'beacon' });">Vagrant</a> | vagrant | 1.1 GB |


If you encounter any issues/bugs, please report them on [GitHub](https://github.com/ManageIQ/manageiq/issues). You can also join our [discussion forum](http://talk.manageiq.org/) if you have questions or need more support. Remember to use the ["Support"](http://talk.manageiq.org/c/support) category.
