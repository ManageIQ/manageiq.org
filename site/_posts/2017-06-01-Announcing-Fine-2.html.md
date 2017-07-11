---
title: Announcing Fine-2
author: jprause
date: 2017-06-01 08:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Fine-2. This release contains bug fixes, UI tweaks, and stabilization.

Here are just a few of the things added since Fine-1 release:
- ADDED
  * REST API: Enable custom actions for Vms API

- FIXED 
  * Ansible: Make device path mandatory for EBS attachments
  * RBAC: Need to gsub occurrences of {% raw %}{{ }}{% endraw %} in the output
  * Platform: Ensure order is qualified by table name for rss feeds
  * Ansible Tower: Encrypt secrets before enqueue Tower CU operations

You can download Fine-2 [here](http://manageiq.org/download/).

Here is the complete changelog:
[Fine-2](https://github.com/ManageIQ/manageiq/blob/fine/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
