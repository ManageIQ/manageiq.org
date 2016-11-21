---
title: Announcing Euwe Release Candidate 2
author: chessbyte
date: 2016-11-21 12:49:24 UTC
comments: true
published: true
tags: releases announcements
---

On behalf of the ManageIQ team, we're pleased to announce the Release Candidate 2 of ManageIQ Euwe!

Euwe is the next milestone release for ManageIQ cloud and virtualization management platform. With each release, ManageIQ gets more robust and feature complete across providers. Since the Euwe-RC-1 release, we further concentrated on stablization fixes as well as numerous performance improvements prior to the upcoming GA release. A security fix was also added.

Security Fix(es):
(CVE-2016-7071) It was found that the CloudForms did not properly apply permissions controls to VM IDs passed by users. A remote, authenticated attacker could use this flaw to execute arbitrary VMs on systems managed by CloudForms if they know the ID of the VM.
This issue was reported by Jeremy Choi (Red Hat).

The following was also added:
* Auto-tagging based on labels for Containers
* Add Migrate support to RHEV provider 
* Support analysis of VMs residing on NFS41 datastores


If you want to hear about features, improvements, and fixes directly from the developers, check out the [Last Week in ManageIQ blog posts](http://manageiq.org/blog/tags/LWIMIQ/).

Take a look at the [changelog](https://github.com/ManageIQ/manageiq/blob/euwe/CHANGELOG.md/) for more details.

We encourage you to download the [Euwe Release Candidate 2](http://manageiq.org/download) and try it out!

If you encounter any issues/bugs, please report them on [GitHub](https://github.com/ManageIQ/manageiq/issues). You can also join our [discussion forum](http://talk.manageiq.org/) if you have questions or need more support. Remember to use the ["Support"](http://talk.manageiq.org/c/support) category.
