---
title: "Last Week in ManageIQ: Extractions"
author: juliancheal
date: 2017-06-06
comments: true
published: true
tags: LWIMIQ
---

Good day, and welcome to another fine episode of Last Week In ManageIQ with your host [Julian Cheal](https://github.com/juliancheal). Carrying on from last week we've had yet more code extractions from the core [ManageIQ codebase](https://github.com/ManageIQ/manageiq), a variety of bug fixes, and some new features. So let's get started.

## Featured

Looking at our repositories we've had:

* 52 PRs in the main [ManageIQ](https://github.com/ManageIQ/manageiq) repo
* 30 PRs in [manageiq-ui-classic](https://github.com/ManageIQ/manageiq-ui-classic) repo
* 8 PRs in [manaiq-ui-service](https://github.com/ManageIQ/manageiq-ui-service) repo

## Improved

The big news this week is the extraction of four providers to their own repositories. This is ongoing work part of the pluggable providers initiative. Each provider also now have their own [Gitter rooms](https://gitter.im/ManageIQ/)

The providers extracted are:

* [Ansible Tower](https://github.com/ManageIQ/manageiq-providers-ansible_tower)
* [Foreman](https://github.com/ManageIQ/manageiq-providers-foreman)
* [Google](https://github.com/ManageIQ/manageiq-providers-google)
* [Microsoft SCVMM](https://github.com/ManageIQ/manageiq-providers-scvmm)

## Fixed

Until this [fix](https://github.com/ManageIQ/manageiq/pull/15134), if you deleted a task its associated report would also be deleted.

In keeping with deletions not doing what you'd expect;  this [bug](https://github.com/ManageIQ/manageiq/pull/14359) was fixed, where deleted entities for containers weren't removed from the database.

## New

Physical infrastructure is one of the newest features in ManageIQ. And this [PR](https://github.com/ManageIQ/manageiq/pull/15283) helps gives servers prettier names.

Keeping with physical infrastructure, we've [added](https://github.com/ManageIQ/manageiq/pull/15275) `Physical Server[s]` to our translation files. If you want to help, why not translate `Physical Server[s]` into your language.

## Deleted

Removing technical debt is always satisfying. So removing a dependency from custom code to a default Ruby Gem is always a good thing. That's what this [PR](https://github.com/ManageIQ/manageiq/pull/15294) does.

Unused variables clog up the code and generally make everything untidy. So [removing](https://github.com/ManageIQ/manageiq/pull/15226) them is always a good thing.

## Wrapping up

With the pluggable provider work and removing technical debt, the ManageIQ codebase is getting more and more streamlined. Why not check in next week to see what else has changed in the thrilling adventure that is; Last Week in ManageIQ.

[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-29+..+2017-06-04%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-29+..+2017-06-04%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-29+..+2017-06-04%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-amazon PRs merged]: https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-29+..+2017-06-04%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-azure PRs merged]: https://github.com/ManageIQ/manageiq-providers-azure/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-29+..+2017-06-04%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-vmware PRs merged]: https://github.com/ManageIQ/manageiq-providers-vmware/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-29+..+2017-06-04%22+sort%3Acreated-desc&utf8=%E2%9C%93
