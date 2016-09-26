---
title: Integration with Travis CI
date: 2014-07-08 14:55 UTC
author: chessbyte
tags: collaboration announcements
---


When we originally open-sourced ManageIQ, the [ManageIQ GitHub
Repo](https://github.com/ManageIQ/manageiq) was integrated with [Code
Climate](https://codeclimate.com/github/ManageIQ/manageiq).  Integrating with
Code Climate allowed the developer community to find code with too much
complexity and/or duplication and refactor it.

This week, we integrated the [ManageIQ GitHub
Repo](https://github.com/ManageIQ/manageiq) with [Travis
CI](https://travis-ci.org/ManageIQ/manageiq), the continuous integration
service.  This service runs on each GitHub pull request to ensure that no new
code is breaking existing tests (i.e. no regression).  If the pull request does
cause a regression, the core maintainers of the ManageIQ project will not merge
it until this is resolved.

So, keep creating pull requests to make ManageIQ better, but make sure that they
do not break any tests!

Thanks,
chessbyte
