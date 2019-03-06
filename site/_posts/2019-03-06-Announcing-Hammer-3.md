---
title: Announcing Hammer-3
author: jprause
date: 2019-03-06 08:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Hammer-3. This release contains bug fixes, UI tweaks, and stabilization.
Here are just a few of the things added since Hammer-2 release:

- ADDED
  * Add empty IP address check to preflight check [(#18425)](https://github.com/ManageIQ/manageiq/pull/18425)

- FIXED 
  * Add check for existence of user for system_context [(#18437)](https://github.com/ManageIQ/manageiq/pull/18437)
  * Don't retire load balancers [(#18443)](https://github.com/ManageIQ/manageiq/pull/18443)
  * V2V - Collect virt-v2v PID from conversion host in kill_virtv2v [(#18372)](https://github.com/ManageIQ/manageiq/pull/18372)
  * Restore an event for the main app logs' disk usage [(#18340)](https://github.com/ManageIQ/manageiq/pull/18340) 

You can download the Hammer-3 release [here](http://manageiq.org/download/).

Here is the changelog:
[Hammer-3](https://github.com/ManageIQ/manageiq/blob/hammer/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
