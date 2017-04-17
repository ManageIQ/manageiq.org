---
title: ManageIQ Botvinnik - Control All the Things
author: johnmark
date: 2015-06-11 14:50:17 UTC
tags: botvinnik, cloud management, foreman, systems management, kubernetes
published: false
comments: true
---

We're very happy to announce that ManageIQ Botvinnik is now [generally available](http://manageiq.org/download/). This is a landmark release, marking the first full release cycle for [ManageIQ](http://manageiq.org/) as an open source project.

For the impatient, here's what you need to know:

* [View a recent webinar about the Botvinnik release](http://www.slideshare.net/ManageIQ/botvinnik-webinar)
* [See the changelog](https://github.com/ManageIQ/manageiq/blob/botvinnik/CHANGELOG.md)
* [Download Botvinnik](http://manageiq.org/download/)
* Read some docs about [using it for the first time](http://manageiq.org/documentation/top-tasks/)
* Talk about it on [talk.manageiq.org](http://talk.manageiq.org/)

[Cloud management](http://en.wikipedia.org/wiki/Cloud_management) is very quickly morphing into systems management, to the point where the difference between the two is increasingly small, asymptotic to zero. Everyone has a cloud, somewhere. Everyone has a virtualization platform. ManageIQ has featured management capabilities for popular platforms of both for some time.

[What's new in the Botvinnik release](https://github.com/ManageIQ/manageiq/blob/botvinnik/CHANGELOG.md) is increasing integration with cloud orchestration, comprehensive support for OpenStack infrastructure management, and new features supporting bare metal provisioning and other integrations with [The Foreman](http://theforeman.org/).  This release marks the beginning of an evolution for ManageIQ from "Your gateway to the open cloud" to "Control all the things."

One of the key differentiators for ManageIQ is that it all starts with a comprehensive inventory and the relationships between inventory assets. Orchestration, automation and the policy engine are built on that inventory base. First, know what is there, and then decide how to automate it. Other cloud management tools start with provisioning but lack the features necessary for what can be described as "day 2 management." ManageIQ was built from the ground up following design principles geared for day 2 management. Of course, it can do provisioning as well, but its wholistic, comprehensive approach is what truly sets it apart.

Botvinnik has a host of new features, and these are just a sampling:

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
* VM Management w/ custom attributes, add lifecycle events, start, stop, suspend, delete
* Automate: new retirement workflow
* Fleecing: now supports qcow3, VSAN, OpenStack instances, systemd, XFS
* Kubernetes: EMS refresh scheduling, inventory collection

The comprehensive [changelog is here](https://github.com/ManageIQ/manageiq/blob/botvinnik/CHANGELOG.md).

