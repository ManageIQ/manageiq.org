---
title: "Last Week in ManageIQ: Doing just Fine"
author: skateman
date: 2017-05-09
comments: true
published: true
tags: LWIMIQ
---

Hi! As you know, we're all doing just *Fine* (pun intended) and I would like to discuss some of the details. So let's get started.

## Improved
Ruby 2.4 is available since last December and we would like to ensure compatibility with it. This is why our smartest minds are [continuously working](https://github.com/ManageIQ/manageiq/pull/13104) in the area. The goal is of course to be able to run on Rails 5.1 and use all of its nice features. In the meantime we decided that it would be nice get rid of the Gemfile.dev.rb, so [Brandon](https://github.com/bdunne) made a PR that [deprecates](https://github.com/ManageIQ/manageiq/pull/14908) its usage.

## Fixed
Our [charts-guy](https://github.com/PanSpagetka) accidentally deleted a Capacity and Utilization charts under the Availability Zones, he was proven guilty and his punishment was to [put it back where it was](https://github.com/ManageIQ/manageiq/pull/14938). There was also a missing ~person~ [character](https://github.com/ManageIQ/manageiq-ui-classic/pull/1264) in the `CatalogController`, but the [ranger of the wild east](https://github.com/himdel) found it quickly.

## New
*Úgy gondoljuk, hogy a többnyelvűség támogatása nagyon fontos, ezért folyamatosan dolgozunk ennek fejlesztésén.* This messages was not written in English, because we are constantly working on the internationalization of the project. One step at the time: [Chris](https://github.com/chalettu) created [a set of scripts](https://github.com/ManageIQ/manageiq-ui-service/pull/725) that you can use to download/upload translation resources from/to our translation server, [Zanata](https://translate.zanata.org/project/view/manageiq/).

## Deleted
There was some copy-pasted code on the topology screens that has been refactored and [hundreds of lines of code disappeared](https://github.com/ManageIQ/manageiq-ui-classic/pull/1288) in no time. Also in the topologies, there was a mixin included multiple times unnecessarily, [until now](https://github.com/ManageIQ/manageiq-ui-classic/pull/1268).

## Wrapping up
That's all from me, but if you think it's not enough feel free to check out the [list][manageiq PRs merged] [of][manageiq-ui-classic PRs merged] [all][manageiq-ui-service PRs merged] [our][manageiq-providers-amazon PRs merged] [merged][manageiq-providers-azure PRs merged] [PRs][manageiq-providers-vmware PRs merged].

[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-01+..+2017-05-07%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-01+..+2017-05-07%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-01+..+2017-05-07%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-amazon PRs merged]: https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-01+..+2017-05-07%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-azure PRs merged]: https://github.com/ManageIQ/manageiq-providers-azure/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-01+..+2017-05-07%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-vmware PRs merged]: https://github.com/ManageIQ/manageiq-providers-vmware/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-01+..+2017-05-07%22+sort%3Acreated-desc&utf8=%E2%9C%93
