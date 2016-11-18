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

Plenty of new reports and metrics enhancements have been included to let you manage containers with confidence. Pods for images per project and Pods per node are added to operations reporting. Additionally, you can get Chargeback rates for container images filtered by image tags, with support for custom attributes in the reports. Speaking of tags, container objects can be auto-tagged with the same labels in Kubernetes/OpenShift.

A new cache module is deployed in SmartState for Microsoft Azure, which reduces the average read requests from >7000 to <1000. Scan times have also been reduced from >20 min to <5 min!

Also added is the initial support for Cinder and Swift managers, to manage block storage and object storage respectively. For now, these first storage managers are OpenStack specific, and will be extended in future to support association with other providers or as standalone. The implementation supports managers of either physical or software defined storages.

Besides copious amounts of new eye-candy for all the added features and new providers, UI performance has seen a boost as well. By optimizing resources and filtering, operations such as page rendering are much faster. For example, Services -> Workloads -> All VMs page load time has reduced from 93,770ms to 524ms (99%) with a test of 20,000 VMs.

If you want to hear about features, improvements, and fixes directly from the developers, check out the [Last Week in ManageIQ blog posts](http://manageiq.org/blog/tags/LWIMIQ/).

Take a look at the [changelog](https://github.com/ManageIQ/manageiq/blob/euwe/CHANGELOG.md/) for more details.

We encourage you to download the [Euwe Release Candidate 2](http://manageiq.org/download) and try it out!

If you encounter any issues/bugs, please report them on [GitHub](https://github.com/ManageIQ/manageiq/issues). You can also join our [discussion forum](http://talk.manageiq.org/) if you have questions or need more support. Remember to use the ["Support"](http://talk.manageiq.org/c/support) category.
