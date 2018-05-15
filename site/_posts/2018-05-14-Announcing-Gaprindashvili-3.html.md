---
title: Announcing Gaprindashvili-3
author: jprause
date: 2018-05-14 08:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Gaprindashvili-3. This release contains bug fixes, UI tweaks, and stabilization.
Here are just a few of the things added since Gaprindashvili-2 release:

- ADDED
  * Add methods to extract v2v log from conversion host. [(#17333)](https://github.com/ManageIQ/manageiq/pull/17333)
  * Add call for bundled service children retirement [(#17317)](https://github.com/ManageIQ/manageiq/pull/17317)
  * Add support for exporting an importing service dialogs [(#17241)](https://github.com/ManageIQ/manageiq/pull/17241)

- FIXED 
  * Fix the issue of defined analyisis profile missed in vm scanning. [(#17331)](https://github.com/ManageIQ/manageiq/pull/17331)
  * Dialog field loading/refresh refactor to fix automate delays [(#17329)](https://github.com/ManageIQ/manageiq/pull/17329)
  * Change dialog import to only use auto_refresh if new triggers are blank [(#17363)](https://github.com/ManageIQ/manageiq/pull/17363)
  * Clean up queued items on Zone#destroy [(#17374)](https://github.com/ManageIQ/manageiq/pull/17374)
  * Add Openstack Cinder EventCatcher worker [(#17351)](https://github.com/ManageIQ/manageiq/pull/17351)

You can download the Gaprindashvili-3 release [here](http://manageiq.org/download/).

Here is the complete changelog:
[Gaprindashvili-3](https://github.com/ManageIQ/manageiq/blob/gaprindashvili/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
