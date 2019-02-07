---
title: Announcing Hammer-2
author: jprause
date: 2019-02-07 08:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Hammer-2. This release contains bug fixes, UI tweaks, and stabilization.
Here are just a few of the things added since Hammer-1 release:

- ADDED
  * Add handler for compute.instance.update [(#497)](https://github.com/ManageIQ/manageiq-content/pull/497)

- FIXED 
  * Use the new schema_migrations_ran table to track remote schema migrations [(#18393)](https://github.com/ManageIQ/manageiq/pull/18393)
  * Add a schema_migrations_ran [(#330)](https://github.com/ManageIQ/manageiq-schema/pull/330)
  * Fix usage of TreeBuilder.extract_node_model_and_id in OpcControler [(#5142)](https://github.com/ManageIQ/manageiq-ui-classic/pull/5142)
  * Fix missing paging in provisioning template selection [(#5149)](https://github.com/ManageIQ/manageiq-ui-classic/pull/5149) 

You can download the Hammer-2 release [here](http://manageiq.org/download/).

Here is the changelog:
[Hammer-2](https://github.com/ManageIQ/manageiq/blob/hammer/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
