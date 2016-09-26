---
title: Capablanca-2 released
author: matthewd
date: 2016-01-13 01:40:25 UTC
tags: releases announcements
comments: true
published: true
---

The original [Capablanca-1 release](http://manageiq.org/blog/2015/12/manageiq-capablanca-azure-containers-self-service-ui/)
contains a number of bugs that have been reported to be breaking some
sections of the application.

Embarassingly for me, some of them had already been fixed in master, and
I'd missed them while selectively backporting to the release branch.

We've now built `capablanca-2`. It contains the following fixes:

 * [#5528: Fix local variable name](https://github.com/ManageIQ/manageiq/pull/5528)
 * [#5549: Fix scan snapshot creation for VMware](https://github.com/ManageIQ/manageiq/pull/5549)
 * [#5626: core: fix start\_event\_monitor logic](https://github.com/ManageIQ/manageiq/pull/5626)
 * [#5644: Do not add dummy none field for bs-select fields with multiple choices](https://github.com/ManageIQ/manageiq/pull/5644)
 * [#5714: Altered the console to set the canonical hostname rather than an alias](https://github.com/ManageIQ/manageiq/pull/5714)
 * [#5916: Fix issue where sort! was called on an ActiveRecord::Relation](https://github.com/ManageIQ/manageiq/pull/5916)

It also adds a definition for the new AWS t2.nano instance type ([#5942](https://github.com/ManageIQ/manageiq/pull/5942)).

Capablanca-2 is available now from [the download page](http://manageiq.org/download/).
Please continue to [report any issues on talk](http://talk.manageiq.org/).
