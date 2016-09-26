---
title: ManageIQ Integrates with Amazon AWS Config Service
author: chessbyte
date: 2014-11-13 20:38:20.000000000 Z
tags: collaboration announcements
comments: true
published: true
---

With the recent announcement of Amazon's [AWS Config service](http://aws.amazon.com/config/), there is a [Pull Request](https://github.com/ManageIQ/manageiq/pull/1049) to integrate with it.  The integration will allow ManageIQ to use the AWS Config service as an event source to our Amazon Provider.  These events can be used to drive many things inside ManageIQ, including inventory refreshes, policies and automate workflows.  Once this Pull Request is merged, our appliance (which is built nightly) will have that functionality incorporated.  Until then, if you want to play with the proposed integration, take the code changes from the pull request and integrate them into your appliance or development environment.

Thanks,
chessbyte
