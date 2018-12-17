---
title: Announcing Gaprindashvili-7
author: jprause
date: 2018-12-17 08:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Gaprindashvili-7. This release contains security and bug fixes, UI tweaks, and stabilization.
Here are just a few of the things added since Gaprindashvili-6 release:

- ADDED
  * Add `virtual_has_one` for `transformation_mapping` for API accessibility [(#18070)](https://github.com/ManageIQ/manageiq/pull/18070)
  * Add subcollection options support for CORS preflight requests [(#495)](https://github.com/ManageIQ/manageiq-api/pull/495)
  * Expose folders to ems_folder service model. [(#256)](https://github.com/ManageIQ/manageiq-automation_engine/pull/256)

- FIXED 
  * Fixed MiqExpression evaluation on tagged Services [(#18020)](https://github.com/ManageIQ/manageiq/pull/18020)
  * Link service resources of bundled service correctly [(#18251)](https://github.com/ManageIQ/manageiq/pull/18251)
  * Allow to set retirement date for service via Centralized Administration [(#18137)](https://github.com/ManageIQ/manageiq/pull/18137)

You can download the Gaprindashvili-7 release [here](http://manageiq.org/download/).

Here is the changelog:
[Gaprindashvili-7](https://github.com/ManageIQ/manageiq/blob/gaprindashvili/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
