---
title: Announcing Hammer-4
author: jprause
date: 2019-03-29 08:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Hammer-4. This release contains bug fixes, UI tweaks, and stabilization.
Here are just a few of the things added since Hammer-3 release:

- ADDED
  * [V2V] Add default setting for CPU and network limits per conversion host and max concurrent tasks per EMS [(#18528)](https://github.com/ManageIQ/manageiq/pull/18528)
  * v2v Throttling [(#18415)](https://github.com/ManageIQ/manageiq/pull/18415)

- FIXED 
  * Fix the dynamic service task naming generation for subclasses [(#18511)](https://github.com/ManageIQ/manageiq/pull/18511) 
  * Fix for inability to see dialog details passed to catalog after upgrade from 5.9.4 to 5.9.6 [(#18469)](https://github.com/ManageIQ/manageiq/pull/18469)
  * [V2V] Fix ConversionHost active_tasks method to use state == 'migrate' [(#18570)](https://github.com/ManageIQ/manageiq/pull/18570)

You can download the Hammer-4 release [here](http://manageiq.org/download/).

Here is the changelog:
[Hammer-4](https://github.com/ManageIQ/manageiq/blob/hammer/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
