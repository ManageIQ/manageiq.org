---
title: "Last Week in ManageIQ: API & Ansible & Stuff"
author: Daniel Berger
date: 2017-02-05 19:00:14 -07:00
tags: LWIMIQ
comments: true
published: true
---

Hi all! [Daniel Berger](https://github.com/djberg96) here from the Providers team. This is my first Last Week in ManageIQ post, where I try to distill the week's highlights of ManageIQ development into a nice, digestable format.

## Featured

This past week saw [52 PR's][PRs merged last week] merged in ManageIQ core.

Our provider repositories were active as well, with [7 Amazon PR's][Amazon PRs merged], [2 Azure PR's][Azure PRs merged], and [1 VMWare PR][VMWare PRs merged], in addition to 36 PR's merged on the classic and service UI side.

## Improved

This past week saw several improvements for Ansible, including the addition of Ansible Tower provider mixin by [Nick](https://github.com/ManageIQ/manageiq/pull/13733), while Brandon added an [automation manager type](https://github.com/ManageIQ/manageiq/pull/13720) as well as [job templates](https://github.com/ManageIQ/manageiq/pull/13495). Last week also saw Marcel add [graph refresh](https://github.com/ManageIQ/manageiq/pull/13585) for Ansible.

### Everything's better in bulk.

Meanwhile, Tim and Jillian were busy making improvements on the API side. Among other PR's, Jillian added the ability to [unassign tags in bulk](https://github.com/ManageIQ/manageiq/pull/13712), as well as the ability to [tag multiple services in bulk](https://github.com/ManageIQ/manageiq/pull/13698). Meanwhile, Tim added [bulk delete for snapshots](https://github.com/ManageIQ/manageiq/pull/13711) and [nicer messages](https://github.com/ManageIQ/manageiq/pull/13710).

## Fixed

There were several fixes last week, ranging from Brandon's [survey spec refresh fix](https://github.com/ManageIQ/manageiq/pull/13755) for Ansible, to Tim's [spec updates](https://github.com/ManageIQ/manageiq/pull/13758) for the API, to Zahi Akiva's fix for [container group and container volumes relation](https://github.com/ManageIQ/manageiq/pull/13612).

## Miscellaneous

There were a host of other fixes and improvements as well, including a [logger fix](https://github.com/ManageIQ/manageiq/pull/13738) by Libor for older versions of Ruby, Keenan's [Brakeman fixes](https://github.com/ManageIQ/manageiq/pull/13727) and the [removal of unwanted timeline events](https://github.com/ManageIQ/manageiq/pull/13669) in Hawkular, courtesy of Jay Shaughnessy.

## Wrapping up

That's it for this week. If you would like to get involved, head over to our [Current Issues](https://github.com/ManageIQ/manageiq/issues) and take a gander.

[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-01-30+..+2017-02-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[Amazon PRs merged]: https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-01-30+..+2017-02-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[Azure PRs merged]: https://github.com/ManageIQ/manageiq-providers-azure/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-01-30+..+2017-02-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[VMWare PRs merged]: https://github.com/ManageIQ/manageiq-providers-vmware/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-01-30+..+2017-02-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
