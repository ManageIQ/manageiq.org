---
title: Announcing Euwe-3
author: jprause
date: 2017-04-17 07:35:39 UTC
comments: true
published: true
tags: releases announcements
---


We've just built Euwe-3. This release contains a security fix, bug fixes, numerous UI tweaks, and stabilization.
You can download the Euwe-3 release [here](http://manageiq.org/download/)


Security Fixes:

[CVE-2017-2653](https://access.redhat.com/security/cve/CVE-2017-2653) - A number of unused delete routes are present in CloudForms which can be accessed via GET requests instead of just POST requests. This could allow an attacker to bypass the protect_from_forgery XSRF protection causing the routes to be used. This attack would require additional cross-site scripting or similar attacks in order to execute.
This issue was reported by Martin Povolny (Red Hat).

and here are just a few of the things added since Euwe-2 release
- Automate: Allow passing options when adding a disk in automate.
- Authentication: Ensure user name is set even when common LDAP attributes are missing.
- Red Hat Virtualization Manager: Resolve oVirt IP addresses
- Performance: Speed up widget generation
- Reporting: Support dots and slashes in virtual custom attributes

Here is the complete changelog:
[Euwe-3](https://github.com/ManageIQ/manageiq/blob/euwe/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
