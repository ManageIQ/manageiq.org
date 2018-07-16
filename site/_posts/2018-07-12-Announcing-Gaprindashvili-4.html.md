---
title: Announcing Gaprindashvili-4
author: jprause
date: 2018-07-12 08:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Gaprindashvili-4. This release contains bug fixes, UI tweaks, and stabilization.
Here are just a few of the things added since Gaprindashvili-3 release:

- ADDED
  * Introduce support for multi-tab orchestration dialogs [(#17342)](https://github.com/ManageIQ/manageiq/pull/17342)
  * Support for hidden columns in reports and views [(#17133)](https://github.com/ManageIQ/manageiq/pull/17133)
  * Add V2V plugin for migration of VMs between different providers [(#17529)](https://github.com/ManageIQ/manageiq/pull/17529)

- FIXED 
  * Add cloud volumes for selecting assigned tagged resources [(#17271)](https://github.com/ManageIQ/manageiq/pull/17271)
  * Avoid duplicate host load in allowed_hosts_obj [(#17402)](https://github.com/ManageIQ/manageiq/pull/17402)
  * Filter relevant fields also according to chargeback class in Chargeback [(#17414)](https://github.com/ManageIQ/manageiq/pull/17414)
  * Change reconfigure setup to include values configured with originally [(#17647)](https://github.com/ManageIQ/manageiq/pull/17647)
  * Adjust how default_value is calculated for multi-select drop downs [(#17449)](https://github.com/ManageIQ/manageiq/pull/17449)

You can download the Gaprindashvili-4 release [here](http://manageiq.org/download/).

Here is the complete changelog:
[Gaprindashvili-4](https://github.com/ManageIQ/manageiq/blob/gaprindashvili/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
