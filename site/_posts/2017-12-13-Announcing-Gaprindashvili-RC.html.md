---
title: Announcing Gaprindashvili RC Release
author: chessbyte
date: 2017-12-13 07:49:24 UTC
comments: true
published: true
tags: releases announcements
---

On behalf of the ManageIQ team, we're pleased to announce the RC release for ManageIQ Gaprindashvili! You can download the Gaprindashvili RC Release [here](http://manageiq.org/download/)

Gaprindashvili is the next milestone release for ManageIQ cloud and virtualization management platform. With each release, ManageIQ gets more robust and feature complete across providers. Here are just a few of the stabilzing fixes added for this release.

* Chargeback - Fix chargeback report when VM is destroyed [(#16575)](https://github.com/ManageIQ/manageiq/pull/16575)
* Core - Fix error in timeout checking for job without target [(#16627)](https://github.com/ManageIQ/manageiq/pull/16627)
* i18n - Add missing model names into locale/en.yml [(#16604)](https://github.com/ManageIQ/manageiq/pull/16604)
* Providers/Amazon - Refresh operating system and fix normalized guest os [(#376)](https://github.com/ManageIQ/manageiq-providers-amazon/pull/376)
* Providers/Openstack - Skip disabled tenants when connecting to Openstack [(#172)](https://github.com/ManageIQ/manageiq-providers-openstack/pull/172)
* User Interface - Fix CPU summary for VMs without cores_per_socket [(#2872)](https://github.com/ManageIQ/manageiq-ui-classic/pull/2872)

If you want to hear about features, improvements, and fixes directly from the developers, check out the [Last Week in ManageIQ blog posts](http://manageiq.org/blog/tags/LWIMIQ/).

Take a look at the [changelog](https://github.com/ManageIQ/manageiq/blob/gaprindashvili/CHANGELOG.md/) for more details.

We encourage you to download the Gaprindashvili RC Release and try it out!


If you encounter any issues/bugs, please report them on [GitHub](https://github.com/ManageIQ/manageiq/issues). You can also join our [discussion forum](http://talk.manageiq.org/) if you have questions or need more support. Remember to use the ["Support"](http://talk.manageiq.org/c/support) category.
