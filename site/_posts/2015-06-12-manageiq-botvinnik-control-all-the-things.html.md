---
title: ManageIQ Botvinnik is Here - Control All the Things
author: johnmark
date: 2015-06-12 14:50:17 UTC
tags: releases announcements
comments: true
published: true
---

We're very happy to announce that ManageIQ Botvinnik is now [generally available](http://manageiq.org/download/). This marks the first full release cycle for ManageIQ as an open source project. As mentioned in previous announcements, we name our releases alphabetically after chess world champions. For the "B" release, we selected Mikhail Botvinnik, a Soviet chess champion from the 1950's. The "C" release cycle is named after Jose Raul Capablanca, a Cuban world chess champion from 1921-1927.

For the impatient, here's what you need to know:

* [View a recent webinar about the Botvinnik release](http://www.slideshare.net/ManageIQ/botvinnik-webinar)
* [See the changelog](https://github.com/ManageIQ/manageiq/blob/botvinnik/CHANGELOG.md)
* [Download Botvinnik](http://manageiq.org/download/)
* Read some docs about [using it for the first time](http://manageiq.org/documentation/top-tasks/)
* Talk about it on [talk.manageiq.org](http://talk.manageiq.org/)

[Cloud management](http://en.wikipedia.org/wiki/Cloud_management) is very quickly morphing into systems management, to the point where the difference between the two is increasingly indistinguishable. Everyone has a cloud, somewhere. Everyone has a virtualization platform. ManageIQ has had management capabilities for popular platforms of both for some time.

[What's new in the Botvinnik release](https://github.com/ManageIQ/manageiq/blob/botvinnik/CHANGELOG.md), which marks the beginning of ManageIQ's evolution from "Your gateway to the open cloud" to "Control all the things," brings several important new features, including:

* More and better integration with cloud orchestration frameworks, including CloudFormations and OpenStack Heat.
* Comprehensive support for OpenStack infrastructure management.
* Bare metal provisioning and other integrations with [The Foreman](http://theforeman.org/).
* The beginning of container management and Kubernetes integration

One of the key differentiators for ManageIQ is that it all starts with a comprehensive asset inventory and the relationships between them. Orchestration, automation, and the policy engine are built on that inventory base. First, know what is there, and then decide how to automate it. Other cloud management tools start with provisioning but lack the features necessary for what is described as "day 2 management." ManageIQ was built from the ground up following design principles geared for day 2 management. It can do provisioning as well, but its holistic, comprehensive approach is what truly sets it apart.

Botvinnik has a host of new features, and these are just a sample:

**OpenStack Infrastructure Management (Undercloud)**

* Infrastructure Provider (undercloud) in 2015
* Inventory for Heat Stacks
* Connect Cloud provider to Infra provider
* Autoscale compute nodes via Automate
* Infrastructure Host Events & Event processing
* Handling of power states (paused, rebooting, waiting, etc.)
* Tenant filtering based on security groups, floating IPs, and networks.

**Foreman Provider Integration**

* Enabled Reporting / Tagging
* Exposed Foreman models as Automate service models
* Zone enablement
* Added tag processing during provisioning
* Added inventory collection of direct and inherited host/host-group settings
* Organization and location inventory

**Amazon AWS Support**

* Inventory collection for AWS CloudFormation
* Parsing of parameters from orchestration templates
* Amazon Events via AWS Config service
* Enables event-based policies for AWS
* Added C4, D2, and G2 instance types.
* Virtualization type collected during EMS refresh for better filtering of available types during provisioning.
* Handling of power states

**Orchestration Management**

* Orchestration Stacks includes tagging
* Cloud Stacks: Summary and list views.
* Orchestration templates
* Create, edit, delete, tagging, ‘draft’ support
* Create Service Dialog from template contents
* Enabled Reporting / Tagging
* Improved rollback error message in UI
* Collect Stack Resource name and status reason message

**Other Changes**

* REST API: now at full parity with SOAP
* REST API: Added VM management capabilities
  * Custom attributes
  * Add lifecycle events
  * Start, stop, suspend, delete

* Automate: new retirement workflow
* Fleecing: now supports qcow3, VSAN, OpenStack instances, systemd, XFS
* Kubernetes: EMS refresh scheduling, inventory collection

The comprehensive [changelog is here](https://github.com/ManageIQ/manageiq/blob/botvinnik/CHANGELOG.md).
