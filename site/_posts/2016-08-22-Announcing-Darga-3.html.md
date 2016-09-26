---
title: Announcing Darga-3
author: jprause
date: 2016-08-22 14:35:39 UTC
tags: releases announcements
comments: true
published: true
---

We've just built Darga-3. This release contains bug fixes, numerous UI tweaks, and stabilization.

Security Fix(es):

* It was found that the CloudForms web UI did not properly filter input in
certain fields. A remote, authenticated attacker could use this flaw to execute
arbitrary code on the system running CloudForms. (CVE-2016-5383)

This issue was discovered by Eric Hayes (Red Hat).


and here is the complete summary of fixes in darga-3:
[manageiq](https://github.com/ManageIQ/manageiq/issues?utf8=%E2%9C%93&q=is%3Amerged%20label%3Adarga%2Fbackported%20merged%3A2016-06-30..2016-08-08%20)
[manageiq-appliance](https://github.com/ManageIQ/manageiq-appliance/issues?utf8=%E2%9C%93&q=is%3Amerged%20label%3Adarga%2Fbackported%20merged%3A2016-06-30..2016-08-08%20)
[manageiq-appliance-build](https://github.com/ManageIQ/manageiq-appliance-build/issues?utf8=%E2%9C%93&q=is%3Amerged%20label%3Adarga%2Fbackported%20merged%3A2016-06-30..2016-08-08%20)
[manageiq-ui-self_service](https://github.com/ManageIQ/manageiq-ui-self_service/issues?utf8=%E2%9C%93&q=is%3Amerged%20label%3Adarga%2Fbackported%20merged%3A2016-06-30..2016-08-08%20)

The [GA announcement](http://manageiq.org/blog/2016/06/darga-ga-announcement/)
remains the best summary of changes since Capablanca.

So, go ahead and [download Darga-3](http://manageiq.org/download/).
For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
