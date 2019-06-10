---
title: Announcing Hammer-7
author: jprause
date: 2019-06-10 08:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Hammer-7. This release contains bug fixes, UI tweaks, and stabilization.
Here are just a few of the things added since Hammer-6 release:

- ADDED
  * [V2V] Have ConversionHost explicitly search authentications for auth type

- FIXED 
  * Doesn't count with selection of belongsto filter if any object doesn't exist in the filter sentence
  * Allow ssh auth for RHV
  * [V2V] Add default credentials to ansible_playbook method

You can download the Hammer-7 release [here](http://manageiq.org/download/).

Here is the changelog:
[Hammer-7](https://github.com/ManageIQ/manageiq/blob/hammer/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
