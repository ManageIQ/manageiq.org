---
title: Announcing Capablanca RC-1
date: 2015-11-05 07:20 UTC
author: chessbyte
tags: releases announcements
comments: true
published: true
---

We're pleased to announce that the first Capablanca release candidate is now available. Among the improvements in this release since [the Beta](http://manageiq.org/blog/2015/10/announcing-the-beta-release-of-capablanca/):

- **Automate Tenant Quotas** provide customizable Automate State Machines for validating Tenant quotas for Service, Infrastructure, and Cloud with the limits enforced during provisioning. This feature includes a default setting for the Tenant Quota Model. Quotas can be enforced per tenant/subtenant in the UI and multiple constraints can be selected.
- **New Host Events** for use with Policy: Start Request, Stop Request, Shutdown Request, Reset Request, Reboot Request, Standby Request, Maintenance Enter Request, Maintenance Exit Request, Vmotion Enable Request, Vmotion Disable Request.
- **Event Switchboard** allows users to initiate event processing through Automate.  Users can add automate handlers to customize event processing.  This capability moves the provider event mappings into the automate model, centralizing them. This feature requires an update of the ManageIQ automate domain.
- **REST API** enhancements continue for Tenancy and the Self-Service UI.
- **Reporting** enhancements include the ability to report on Provider Performance, Host Sockets and Total VMs.  Watermark reports have also been added.

For a summary of changes since Botvinnik, see the [alpha release announcement](http://manageiq.org/blog/2015/09/announcing-the-alpha-release-of-capablanca/). [The Capablanca changelog](http://manageiq.org/community/changelog/) will be updated to reflect changes since the beta shortly.

Please [download](http://manageiq.org/download/prerelease/)  Capablanca RC-1 and report any issues. For questions or support, [join in on the talk page](http://talk.manageiq.org/) using the "Release Candidate" category.
