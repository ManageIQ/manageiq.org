---
title: ManageIQ Morphy GA Announcement
author: chessbyte
date: 2022-02-14
comments: true
published: true
tags: releases announcements
---

On behalf of the ManageIQ team, I'm happy to announce the release of **ManageIQ Morphy**!  This release is named after the chess grandmaster [Paul Morphy](https://en.wikipedia.org/wiki/Paul_Morphy).  You can download the Morphy-1 release on our [downloads page](/download).

Here are the highlights of the [Morphy release](https://github.com/orgs/ManageIQ/projects/13#column-15656536):


* Providers
  * [RFE] Create IBM PowerVC Provider [[#21098]](https://github.com/ManageIQ/manageiq/issues/21098)
  * [Morphy] IBM Cloud VPC Provider Enhancements [[#146]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/issues/146)
  * [MORPHY] IBM Cloud PowerVS Provider Enhancements [[#269]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/issues/269)
  * [RFE] Support Oracle Cloud [[#2]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/issues/2)
  * [MORPHY] IBM AutoSDE Provider Enhancements [[#82]](https://github.com/ManageIQ/manageiq-providers-autosde/issues/82)
  * [RFE] Support Oracle Kubernetes Engine (OKE) [[#31]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/issues/31)
  * [RFE] Support Azure Kubernetes Service (AKS) [[#442]](https://github.com/ManageIQ/manageiq-providers-azure/issues/442)
  * [RFE] Support Google Kubernetes Engine (GKE) [[#180]](https://github.com/ManageIQ/manageiq-providers-google/issues/180)
  * [RFE] Support IBM Cloud Kubernetes Service (IKS) [[#149]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/issues/149)
  * Add support for Cloud Databases [[#20221]](https://github.com/ManageIQ/manageiq/issues/20221)
  * Pull in support for vSphere 7.0U3 [[#759]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/759)
* Core
  * [RFE][EmbeddedAnsible] Configurable `verify_ssl` for git repositories [[#20732]](https://github.com/ManageIQ/manageiq/issues/20732)
  * Gracefully handle non-superuser setting up replication [[#21372]](https://github.com/ManageIQ/manageiq/pull/21372)
  * Faster migrations [[#21259]](https://github.com/ManageIQ/manageiq/pull/21259)
* API
  * [Morphy] API Interface Changes [[#1067]](https://github.com/ManageIQ/manageiq-api/issues/1067)
  * [RFE] Throttle API requests [[#20955]](https://github.com/ManageIQ/manageiq/issues/20955)
* UI
  * Automation/Configuration menu reorganization [[#7657]](https://github.com/ManageIQ/manageiq-ui-classic/issues/7657)
  * [RFE] Add provider connection status errors to provider dashboard [[#7709]](https://github.com/ManageIQ/manageiq-ui-classic/issues/7709)
  * [Morphy] Forms Conversion to React [[#7989]](https://github.com/ManageIQ/manageiq-ui-classic/issues/7989)
* Build
  * [Podified] Upgrades: handle updates to CRs with new CRD settings [[#676]](https://github.com/ManageIQ/manageiq-pods/issues/676)
  * Move from CentOS 8 to CentOS Stream [[#459]](https://github.com/ManageIQ/manageiq-appliance-build/issues/459)
  * Dependent containers should store a manifest of the git SHA and date [[#699]](https://github.com/ManageIQ/manageiq-pods/issues/699)
* Developer
  * Support running logical replication locally for easier development [[#21299]](https://github.com/ManageIQ/manageiq/issues/21299)
  * Make provider secrets pluggable [[#21157]](https://github.com/ManageIQ/manageiq/issues/21157)

There are many more changes that would be impossible to detail in a single blog post.  Many thanks goes to all of the community members for their contributions!  We are already well underway on the next release of ManageIQ - Najdorf.  If you're interested in getting involved, check out our [roadmap](/roadmap), check out our [community page](/community), ask questions in our [talk forum](http://talk.manageiq.org), or chat with us in [Gitter](https://gitter.im/ManageIQ/manageiq).  We look forward to hearing from you!
