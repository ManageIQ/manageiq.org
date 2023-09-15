---
title: ManageIQ Petrosian GA Announcement
author: Fryguy
date: 2023-09-14
comments: true
published: true
tags: releases announcements
---

On behalf of the ManageIQ team, I'm happy to announce the release of **ManageIQ Petrosian**! This release is named after the chess grandmaster [Tigran Petrosian](https://en.wikipedia.org/wiki/Tigran_Petrosian). You can download the Petrosian-1 release on our [downloads page](/download).

Here are the highlights of the [Petrosian release](https://github.com/orgs/ManageIQ/projects/13#column-19122600):

- Provider Enhancements
  - Cisco Intersight
    - Service Catalog Support [[#83](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/83)]
    - Collection of physical server profile templates [[#81](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/pull/81)]
  - IBM Cloud PowerVS
    - Add placement group option and shared processor pools to VM provisioning [[#427](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/427)]
    - Collection of shared processor pools as resource pools [[#443](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/443)]
    - Identification of SAP profiles during inventory collection [[#432](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/432)]
  - IBM Power HMC
    - Service Catalog Support [[#137](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/137)]
    - VM Reconfigure for CPU, Memory and Network [[#118](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/118)]
    - Deletion support for LPARs [[#127](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/127)]
    - Collection of shared memory pools [[#115](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/115)] and shared processor pools [[#100](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/100)] as resource pools, media repositories as ISO storages [[#128](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/128)], fibre channel ports and VFC client adapters [[#126](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/126)], and HMC groups as VM labels [[#114](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/114)]
  - IBM PowerVC
    - Service Catalog Support [[#76](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/issues/76)]
  - Kubernetes (and all Kubernetes-based providers)
    - Fix Node network metrics collection on s390x
    - Improvements for data collection when provider connection is lost
  - Kyndryl AutoSDE
    - Basic and Advanced modes for storage manager volume creation [[#194](https://github.com/ManageIQ/manageiq-providers-autosde/pull/194)]
    - Cloud Volumes Snapshot management [[#210](https://github.com/ManageIQ/manageiq-providers-autosde/pull/210)]
    - Clone support for cloud volumes [[#215](https://github.com/ManageIQ/manageiq-providers-autosde/pull/215)]
    - Update support for storage services [[#223](https://github.com/ManageIQ/manageiq-providers-autosde/pull/223)]
    - Update and Delete support for host initiator groups [[#208](https://github.com/ManageIQ/manageiq-providers-autosde/pull/208)]
    - Collection of storage service resource attachments [[#202](https://github.com/ManageIQ/manageiq-providers-autosde/issues/202)] and capabilities for physical storages / storage resources [[#224](https://github.com/ManageIQ/manageiq-providers-autosde/pull/224)]
  - oVirt / Red Hat Virtualization
    - Creation support for cloud network/subnets/routers though OVN/NetworkManager [[#620](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/620)]
  - VMware vSphere
    - Support for vSphere 8.0 [[#845](https://github.com/ManageIQ/manageiq-providers-vmware/issues/845)]
    - Added a customizable disk size field to VM post-provision [[#839](https://github.com/ManageIQ/manageiq-providers-vmware/pull/839)]
- Core
  - New "Embedded Workflows" engine prototype. This new feature uses Amazon States Language to define workflows that can be used to automate complex tasks, and is designed as a future replacement for Automate. Admins can create custom docker images that will execute the "tasks" within the workflow. This feature is currently in prototype and is not recommended for production use at this time, but will be released in the Quinteros release. [[#22302](https://github.com/ManageIQ/manageiq/issues/22302)]
  - Enable notifier role by default [[#22587](https://github.com/ManageIQ/manageiq/pull/22587)]
  - [Security] Read secrets from an ENV file if mounted in containerized deployments [[#930](https://github.com/ManageIQ/manageiq-pods/pull/930)]
  - Performance improvements for metrics capture and rollups, particularly for very large container environments
  - Performance improvements to evaluation of MiqExpressions
  - Purging of audit_events [[#22337](https://github.com/ManageIQ/manageiq/pull/22337)]
- UI
  - New Storage Services page [[#8616](https://github.com/ManageIQ/manageiq-ui-classic/issues/8616)]
  - Display Request Logs in Services -> Requests [[#21188](https://github.com/ManageIQ/manageiq/issues/21188)]
  - Added relative date as a formatting option for date columns in Reports [[#22371](https://github.com/ManageIQ/manageiq/issues/22371)]
  - Improved provider status notification when status has not been updated for over 2 days [[#8558](https://github.com/ManageIQ/manageiq-ui-classic/issues/8558)]
  - Updated Timeline Chart and Table Component [[#8562](https://github.com/ManageIQ/manageiq-ui-classic/pull/8562)]
  - Performance improvements for Timeline presentation when there are many events
  - [Service UI] Add Native Console Support [[#1824](https://github.com/ManageIQ/manageiq-ui-service/issues/1824)]
  - More page conversions from Angular to React and HAML to React
- API
  - New endpoints
    - `/api/cloud_object_store_objects` collection [[#1221](https://github.com/ManageIQ/manageiq-api/pull/1221)]
    - `/api/physical_storage_families`, `/api/storage_resources`, and `/api/storage_services` collections [[#1190](https://github.com/ManageIQ/manageiq-api/pull/1190)]
  - Updated endpoints
    - `/api/cloud_volumes/:id/cloud_volume_snapshots` subcollection and delete actions [[#1205](https://github.com/ManageIQ/manageiq-api/pull/1205)]
    - `/api/hosts` verify_credentials action [[#1202](https://github.com/ManageIQ/manageiq-api/pull/1202)]
    - `/api/host_initiator_groups` refresh, edit, and delete actions [[#1201](https://github.com/ManageIQ/manageiq-api/pull/1201)]
    - `/api/storage_services` create, refresh, delete [[#1198](https://github.com/ManageIQ/manageiq-api/pull/1198)], edit [[#1216](https://github.com/ManageIQ/manageiq-api/pull/1216)], and check_compliant_resources [[#1218](https://github.com/ManageIQ/manageiq-api/pull/1218)] actions
  - Removed endpoints
    - `/api/iso_datastores` (these are now modeled as storages) [[#1186](https://github.com/ManageIQ/manageiq-api/pull/1186)]
  - Allow custom_actions option on physical infrastructure collections [[#1189](https://github.com/ManageIQ/manageiq-api/pull/1189)]
- Build
  - Moved a lot of the build infrastructure to using GitHub Actions
  - [Containerized] Add a new hotfix image build script allowing users to build their own new images with hotfixed RPMs [[#959](https://github.com/ManageIQ/manageiq-pods/pull/959)]
  - [RPMs] Add tools for building hotfix RPMs [[#390](https://github.com/ManageIQ/manageiq-rpm_build/pull/390)]
- Developer
  - Upgrade to Nodejs 18 [[#8690](https://github.com/ManageIQ/manageiq-ui-classic/issues/8690)]
  - Upgrade to yarn 3.5.0 [[#22462](https://github.com/ManageIQ/manageiq/issues/22462)]
  - Upgrade to go 1.20.8
  - Upgrade to operator-sdk 1.22.1
  - Foundational changes for a future upgrade to Rails 7

**IMPORTANT**: The following are potentially breaking changes and deprecations

- \*\***BREAKING**\*\*
  - Removal of SCVMM provider [[#22279](https://github.com/ManageIQ/manageiq/pull/22279)]
  - Removal of OCP v3 support [[#241](https://github.com/ManageIQ/manageiq-providers-openshift/pull/241)]
  - Removal of VMware 5.x and below support [[#733](https://github.com/ManageIQ/manageiq-providers-vmware/pull/733)]
  - Removal of Monitor menu [[#8650](https://github.com/ManageIQ/manageiq-ui-classic/pull/8650)] and the underlying OpenShift alerts [[#8683](https://github.com/ManageIQ/manageiq-ui-classic/issues/8683)] (These only worked with OCP v3, so with the removal of OCP v3, there are no alerts to monitor)
  - [API] Removal of `/api/iso_datastores` (these are now modeled as storages) [[#1186](https://github.com/ManageIQ/manageiq-api/pull/1186)]
- Deprecations carried over from the Oparin release
  - PostgreSQL 10 support
    - While PostgreSQL 10 support will continue to work for the Petrosian release, we recommend upgrading to PostgreSQL 13 now, as it will be required for the Quinteros release.

There are many more changes and bug fixes that would be impossible to detail in a single blog post. Many thanks goes to all of the community members for their contributions!

A extra-big thanks goes out to [IBM](https://www.ibm.com) for sponsoring us, particularly with providing hosting on [IBM Cloud](https://cloud.ibm.com/) for our release artifacts, build infrastructure, and the miq-bot. Thank you!!

We are already well underway on the next release of ManageIQ: Quinteros. If you're interested in getting involved, check out our [roadmap](https://manageiq.org/roadmap), check out our [community page](https://manageiq.org/community), ask questions in our [discussions forum](https://github.com/ManageIQ/manageiq/discussions), and chat with us in [Gitter](https://gitter.im/ManageIQ/manageiq). We look forward to hearing from you!
