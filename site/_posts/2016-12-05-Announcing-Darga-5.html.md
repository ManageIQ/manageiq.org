---
title: Announcing Darga-5
author: jprause
date: 2016-12-05 08:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Darga-5 This release contains a security fix, bug fixes, numerous UI tweaks, and stabilization.

Security Fix(es):
(CVE-2016-5402) A vulnerability in CFME and ManageIQ was found allowing users authorized to product feature known as "Control" or "Policies" to run arbitrary code as root.
This issue was discovered by Adam Mariš (Red Hat).

and here are just a few of the things added since Dara-4.1 release:
**  SmartState: Support analysis of VMs residing on NFS41 datastores
**  User Interface:
****    Use VMRC desktop client if no NPAPI plugin is available ****
****    Add Advanced Search to Containers explorer ****

** Fixed issues with Alerts
**    Alerts
****    Fixed alerts not sending SNMP v1 traps ****
****    Fixed users not being able to add alerts ****

Here is the changelog:
[Darga-5](https://github.com/ManageIQ/manageiq/blob/darga/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
