---
title: Announcing Fine-3
author: jprause
date: 2017-08-03 08:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Fine-3. This release contains security fixes, bug fixes, UI tweaks, and stabilization.

- Security Fixes:
  * [CVE-2016-7047](https://access.redhat.com/security/cve/CVE-2016-7047) - A flaw was found in the REST API. A user with permissions to use the MiqReportResults capability within the API could potentially view data from other tenants or groups to which they should not have access.
  * [CVE-2017-2664](https://access.redhat.com/security/cve/CVE-2017-2664) - Lacks RBAC controls on certain methods in the rails application portion. An attacker with access could use a variety of methods within the rails applications to escalate privileges.
  * [CVE-2017-7497](https://access.redhat.com/security/cve/CVE-2017-7497) - The dialog for creating cloud volumes (cinder provider) does not filter cloud tenants by user. An attacker with the ability to create storage volumes could use this to create storage volumes for any other tenant.
  * [CVE-2017-7530](https://access.redhat.com/security/cve/CVE-2017-7530) - It was found that privilege check is missing when invoking arbitrary methods via filtering on VMs that MiqExpression will execute that is triggerable by API users. An attacker could use this to execute actions they should not be allowed to (e.g. destroying VMs).

and here are just a few of the things added since Fine-2 release:
- ADDED
  * Automate: Add vmware reconfigure model to quota helper
  * Platform: Add a notification for when the embedded ansible role is activated
  * Providers: Virtual Infrastructure - Add a method to InfraManager to retrieve Hosts without EmsCluster

- CHANGED
  * Performance: Memoize root tenant

- FIXED 
  * Automate: Expose SecurityContext to automate
  * Platform: Run setup playbook on ansible rpm upgrade
  * Providers: Ansible Tower - Let ansible worker gracefully stop
  * REST: Do not delete report if task associated with this report deleted
  * Smartstate: Queue the VM scan command after vm_scan_start event is handled by automate
  * User Interface (Classic): Add Memory chart for Availability Zones

You can download the Fine-3 release [here](http://manageiq.org/download/).

Here is the complete changelog:
[Fine-3](https://github.com/ManageIQ/manageiq/blob/fine/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
