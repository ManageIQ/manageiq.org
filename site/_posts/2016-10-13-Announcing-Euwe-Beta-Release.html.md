---
title: Announcing Euwe Beta Release
author: chessbyte
date: 2016-10-13 12:49:24 UTC
comments: true
published: true
tags: releases announcements
---

On behalf of the ManageIQ team, we're pleased to announce the Beta release for ManageIQ Euwe!

Euwe is the next milestone release for ManageIQ cloud and virtualization management platform. With each release, ManageIQ gets more robust and feature complete across providers. In this release, we not only attended to providers and chargeback, but we also made some essential improvements to the appliance itself including performance and high availability.

* **Centralized administration** allowing you to invoke power and retirement operations on remote regions.
* Huge **performance improvements** for page rendering in the User Interface as well as SmartState for Microsoft Azure.
* **Provider logic** which asks instead of assuming that an operation or feature is available for a specific provider. In other words, known features are discoverable.
* **High Availabilty** for the PostgreSQL ManageIQ server maintaining a list of standby servers as well as a failover monitor for the database.
* Darga timelines have been replaced by **PatternFly timelines** in Euwe.
* **Notification drawer** has been added using ActionCable with PatternFly's notification drawer powered by Angular.

If you want to hear about features, improvements, and fixes directly from the developers, check out the [Last Week in ManageIQ blog posts](http://manageiq.org/blog/tags/LWIMIQ/).

Take a look at the [changelog](https://github.com/ManageIQ/manageiq/blob/euwe/CHANGELOG.md/) for more details.

We encourage you to download Beta1 and try it out!


| Appliance | Format | Size |
| --------- | ------ | ---- |
| [Docker](https://hub.docker.com/r/manageiq/manageiq/) | docker | 0.5 GB |
| [Google Compute Engine](http://releases.manageiq.org/manageiq-gce-euwe-1-beta1.3.gz) | gce | 1.1 GB |
| [Microsoft Azure](http://releases.manageiq.org/manageiq-azure-euwe-1-beta1.3.vhd) | azure | 3.1 GB |
| [Microsoft SCVMM](http://releases.manageiq.org/manageiq-hyperv-euwe-1-beta1.3.vhd) | hyperv | 3.1 GB |
| [Openstack](http://releases.manageiq.org/manageiq-openstack-euwe-1-beta1.3.qc2) | openstack | 1.2 GB |
| [oVirt](http://releases.manageiq.org/manageiq-ovirt-euwe-1-beta1.3.ova) | ovirt | 1.1 GB |
| [Qemu/KVM](http://releases.manageiq.org/manageiq-openstack-euwe-1-beta1.3.qc2) | openstack | 1.2 GB |
| [Red Hat Enterprise Virtualization](http://releases.manageiq.org/manageiq-ovirt-euwe-1-beta1.3.ova) | ovirt | 1.1 GB |
| [Vagrant](https://atlas.hashicorp.com/manageiq/euwe) | vagrant | 1.1 GB |
| [VMware vSphere](http://releases.manageiq.org/manageiq-vsphere-euwe-1-beta1.3.ova) | vsphere | 1.3 GB |


If you encounter any issues/bugs, please report them on [GitHub](https://github.com/ManageIQ/manageiq/issues). You can also join our [discussion forum](http://talk.manageiq.org/) if you have questions or need more support. Remember to use the ["Support"](http://talk.manageiq.org/c/support) category.
