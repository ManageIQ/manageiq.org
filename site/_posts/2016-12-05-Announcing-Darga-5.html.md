---
title: Announcing Darga-5
author: jprause
date: 2016-12-05 08:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Darga-5. This release contains a security fix, bug fixes, numerous UI tweaks, and stabilization.

Security Fixes:

[CVE-2016-5402](https://access.redhat.com/security/cve/CVE-2016-5402) - A code injection flaw was found in the way capacity and utilization imported control files are processed. A remote, authenticated attacker with access to the capacity and utilization feature could use this flaw to execute arbitrary code as the user CFME runs as.
This issue was discovered by Simon Lukasik (Red Hat).

[CVE-2016-7071](https://access.redhat.com/security/cve/CVE-2016-7071) - It was found that the CloudForms did not properly apply permissions controls to VM IDs passed by users. A remote, authenticated attacker could use this flaw to execute arbitrary VMs on systems managed by CloudForms if they know the ID of the VM.


and here are just a few of the things added since Dara-4.1 release:
- SmartState: Support analysis of VMs residing on NFS41 datastores
- User Interface:
  * Use VMRC desktop client if no NPAPI plugin is available
  * Add Advanced Search to Containers explorer

- Fixed issues with Alerts
  * Fixed alerts not sending SNMP v1 traps
  * Fixed users not being able to add alerts

Here is the changelog:
[Darga-5](https://github.com/ManageIQ/manageiq/blob/darga/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
