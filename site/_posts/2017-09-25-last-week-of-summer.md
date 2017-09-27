---
title: "Last Week in ManageIQ: Last week of summer ... "
author: lgalis
date: 2017-09-26
comments: true
published: true
tags: LWIMIQ
---


This last week of summer found the team back to work on our next release, following an engaging and productive all-hands engineering forum in New Jersey.  

Sprint 69 ended last week, check out the sprint review [slides](https://www.slideshare.net/ManageIQ/sprint-69) and [recording](https://www.youtube.com/watch?v=mQxj_2fNEaI&feature=youtu.be) for all the work completed during this sprint.


## Featured

Some statistics for last week:
  
31 PRs merged to the [manageiq][manageiq PRs merged] repository,

27 PRs merged to the [manageiq-ui-classic][manageiq-ui-classic PRs merged] repository,
          
25 PRs merged to the [manageiq-ui-service][manageiq-ui-service PRs merged] repository,

plus more across the providers' repositories.


## Improved

The Greenkeeper bot continues to create PRs to maintain up to date dependencies for the Service UI - see this week's list [here](https://github.com/ManageIQ/manageiq-ui-service/pulls?utf8=✓&q=is%3Apr+is%3Amerged+label%3Agreenkeeper+base%3Amaster+merged%3A"2017-09-18+..+2017-09-24"+sort%3Acreated-desc).

[PR 979](https://github.com/ManageIQ/manageiq-ui-service/pull/979) refactors the CollectionsApi for extensibility (infinite options) and conciseness.<br>

The dialog generation for orchestration template was modified in [PR 15982](https://github.com/ManageIQ/manageiq/pull/15982) to rely on the templates to provide the deployment options.<br> 

[PR 16011](https://github.com/ManageIQ/manageiq/pull/16011) adds 'description' to the list of automate value fields, allowing it to be updated by an automate method.<br> 

## Fixed

To allow the Azure SSA job to succeed, a number of timeouts and workers' memory were increased in [PR 16016](https://github.com/ManageIQ/manageiq/pull/16016).

After [PR 15995](https://github.com/ManageIQ/manageiq/pull/15995), the request to destroy linked events is queued to prevent the UI hanging when deleting an instance of MiqServer.

## New

[This PR](https://github.com/ManageIQ/manageiq/pull/15911) exposes the Custom Button visibility and enablement based on the evaluation of MiqExpressions set for these on each button.

Custom Buttons have been added to the Generic objects in [PR 15980](https://github.com/ManageIQ/manageiq/pull/15980).

YAML format content is now accepted as an OrchestrationTemplate [PR 298](https://github.com/ManageIQ/manageiq-providers-amazon/pull/298).

After the Automate [PR 15951,](https://github.com/ManageIQ/manageiq/pull/15951) the manual placement selection will support only the use of "VMware clusters" and only the use of "VMware folders".

We are getting ready for Ruby 2.4: [PR15987](https://github.com/ManageIQ/manageiq/pull/15987) replaces the deprecated Fixnum\|Bignum with integer.

[Here](https://github.com/ManageIQ/manageiq/pull/14475) is the initial work for putting the documentation that exists in the source code into a browsable format.


## Deleted

The deletion of the week, [PR16005](https://github.com/ManageIQ/manageiq/pull/16005) removes 'format_by_(class\|column)', as these are no longer used.


## Product Tools

Two very useful product tools were merged this week: 

[One](https://github.com/ManageIQ/manageiq/pull/15990) to replicate a server settings to other servers.

[The other](https://github.com/ManageIQ/manageiq/pull/15640) is a tool that converts an MiQ appliance authentication configuration from using the MiQ proprietary LDAP client to using SSSD packaged into the operating system.


## Wrapping up

This is all for this Last Week in ManageIQ edition, we always welcome contributions to any of the [ManageIQ](https://github.com/manageiq) repositories.
[Laura](https://github.com/lgalis) here, wishing everyone a wonderful, productive week!  




[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-09-18+..+2017-09-24%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-09-18+..+2017-09-24%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-09-18+..+2017-09-24%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-amazon PRs merged]: https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-09-18+..+2017-09-24%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-azure PRs merged]: https://github.com/ManageIQ/manageiq-providers-azure/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-09-18+..+2017-09-24%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-vmware PRs merged]: https://github.com/ManageIQ/manageiq-providers-vmware/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-09-18+..+2017-09-24%22+sort%3Acreated-desc&utf8=%E2%9C%93
