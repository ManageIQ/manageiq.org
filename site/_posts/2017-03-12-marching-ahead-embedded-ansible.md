---
title: "Last Week in ManageIQ: March-ing ahead with the embedded Ansible integration"
author: lgalis
date: 2017-03-12 21:33:30 -04:00
comments: true
published: true
tags: LWIMIQ
---

[Laura](https://github.com/lgalis) here bringing you this week's edition of Last Week in ManageIQ!

## Featured
A busy week again with a lot of progress towards our embedded Ansible Tower features, along with refactoring of existing code, as we move closer to the 
development complete milestone for our Fine release. Last week, there were 293 commits in 184 PRs across our combined repositories: 
 - 73 PRs in the [manageiq][manageiq PRs merged] repo
 - 84 in the [manageiq-ui-classic][manageiq-ui-classic PRs merged] repo
 - 17 in the [manageiq-ui-service][manageiq-ui-service PRs merged] repo 
with the rest in the various providers' repos.
 
 
## Improved

In this [PR](https://github.com/ManageIQ/manageiq/pull/14239), [Jason](https://github.com/Fryguy) moved dynamic method building into DrbRemoteInvoker,
allowing it to run in the launched automate ruby process directly and not over DRb, preventing random DRb thread issues.

The event collection for the datawarehouse provider now has field to event streams to keep track of the ext_management_system that carried the event in,  
as added by [Mooli](https://github.com/moolitayer) [here](https://github.com/ManageIQ/manageiq/pull/12773).

In the Service UI, RBAC is now enabled on [Orchestration Templates](https://github.com/ManageIQ/manageiq-ui-service/pull/576)

The classic UI toolbar refactoring is moving along with lots of PRs merged, the full list can be found [here](https://github.com/ManageIQ/manageiq/issues/6259).


## Fixed

[JoeR](https://github.com/jrafanie) fixed a failure that would occur after starting new puma workers and try to gracefully restart apache.
In his [PR](https://github.com/ManageIQ/manageiq/pull/14007), Apache is configured to boot the ports puma workers are bound to (from STARTING_PORT to the maximum worker count 
port 3000 to 3009 if max worker count is 10) as balancer members.

[Libor](https://github.com/lpichler) created a fix in this [PR](https://github.com/ManageIQ/manageiq/pull/14229) to allow regex for a
MiqExpression::Field containing numbers in associations.

## New

[Rails 5.0.2.](https://github.com/ManageIQ/manageiq/pull/14175) is now supported.

Check out [Ladas'](https://github.com/ladas) Target and Target Collections abstractions [here](https://github.com/ManageIQ/manageiq/pull/14249).

The Embedded Ansible model is now being used when retrieving [credentials](https://github.com/ManageIQ/manageiq-ui-classic/pull/627) 
or [repositories](https://github.com/ManageIQ/manageiq-ui-classic/pull/659) for catalog items, as well as [list pages](https://github.com/ManageIQ/manageiq-ui-classic/pull/584).

With this new [PR](https://github.com/ManageIQ/manageiq/pull/14225) from [Bill](https://github.com/bzwei) - the Ansible Play data, including start time and finish time, is collected during a Job run. 
The credentials are associated with the job during a [sync](https://github.com/ManageIQ/manageiq/pull/14113).

Associated resources can now be removed as part of the service retirement, with [this UI option](https://github.com/ManageIQ/manageiq-ui-classic/pull/629) added by [Harpreet]( https://github.com/h-kataria). 

The UI for the physical infrastructure is now available, added by [Julian](https://github.com/juliancheal) in this [PR](https://github.com/ManageIQ/manageiq-ui-classic/pull/196). 

For the REST API, [Daniel](https://github.com/dkorn) added [REST API](https://github.com/ManageIQ/manageiq/pull/13967) support for Alert Definitions (Miq Alert), while [Jillian](https://github.com/jntullo) 
added the read API for [configuration scripts](https://github.com/ManageIQ/manageiq/pull/14223) and access to the jobs on a [ServiceAnsiblePlaybook](https://github.com/ManageIQ/manageiq/pull/14248).


## Deleted

[Martin](https://github.com/martinpovolny) uses GenericShowMixin to unify and remove #show functionality from middeware controllers -[PR](https://github.com/ManageIQ/manageiq-ui-classic/pull/590)

In this first Title Refactoring [PR](https://github.com/ManageIQ/manageiq-ui-classic/pull/520), he also started the task 
of removing the case logic for setting the page title and moving the decision back to the controllers. 

## Wrapping up

This was just a small sample of what was accomplished this week. For more details (and demos) about the features we worked on this sprint, make sure to tune 
in to the sprint 56 review this week!


[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-06+..+2017-03-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-06+..+2017-03-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-06+..+2017-03-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-amazon PRs merged]: https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-06+..+2017-03-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-azure PRs merged]: https://github.com/ManageIQ/manageiq-providers-azure/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-06+..+2017-03-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-vmware PRs merged]: https://github.com/ManageIQ/manageiq-providers-vmware/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-06+..+2017-03-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
