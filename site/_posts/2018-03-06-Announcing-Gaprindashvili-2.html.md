---
title: Announcing Gaprindashvili-2
author: jprause
date: 2018-03-06 08:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Gaprindashvili-2. This release contains security fixes, bug fixes, UI tweaks, and stabilization.

- Security Fixes:
  * [CVE-2017-12191](https://access.redhat.com/security/cve/CVE-2017-12191) - A flaw was found in the CloudForms account configuration when using VMware. By default, a shared account is used that has privileged access to VMRC (VMWare Remote Console) functions that may not be appropriate for users of CloudForms (and thus this account). An attacker could use this vulnerability to view and make changes to settings in the VMRC and virtual machines controlled by it that they should not have access to.
  * [CVE-2017-15125](https://access.redhat.com/security/cve/CVE-2017-15125) - A flaw was found in CloudForms in the self-service UI snapshot feature where the name field is not properly sanitized for HTML and JavaScript input. An attacker could use this flaw to execute a stored XSS attack on an application administrator using CloudForms. Please note that CSP (Content Security Policy) prevents exploitation of this XSS however not all browsers support CSP.

and here are just a few of the things added since Gaprindashvili-1 release:
- ADDED
  * Compute: Add note about vm restart for cpu hot plug change. 
  * Networks: Fix network router buttons for AWS
  * UI: Added RBAC to App Launcher 

- FIXED 
  * Authentication: Only set encryption option to net-ldap when needed.
  * UI: Fix for differing behavior in DialogFieldTagControl multi/single drop downs.
  * Storage: Make sure Containers Exist Before Processing 
  * Provisioning: No longer assume that a value is an array
  * Providers-Azure: Handle possible race conditions for disks, events.

You can download the Gaprindashvili-2 release [here](http://manageiq.org/download/).

Here is the complete changelog:
[Gaprindashvili-2](https://github.com/ManageIQ/manageiq/blob/gaprindashvili/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
