---
title: "Last Week in ManageIQ: Embedding Ansible Additions"
author: jjlangholtz
date: 2017-02-28
comments: true
published: true
tags: LWIMIQ
---

Greetings everyone! [Josh](https://github.com/jjlangholtz) here with yet another weekly update! :tada:

## Featured

Another outstanding week with over 109 PRs merged. Here is the breakdown:

* [49 from ManageIQ core][manageiq PRs merged]
* [42 from the Classic UI][manageiq-ui-classic PRs merged]
* [13 from the Service UI][manageiq-ui-service PRs merged]
* [5 from the Amazon Provider][manageiq-providers-amazon PRs merged]

## Improved

Although there were a number of great improvements this round, here are a few highlights. First, [Ladas](https://github.com/Ladas) has laid the foundation for [query optimizations](https://github.com/ManageIQ/manageiq/pull/14023) of inventory collections based on tracking graph dependencies. [Nick](https://github.com/carbonin) implemented a [worker lifecycle for embedded Ansible](https://github.com/ManageIQ/manageiq/pull/13978) to aid monitoring efforts. To simplify decorating models, [Martin](https://github.com/himdel) has added an implementation for [class decorator support](https://github.com/ManageIQ/manageiq-ui-classic/pull/237) which also removes the need to use the draper gem.

## Fixed

On the UI front, [Martin](https://github.com/himdel) also fixed a UI issue to [display all catalog items](https://github.com/ManageIQ/manageiq-ui-classic/pull/446). Cascading auto-refreshes received several updates from [Erik](https://github.com/eclarizio) leading to a nice [fix](https://github.com/ManageIQ/manageiq-ui-classic/pull/433).

## New

Perhaps the largest addition was [numerous model additions for Embedded Ansible](https://github.com/ManageIQ/manageiq/pull/13879), delivered by [Greg](https://github.com/blomquisg). [Erez](https://github.com/enoodle) brought a welcome addition of [external logging support](https://github.com/ManageIQ/manageiq/pull/13319) for containers, while [Chris](https://github.com/chalettu) added the ability to [create orchestration templates](https://github.com/ManageIQ/manageiq-ui-service/pull/529) from the SUI.

## Deleted

Lots of deletions across the board over the last week. The classic UI received a pair of substantial removals: [Dávid](https://github.com/skateman) dropped the [unused jQplot and associated plugins](https://github.com/ManageIQ/manageiq-ui-classic/pull/445), while  [Harpreet](https://github.com/h-kataria) removed [arbitration profiles](https://github.com/ManageIQ/manageiq-ui-classic/pull/426).

With as many jobs as we have running on TravisCI, it's nice when we can cut down on what we are checking. [Joe](https://github.com/jrafanie) dropped [the Codeclimate eslint engine](https://github.com/ManageIQ/manageiq/pull/14056) now that the UI is separate from the core. Finally [Nick](https://github.com/carbonin) took the opportunity to remove [unnecessary authentication configuration](https://github.com/ManageIQ/manageiq/pull/13966) with all the recent Ansible changes.

## Wrapping up

The end of *Sprint 55* brought plenty of Embedded Ansible additions with many more to come. It was a pleasure bringing you the latest! Until next time, :wave:!

[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-02-20+..+2017-02-26%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-02-20+..+2017-02-26%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-02-20+..+2017-02-26%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-amazon PRs merged]: https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-02-20+..+2017-02-26%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-azure PRs merged]: https://github.com/ManageIQ/manageiq-providers-azure/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-02-20+..+2017-02-26%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-vmware PRs merged]: https://github.com/ManageIQ/manageiq-providers-vmware/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-02-20+..+2017-02-26%22+sort%3Acreated-desc&utf8=%E2%9C%93
