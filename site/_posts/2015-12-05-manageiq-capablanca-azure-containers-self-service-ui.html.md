---
title: 'ManageIQ Capablanca: Azure, Containers, Self-Service UI'
author: matthewd
tags: releases announcements
date: 2015-12-05 11:53:50 UTC
---

ManageIQ Capablanca is now available from all good download links!

This release is named after Jose Raul Capablanca, a Cuban world chess champion from 1921-1927.

Major features for this release include:

##### Microsoft Azure Support

ManageIQ is now able to provision and manage systems running in Microsoft's hosted cloud service.


##### OpenShift and Kubernetes

Building on the initial support in Botvinnik, Kubernetes and OpenShift clusters now have full first-class support, from management of containers, nodes, and projects, to Smart-State Analysis of container images.

Most importantly, they now get a top-level "Containers" tab to themselves, revealing newly designed modern UI tools, including heat maps and a dynamic topology viewer.


##### Self-Service UI

This release is the first to integrate the Self Service UI, adopted from [Project Jellyfish](https://github.com/projectjellyfish/api). This new interface is a standalone portal allowing end users to manage their own services.


##### Behind the scenes

The appliance now runs CentOS 7.1, PostgreSQL 9.4, and Apache 2.4. The main application now runs Rails 4.2, on Ruby 2.2.

We've also begun revamping the primary UI using the Angular and Patternfly frameworks. You'll notice many screens look a bit shinier, and feel more responsive.


----

Of course, there are too many smaller new features to mention. For a complete list of new and updated features, see the [changelog](http://manageiq.org/community/changelog/).

[Download ManageIQ Capablanca now](http://manageiq.org/download/), and then come [tell us what you think](http://talk.manageiq.org/)!


Meanwhile, `master` has started on the journey towards ManageIQ Darga.
