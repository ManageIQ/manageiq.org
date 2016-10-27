---
title: Announcing Euwe Release Candidate
author: chessbyte
date: 2016-10-27 12:49:24 UTC
comments: true
published: true
tags: releases announcements
---

On behalf of the ManageIQ team, we're pleased to announce the Release Cadidate of ManageIQ Euwe!

Euwe is the next milestone release for ManageIQ cloud and virtualization management platform. With each release, ManageIQ gets more robust and feature complete across providers. In this release, we concentrated on stablization fixes prior to the upcoming GA release. There are also updates to Providers as well as continuing performance improvements.

* Microsoft SCVMM: Set default security protocol to ssl.
* PostgreSQL High Availability:
** Added repmgr to support automatic failover.
** Maintain list of active standby database servers.
** Added pg-dsn_parser for converting DSN to a hash.
* Added Google pre and post provisioning methods.
* Appliance Console: Removed menu items that are not applicable when running inside a container.
* Performance: Services -> Workloads -> All VMs page load time reduced from 93,770ms to 524ms (99%) with a test of 20,000 VMs.

If you want to hear about features, improvements, and fixes directly from the developers, check out the [Last Week in ManageIQ blog posts](http://manageiq.org/blog/tags/LWIMIQ/).

Take a look at the [changelog](https://github.com/ManageIQ/manageiq/blob/euwe/CHANGELOG.md/) for more details.

We encourage you to download the Release Candidate and try it out!


| Appliance | Format | Size |
| --------- | ------ | ---- |
| [Docker](https://hub.docker.com/r/manageiq/manageiq/) | docker | 0.5 GB |
| [Google Compute Engine](http://releases.manageiq.org/manageiq-gce-euwe-1-rc1.gz) | gce | 0.98 GB |
| [Microsoft Azure](http://releases.manageiq.org/manageiq-azure-euwe-1-rc1.vhd) | azure | 3.1 GB |
| [Microsoft SCVMM](http://releases.manageiq.org/manageiq-hyperv-euwe-1-rc1.vhd) | hyperv | 3.1 GB |
| [Openstack](http://releases.manageiq.org/manageiq-openstack-euwe-1-rc1.qc2) | openstack | 1.0 GB |
| [oVirt](http://releases.manageiq.org/manageiq-ovirt-euwe-1-rc1.ova) | ovirt | 1.0 GB |
| [Qemu/KVM](http://releases.manageiq.org/manageiq-openstack-euwe-1-rc1.qc2) | openstack | 1.2 GB |
| [Red Hat Enterprise Virtualization](http://releases.manageiq.org/manageiq-ovirt-euwe-1-rc1.ova) | ovirt | 1.1 GB |
| [Vagrant](https://atlas.hashicorp.com/manageiq/euwe) | vagrant | 1.0 GB |
| [VMware vSphere](http://releases.manageiq.org/manageiq-vsphere-euwe-1-rc1.ova) | vsphere | 1.0 GB |


If you encounter any issues/bugs, please report them on [GitHub](https://github.com/ManageIQ/manageiq/issues). You can also join our [discussion forum](http://talk.manageiq.org/) if you have questions or need more support. Remember to use the ["Support"](http://talk.manageiq.org/c/support) category.
