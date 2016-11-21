---
title: Last week in ManageIQ – Euwe stabilization continues
author: Laura
date: 2016-11-21
comments: true
published: true
tags: LWIMIQ
---

Hi! This is [Laura](https://github.com/lgalis) with some highlights of our Last Week in ManageIQ.

## Featured

The stabilization of the upcoming Euwe release was the main focus for us last week. There were 108 [PRs] merged this week, containing 226 [commits] by 52 [contributors].

If you would like to contribute, you can choose from our list of [open issues].

Sprint 49 ended on Monday, November 14th, you can read all about it [here](http://manageiq.org/blog/2016/11/sprint-49-review-november-16-2016/). The sprint review meeting has been recorded, as always, and can be found [here](https://www.youtube.com/watch?v=Y4dU1fmRgX4).


## Improved
The [replication exclude settings](https://github.com/ManageIQ/manageiq/pull/12592) were moved out of the global settings and instead read and write directly to the pglogical configuration in the database, decoupling them from the server record.

There is now an option to hide resources in the REST API - one can use this to improve performance when only the count or subcount is needed from the query. [Tim](https://github.com/imtayadeway) has done this work [here](https://github.com/ManageIQ/manageiq/pull/12694)

A middleware server running in domain mode now has different set operations than the normal standalone server available in the toolbar - [PR](https://github.com/ManageIQ/manageiq/pull/12557) by [Jirka Kremser](https://github.com/Jiri-Kremser)


## Fixed
There were 69 bugs fixed this week, [here](https://github.com/ManageIQ/manageiq/pulls?utf8=%E2%9C%93&q=is%3Apr%20is%3Amerged%20base%3Amaster%20merged%3A%222016-11-14%20..%202016-11-20%22%20sort%3Acomments-desc%20bug%20) is the entire list.

The repository directory for Git based domains in Automate is now removed when a domain is being deleted. [Madhu](https://github.com/mkanoor) made this change [here](https://github.com/ManageIQ/manageiq/pull/12539)

[Libor](https://github.com/lpichler) fixed the calculation of average for used metrics in this [PR](https://github.com/ManageIQ/manageiq/pull/12582), by using the number of hours in the period instead of count of metric rollup records.

[Drew](https://github.com/syncrou) reworked the way parameters are passed into a Schedule Automate Job. See what was changed [here](https://github.com/ManageIQ/manageiq/pull/12345).


## New
The Gnocchi service for Openstack metrics was added by [Marek](https://github.com/aufi) in this [PR](https://github.com/ManageIQ/manageiq/pull/12396), in order to support metrics in OSP10.

Dynamic dropdown list support was added by [Gregor](https://github.com/gberginc) for the orchestration service dialog in this [PR](https://github.com/ManageIQ/manageiq/pull/12693). This allows the VMware vCloud provider to create dropdowns for the available networks for each VM that is part of the vApp template.


## Deleted
[Simon](https://github.com/isimluk) and [Martin](https://github.com/martinpovolny) were busy refactoring and deleting code - as can be seen in some of their PRs [here](https://github.com/ManageIQ/manageiq/pull/12680) and
 [here](https://github.com/ManageIQ/manageiq/pull/12639), where Martin deleted a good number of lines by using an existing mixin.


## Wrapping up
This was just a synopsis of last week in ManageIQ, check out our full list of merged [PRs] for a more complete picture.

Thanks for joining us for another edition of LWIMIQ. Have a great week!

[open issues]: https://github.com/ManageIQ/manageiq/issues
[contributors]: https://github.com/ManageIQ/manageiq/graphs/contributors
[PRs]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-11-14+..+2016-11-20%22+sort%3Acreated-desc&utf8=%E2%9C%93
[commits]: https://github.com/manageiq/manageiq/compare/master@%7B2016-11-14%7D...@%7B2016-11-20%7D
