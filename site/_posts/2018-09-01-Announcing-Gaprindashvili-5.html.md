---
title: Announcing Gaprindashvili-5
author: jprause
date: 2018-09-01 08:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Gaprindashvili-5. This release contains security and bug fixes, UI tweaks, and stabilization.
Here are just a few of the things added since Gaprindashvili-4 release:

- ADDED
  * Add Cumulative Chargeback rates [(#17795)](https://github.com/ManageIQ/manageiq/pull/17795)
  * Support for v2v pre/post Ansible playbook service. [(#17627)](https://github.com/ManageIQ/manageiq/pull/17627)
  * Validate name uniqueness for Transformation Plans [(#17677)](https://github.com/ManageIQ/manageiq/pull/17677)

- FIXED 
  * Allow tenant admins to see all groups within the scope of their tenant [(#17817)](https://github.com/ManageIQ/manageiq/pull/17817)
  * Fix for $evm.execute not honoring dialog options [(#17844)](https://github.com/ManageIQ/manageiq/pull/17844)
  * Add option to clear classifications for tag_details [(#17465)](https://github.com/ManageIQ/manageiq/pull/17465)
  * Force user_type to UPN when username is a UPN [(#17690)](https://github.com/ManageIQ/manageiq/pull/17690)
  * Clean up queued items on Zone#destroy [(#17374)](https://github.com/ManageIQ/manageiq/pull/17374)

- CVEs
  * An attacker with SSH access to the system can use the dRuby (DRb) module installed on the system to execute arbitrary shell commands using instance_eval()[(CVE-2018-10905)](https://access.redhat.com/security/cve/cve-2018-10905)
  * Specially crafted requests can be used to access files that exists on the filesystem that is outside an application's root directory[(CVE-2018-3760)](https://access.redhat.com/security/cve/cve-2018-3760)

You can download the Gaprindashvili-5 release [here](http://manageiq.org/download/).

Here is the complete changelog:
[Gaprindashvili-5](https://github.com/ManageIQ/manageiq/blob/gaprindashvili/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
