---
title: ManageIQ Lasker GA Announcement
author: Fryguy
date: 2021-07-20
comments: true
published: true
tags: releases announcements
---

On behalf of the ManageIQ team, I'm happy to announce the release of **ManageIQ Lasker**!  This release is named after the chess grandmaster [Emanuel Lasker](https://en.wikipedia.org/wiki/Emanuel_Lasker).  You can download the Lasker-1 release on our [downloads page](/download).

Here are the highlights of the [Lasker release](https://github.com/orgs/ManageIQ/projects/13#column-11434545):

* Providers
  * Support Amazon EKS [[manageiq-providers-amazon#682]](https://github.com/ManageIQ/manageiq-providers-amazon/issues/682)
  * [IBM PowerVS Provider] VM Provisioning with SAP HANA profiles [[manageiq-providers-ibm_cloud#139]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/139)
  * Added Host Initiator functionality (Physical Storage Hosts) [[#21003]](https://github.com/ManageIQ/manageiq/issues/21003)
  * Added Host Volume Mapping functionality [[#21018]](https://github.com/ManageIQ/manageiq/issues/21018)
  * Added deferred delete for Cloud Volumes [[#21055]](https://github.com/ManageIQ/manageiq/issues/21055)
* Core
  * Ability to use multiple tags in chargeback report generation [[#20689]](https://github.com/ManageIQ/manageiq/issues/20689)
  * Updated Chargeback and Policy to work with Configured Systems [[#21019]](https://github.com/ManageIQ/manageiq/pull/21019), [[manageiq-ui-classic#7628]](https://github.com/ManageIQ/manageiq-ui-classic/pull/7628)
  * Improved Chargeback support for containers [[#21074]](https://github.com/ManageIQ/manageiq/issues/21074)
* UI
  * Added a DDF componentMapper for Carbon [[manageiq-ui-classic#7278]](https://github.com/ManageIQ/manageiq-ui-classic/issues/7278)
  * Continuous improvements for accessibility
* Podified Build
  * Handle upgrades [[manageiq-pods#565]](https://github.com/ManageIQ/manageiq-pods/issues/565)
  * Use NetworkPolicy to restrict traffic between pods [[manageiq-pods#590]](https://github.com/ManageIQ/manageiq-pods/issues/590)
  * Adopt new memory/cpu request/limit (threshold) values [[#20847]](https://github.com/ManageIQ/manageiq/pull/20847)
  * Added support for SSL certs to PostgreSQL secret [[manageiq-pods#652]](https://github.com/ManageIQ/manageiq-pods/issues/652)
  * Improved performance and resource usage [[#21090]](https://github.com/ManageIQ/manageiq/issues/21090)
* Other
  * Numerous updates to the ManageIQ API [[manageiq-api#977]](https://github.com/ManageIQ/manageiq-api/issues/977)
  * Support Rails 6.0 [[#19977]](https://github.com/ManageIQ/manageiq/issues/19977)
  * Support Ruby 2.7 [[#19678]](https://github.com/ManageIQ/manageiq/issues/19678)

There are many more changes that would be impossible to detail in a single blog post.  Many thanks goes to all of the community members for their contributions!  We've already started on the next round of features for the ManageIQ Morphy release.  If you're interested in getting involved, check out our [roadmap](/roadmap), check out our [community page](/community), ask questions in our [talk forum](http://talk.manageiq.org), or chat with us in [Gitter](https://gitter.im/ManageIQ/manageiq).  We look forward to hearing from you!
