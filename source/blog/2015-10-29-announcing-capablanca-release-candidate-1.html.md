---
title: Announcing Capablanca Release Candidate 1
date: 2015-10-29 14:03 UTC
author: chessbyte
tags: release Capablanca
comments: true
published: true
---
We're pleased to announce that, effective today, the first [Capablanca release candidate](http://manageiq.org/download/devel/) is now available. Among the improvements in this release:

* The Self Service UI, adopted from Project Jellyfish, this new interface is a standalone portal allowing end users to manage their own Services
* Charting is now allowed by field values
* User Interface Improvements 
  * Cloud Provider Editor, Host Editor, and Stacks Retrirement screens (among others) have been converted to Angular, making them more responsive
  * Many of the DHTMLX based controls have been replaced with Bootstrap/Patternfly equivalents
* Cloud-Service level Orchestration. Multi-tenant support for OpenStack orchestration provisioning
* ManageIQ Appliance Features. Two-factor authentication for users of FreeIPA 4.1 and above
* Internal tools like PostgreSQL 9.4.1, Apache 2.4, and CentOS 7.1 updated
* Appliance filesystem changed from ext4 to xfs
* Kubernetes enhancements, including RHEV Integration, a Topology widget, and VMware integration
* Namespacing preparation for pluggable providers for OpenStack and containers
* Added M4 and t2.large instance types for Amazon Web Services
* Improved OpenStack naming for AMQP binding queues and support for shelving VMs
* Additional properties to Foreman reporting exposed


Refer to the [changelog](https://github.com/ManageIQ/manageiq/blob/capablanca/CHANGELOG.md) for more details.

Please test the Capablanca RC and [report any issues](https://github.com/ManageIQ/manageiq/issues). For questions or support, please see our [talk page](http://talk.manageiq.org/) and make sure to use the "[Release Candidate](http://talk.manageiq.org/c/release-candidate)" category.
