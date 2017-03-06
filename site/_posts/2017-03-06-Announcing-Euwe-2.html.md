---
title: Announcing Euwe-2
author: jprause
date: 2017-03-06 08:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Euwe-2. This release contains a security fix, bug fixes, numerous UI tweaks, and stabilization.

Security Fixes:

[CVE-2017-2632](https://access.redhat.com/security/cve/CVE-2017-2632) - It was found that a tenant administrator could create groups with roles that have higher permissions than those of the tenant administrator.
This issue was discovered by Matouš Mojžíš (Red Hat).

and here are just a few of the things added since Euwe-1 release:
- Automate: Automate Retry with Server Affinity
- Providers:
  * Ansible Tower: Advanced search for Ansible Tower Jobs not visible on switch from a different tab
  * Microsoft Azure: Delete all resources when deleting an Azure stack

- Notable Platform fixes include:
  * Tenant admin should not be able to create groups in other tenants.
  * Introduce report result purging timer. 

Here is the complete changelog:
[Euwe-2](https://github.com/ManageIQ/manageiq/blob/euwe/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
