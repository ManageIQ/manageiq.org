---
title: Announcing Euwe-1-Beta1.3 
author: chessbyte
date: 2016-10-13 12:49:24 UTC
comments: true
published: true
tags: releases announcements
---

On behalf of the ManageIQ team, we're pleased to announce the Beta release for ManageIQ Euwe! 

Euwe is the next milestone release for ManageIQ cloud and virtualization management platform. With each release, Manageiq gets more robust and feature complete across providers. In this release, we not only attended to providers and chargeback, but we also made some essential improvements to the appliance itself including performance and high availability.

* **Centralized administration** allowing you to invoke power and retirement operations on remote regions.
* Huge **performance improvements** for page rendering in the User Interface as well as SmartState for Microsoft Azure.
* **Provider logic** which asks instead of assuming that an operation or feature is available for a specific provider. In other words, known features are discoverable.
* **High Availabilty** for the PostgreSQL ManageIQ server maintaining a list of standby servers as well as a failover monitor for the database.
* Darga timelines have been replaced by **PatternFly timelines** in Euwe.
* **Notification drawer** has been added using ActionCable with PatternFly's notification drawer powered by Angular.

If you want to hear about features, improvements, and fixes directly from the developers, check out the [Last Week in ManageIQ blot posts](http://manageiq.org/blog/tags/LWIMIQ/).

Take a look at the [changelog](https://github.com/ManageIQ/manageiq/blob/euwe/CHANGELOG.md/) for more details.

We encourage you to download Beta1 and try it out! Select "Prerelease (euwe-1-beta1.3)" from the [download page](http://manageiq.org/download/).

If you encounter any issues/bugs, please report them on [Github](https://github.com/ManageIQ/manageiq/issues). You can also join our [discussion forum](http://talk.manageiq.org/) if you have questions or need more support. Remember to use the ["Support"](http://talk.manageiq.org/c/support) category.
