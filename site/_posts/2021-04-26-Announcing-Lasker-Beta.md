---
title: Announcing Lasker Beta
author: Fryguy
date: 2021-04-26 13:27:43 UTC
comments: true
published: true
tags: releases announcements
---

The first beta release of ManageIQ Lasker is here!  We've been working hard and have a lot of new features you can see in the [roadmap](https://github.com/orgs/ManageIQ/projects/13#column-11434545). Here are the major highlights for this new release:

* Core
  * Added ability to use multiple tags in chargeback report generation
  * Added chargeback support for containers
* Providers
  * Support Amazon EKS
  * [IBM Terraform] Support chargeback and policy for non discovered VMs
  * [IBM PowerVS] VM Provisioning with SAP HANA profiles
  * [IBM AutoSDE] Add Host Initiator and Host Mapping support
  * [IBM AutoSDE] Add "safe delete" feature for Cloud Volumes
* UI
  * Many improvements to accessibility
* Build and Deployment
  * Upgrade to Rails 6.0
  * Support Ruby 2.7
  * [Operator] Use network policies to restrict traffic between pods
  * [Operator] Handle upgrades
  * [Operator] Support SSL certs in the PostgreSQL secret
  * [Podified] Adopt new memory/cpu request/limit values

This release also included a lot of cleanup and refactoring under the covers to better support provider pluggability, in order to unlock more features for providers in the future.  One such refactoring is adding the ability to subclass other providers, allowing for simpler creation of new providers that are mostly based on other providers.

Many thanks go to all of the contributors for all of their enhancements and bug fixes.

You can download the Lasker-1-Beta1 release [here](https://manageiq.org/download/).

For questions or support, [join in on the talk page](https://talk.manageiq.org/).
