---
title: "Last Week in ManageIQ: An Afresh Absence of Atomic Providers"
date: 2016-09-19
author: drew
tags: LWIMIQ
comments: true
published: true
---

Thanks for tuning in today for the topical Last Week in ManageIQ! Drew Uhlmann here with you to limn marked mint MIQ metamorphoses. 

## Analysis
In the past week [115 PRs][PRs merged last week] with [347 commits][Commits merged last week] were merged to master by 49 people (which could probably include you too! Simply peruse our [list of issues](https://github.com/ManageIQ/manageiq/issues), pick a particular, and produce a PR.)

## Augmented
A [chic change][1] was made to our rails bin/setup file, comprising of a command to clean logs/tmp. 

The [ability to pick a rigid retirement date and time] [2] rather than the antecedent ambiguous amount that appeared afore as date plus some additional amount of hours ("that specific day +- 23.5 hours") has been added.

Incorporation of [load balancer support to our existing Azure EMS refresh][3] implementation is in the process of being integrated. 

## Ameliorated
All of the [Cloud/Instance items now load neatly][4] as well as a [broken tree being tuned on the Automation/Customization tab][5] too. 

## Added
The addition of an arresting new bower package for angular validation that we’re applying to do [GUID validation for assorted Azure fields in the Cloud Provider screen][6] was accomplished.

Blueprints can now [be published][7]! 

Presently, [Azure] [8] and [Google] [9] include configuration for generic provisioning methods. 

## Abolished
We also now also have an [abatement of Atomic providers] [10]! ExtManagementSystem MiqWorker, MiqQueue and Authentication tables have been appended. 

## Abridgement 
Once again a cornucopia of changes to cover closely but feel free to [flip through them][PRs merged last week] as you await in agog anticipation another annal of Last Week in ManageIQ!

[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?utf8=%E2%9C%93&q=is%3Apr%20is%3Amerged%20base%3Amaster%20merged%3A%222016-09-11%20..%202016-09-17%22
[Commits merged last week]: https://github.com/manageiq/manageiq/compare/master@%7B2016-09-11%7D...@%7B2016-09-17%7D


[1]: https://github.com/ManageIQ/manageiq/pull/11196
[2]: https://github.com/ManageIQ/manageiq/pull/11156
[3]: https://github.com/ManageIQ/manageiq/pull/10918
[4]: https://github.com/ManageIQ/manageiq/pull/11278
[5]: https://github.com/ManageIQ/manageiq/pull/11276
[6]: https://github.com/ManageIQ/manageiq/pull/11167
[7]: https://github.com/ManageIQ/manageiq/pull/11230
[8]: https://github.com/ManageIQ/manageiq/pull/11200
[9]: https://github.com/ManageIQ/manageiq/pull/11149
[10]: https://github.com/ManageIQ/manageiq/pull/10647
