---
title: Announcing Gaprindashvili-6
author: jprause
date: 2018-11-02 08:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Gaprindashvili-6. This release contains security and bug fixes, UI tweaks, and stabilization.
Here are just a few of the things added since Gaprindashvili-5 release:

- ADDED
  * Add possibility to group by date only in chargeback [(#17893)](https://github.com/ManageIQ/manageiq/pull/17893)
  * Add log messages to Chargeback [(#17874)](https://github.com/ManageIQ/manageiq/pull/17874)
  * Add tenant filtering for templates in provisioning and summary pages [(#17851)](https://github.com/ManageIQ/manageiq/pull/17851)

- FIXED 
  * Maintenance must run VACUUM to avoid long held locks [(#17713)](https://github.com/ManageIQ/manageiq/pull/17713)
  * Fix metering report for resources without rollups [(#17836)](https://github.com/ManageIQ/manageiq/pull/17836)
  * Hide the password values in the log messages. [(#18028)](https://github.com/ManageIQ/manageiq/pull/18028)

You can download the Gaprindashvili-6 release [here](http://manageiq.org/download/).

Here is the complete changelog:
[Gaprindashvili-6](https://github.com/ManageIQ/manageiq/blob/gaprindashvili/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
