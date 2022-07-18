---
title: ManageIQ Najdorf GA Announcement
author: Fryguy
date: 2022-07-18
comments: true
published: true
tags: releases announcements
---

On behalf of the ManageIQ team, I'm happy to announce the release of **ManageIQ Najdorf**!  This release is named after the chess grandmaster [Miguel Najdorf](https://en.wikipedia.org/wiki/Miguel_Najdorf).  You can download the Najdorf-1 release on our [downloads page](/download).

Here are the highlights of the [Najdorf release](https://github.com/orgs/ManageIQ/projects/13#column-12963689):

* New Providers
  * [IBM Power HMC](https://www.ibm.com/docs/en/power8/8335-GTA?topic=HW4M4/p8hat/p8hat_partitioningwithanhmc.htm) provider [[#21475]](https://github.com/ManageIQ/manageiq/pull/21475)
  * [IBM Cloud Infrastructure Center (CIC)](https://www.ibm.com/products/cloud-infrastructure-center) provider [[#21631]](https://github.com/ManageIQ/manageiq/pull/21631)
  * [Cisco Intersight](https://intersight.com) provider [[#21715]](https://github.com/ManageIQ/manageiq/issues/21715)
  * [VMware Tanzu Kubernetes Grid (TKG)](https://tanzu.vmware.com/kubernetes-grid) provider [[#703]](https://github.com/ManageIQ/manageiq-providers-vmware/issues/703)
* Provider Enhancements
  * IBM Cloud [[#263]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/issues/263)
    * Expanded network inventory collection (public gateways, VPN gateways, load balancers, ACLs, security group rules)
    * Support to modify/resize VM [[#300]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/300)
    * Metrics collection [[#308]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/308)
    * Catalog service provisioning [[#362]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/362)
    * Create/Delete cloud databases [[#364]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/364), [[#366]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/366)
    * Add metrics collection support for IKS [[#314]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/issues/314)
  * IBM Power HMC [[#8]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/issues/8)
    * Expanded inventory collection (templates, storages)
    * Expanded network inventory collection (networks, virtual switches, virtual lans, ethernet adapters, logical ports)
    * Metrics collection [[#41]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/41)
    * Targeted refresh [[#692]](https://github.com/ManageIQ/manageiq-content/pull/692)
    * Template provisioning [[#26]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/26)
  * IBM Power Virtual Servers [[#147]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/issues/147)
    * IBM Cloud ObjectStorage provider [[#159]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/159)
    * PowerVC -> PowerVS cross cloud-provider image import [[#180]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/issues/180)
    * Event collection [[#279]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/279)
    * Expanded inventory collection for snapshots [[#313]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/313)
    * Snapshot operations [[#325]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/325)
  * IBM PowerVC [[#27]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/issues/27)
    * Expanded inventory collection for advanced settings [[#28]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/28)
    * OOtB reports [[#36]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/36)
  * Kyndryl AutoSDE [[#83]](https://github.com/ManageIQ/manageiq-providers-autosde/issues/83)
    * Targeted refresh [[#107]](https://github.com/ManageIQ/manageiq-providers-autosde/issues/107)
    * Support for fibre channel WWPN candidates [[#92]](https://github.com/ManageIQ/manageiq-providers-autosde/issues/92)
    * Add Host Initiator Groups [[#93]](https://github.com/ManageIQ/manageiq-providers-autosde/issues/93)
  * VMware
    * Add SSL options for Verify / CA certificates [[#737]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/737)
* Core
  * Cross cloud-provider image import [[#180]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/issues/180)
  * Allow the addition of standalone object storage managers [[#7675]](https://github.com/ManageIQ/manageiq-ui-classic/issues/7675)
* API
  * Localization of OPTIONS calls [[#1043]](https://github.com/ManageIQ/manageiq-api/pull/1043)
  * Add endpoints for cloud_subnets [[#1025]](https://github.com/ManageIQ/manageiq-api/pull/1025)
  * Add LAN tags subcollction [[#1018]](https://github.com/ManageIQ/manageiq-api/issues/1018)
* Build
  * [Podified] Allow SSL/TLS communication between pods [[#724]](https://github.com/ManageIQ/manageiq-pods/issues/724)
  * Run the application as a non root user [[#20394]](https://github.com/ManageIQ/manageiq/issues/20394)
  * Update containers to latest ubi8 [[#21725]](https://github.com/ManageIQ/manageiq/issues/21725)
* Major Bugs
  * Error out orphaned miqtask executed by processes/pods that no longer exist [[#21175]](https://github.com/ManageIQ/manageiq/issues/21175)
* Developer
  * [UI] Update to NodeJS 14 [[#7930]](https://github.com/ManageIQ/manageiq-ui-classic/issues/7930)
  * [UI] Replace patternfly-react with carbon-react [[#7844]](https://github.com/ManageIQ/manageiq-ui-classic/issues/7844)
  * [UI] Continued work on removal of angular code [[#8299]](https://github.com/ManageIQ/manageiq-ui-classic/issues/8299)
  * [UI] Continued work on converting forms to react [[#8010]](https://github.com/ManageIQ/manageiq-ui-classic/issues/8010)
  * [UI] Continued work on converting HAML tables to React Carbon tables [[#7986]](https://github.com/ManageIQ/manageiq-ui-classic/issues/7986)
  * Replace Hakiri with Whitesource [[#21660]](https://github.com/ManageIQ/manageiq/issues/21660)
* Removals
  * Remove v2v plugin [[#21379]](https://github.com/ManageIQ/manageiq/issues/21379)
  * Remove cockpit console support [[#21378]](https://github.com/ManageIQ/manageiq/issues/21378)
  * Remove database backups from UI (moved to appliance console) [[#21100]](https://github.com/ManageIQ/manageiq/issues/21100)

There are many more changes that would be impossible to detail in a single blog post.  Many thanks goes to all of the community members for their contributions!  We are already well underway on the next release of ManageIQ - Oparin.  If you're interested in getting involved, check out our [roadmap](/roadmap), check out our [community page](/community), ask questions in our [discussions forum](https://github.com/ManageIQ/manageiq/discussions), or chat with us in [Gitter](https://gitter.im/ManageIQ/manageiq).  We look forward to hearing from you!
