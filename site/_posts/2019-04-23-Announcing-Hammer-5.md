---
title: Announcing Hammer-5
author: jprause
date: 2019-04-23 08:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Hammer-5. This release contains bug fixes, UI tweaks, and stabilization.
Here are just a few of the things added since Hammer-4 release:

- ADDED
  * Alter ansible_playbook method so that some arguments are optional [(#18323)](https://github.com/ManageIQ/manageiq/pull/18323)
  * Tenancy for central admin [(#18263)](https://github.com/ManageIQ/manageiq/pull/18263)

- FIXED 
  * Preserve group and user when importing reports [(#18270)](https://github.com/ManageIQ/manageiq/pull/18270)
  * fix: swap makes vms out of disk space report false positive [(#18623)](https://github.com/ManageIQ/manageiq/pull/18623)
  * Rbac virtual attributes [(#18543)](https://github.com/ManageIQ/manageiq/pull/18543)

You can download the Hammer-5 release [here](http://manageiq.org/download/).

Here is the changelog:
[Hammer-5](https://github.com/ManageIQ/manageiq/blob/hammer/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
