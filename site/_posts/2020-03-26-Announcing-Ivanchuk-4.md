---
title: Announcing Ivanchuk-4
author: mfeifer
date: 2020-03-26 19:12:13 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Ivanchuk-4. This release contains bug fixes, UI tweaks, and stabilization.
Here are just a few of the things added since the Ivanchuk-4 release:

### Added
* [V2V] Remove removing_snapshots state [(#19374)](https://github.com/ManageIQ/manageiq/pull/19374)
* [V2V] Pin InfraConversionJob to first server where it runs [(#19416)](https://github.com/ManageIQ/manageiq/pull/19416)
* [V2V] Add VM validation for warm migration eligibility and updated specs to deal with warm migration [(#19401)](https://github.com/ManageIQ/manageiq/pull/19401)
* Use a single query to get count of active VMs and Hosts [(#19835)](https://github.com/ManageIQ/manageiq/pull/19835)

### Fixed
* [V2V] Remove handover from shutdown_vm transition [(#19371)](https://github.com/ManageIQ/manageiq/pull/19371)
* [V2V] Extend InfraConversionJob timeout [(#19373)](https://github.com/ManageIQ/manageiq/pull/19373)
* [V2V] Fix progress percentage calculation [(#19375)](https://github.com/ManageIQ/manageiq/pull/19375)

You can download the Ivanchuk-4 release [here](http://manageiq.org/download/).

Here is the changelog:
[Ivanchuk-4](https://github.com/ManageIQ/manageiq/blob/ivanchuk/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
