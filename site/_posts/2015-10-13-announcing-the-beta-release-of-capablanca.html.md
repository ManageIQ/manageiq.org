---
title: Announcing the Beta Release of Capablanca
date: 2015-10-13 14:03 UTC
author: chessbyte
tags: releases announcements
comments: true
published: true
---

The ManageIQ development team is pleased to announce the availability of the Beta release of Capablanca.

Users are encouraged to download the Beta and [report any bugs](http://manageiq.org/community/issues/) found.

The following provides a list of key features and technical improvements since our Capablanca Alpha release:

Topping the list of user-visible features are:

 * **User Interface.** Updates include: The Self Service UI, adopted from [Project Jellyfish](https://github.com/projectjellyfish/api), this new interface is a standalone portal allowing end users to manage their own Services: Charting is now allowed by field values; the Cloud Provider Editor, Host Editor, and Stacks Retrirement screens (among others) have been converted to Angular, making them more responsive; and many of the DHTMLX based controls have been replaced with Bootstrap/Patternfly equivalents.


 * **Cloud-Service level Orchestration.** Multi-tenant support for OpenStack orchestration provisioning

 * **ManageIQ Appliance Features.** Two-factor authentication for users of FreeIPA 4.1 and above; an update to internal tools like PostgreSQL 9.4.1, Apache 2.4, and CentOS 7.1; and a change of the appliance filesystem from ext4 to xfs.

In addition, the following technical improvements have been made:

* Kubernetes enhancements, including RHEV Integration, a Topology widget, and VMware integration.
* Namespacing preparation for pluggable providers for OpenStack and containers
* Added M4 and t2.large instance types for Amazon Web Services
* Improved OpenStack naming for AMQP binding queues and support for shelving VMs.
* Exposed additional properties to Foreman reporting

These are just some of the new features coming in this Beta release. For a complete list of new and updated features, see the [release notes](/community/changelog).

The Capablanca alpha can be downloaded now. Either use the site's [download workflow](http://manageiq.org/download/devel/) or choose what you want from the [list of available images](http://releases.manageiq.org/).
