---
title: Announcing Darga-4.1
author: jprause
date: 2016-10-06 14:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Darga-4.1 This release contains a security fix, bug fixes, numerous UI tweaks, and stabilization.

Security Fix(es):
(CVE-2016-7040) In ManageIQ product there was found an improper input validation vulnerability in expression engine allowing to trigger code execution. The issue was found to be exploitable both via JSON API, which can be triggered by users authorized with GET/read access to a collection in API, and via UI when filtering on VMs based on regular expression, which can be triggered by users able to view and filter on VMs in UI.
This issue was discovered by Adam Mariš (Red Hat).


Here is the changelog:
[Darga-4.1](https://github.com/ManageIQ/manageiq/blob/darga/CHANGELOG.md)

Here is the complete summary of fixes in Darga-4.1:
[manageiq](https://github.com/ManageIQ/manageiq/issues?utf8=%E2%9C%93&q=is%3Amerged%20label%3Adarga%2Fbackported%20merged%3A2016-08-08..2016-10-05%20)
[manageiq-appliance](https://github.com/ManageIQ/manageiq-appliance/issues?utf8=%E2%9C%93&q=is%3Amerged%20label%3Adarga%2Fbackported%20merged%3A2016-08-08..2016-10-05%20)
[manageiq-appliance-build](https://github.com/ManageIQ/manageiq-appliance-build/issues?utf8=%E2%9C%93&q=is%3Amerged%20label%3Adarga%2Fbackported%20merged%3A2016-08-08..2016-10-05%20)
[manageiq-ui-self_service](https://github.com/ManageIQ/manageiq-ui-self_service/issues?utf8=%E2%9C%93&q=is%3Amerged%20label%3Adarga%2Fbackported%20merged%3A2016-08-08..2016-10-05%20)

The [GA announcement](http://manageiq.org/blog/2016/06/darga-ga-announcement/)
shows the summary of changes since Capablanca.

With this release we're also introducing a Vagrant image so you can run ManageIQ in a Vagrant box. So, go ahead and [download Darga-4.1](http://manageiq.org/download/).
For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
