---
title: ManageIQ Oparin GA Announcement
author: Fryguy
date: 2023-01-06
comments: true
published: true
tags: releases announcements
---

On behalf of the ManageIQ team, I'm happy to announce the release of **ManageIQ Oparin**! This release is named after the chess grandmaster [Grigoriy Oparin](https://en.wikipedia.org/wiki/Grigoriy_Oparin). You can download the Oparin-1 release on our [downloads page](/download).

Here are the highlights of the [Oparin release](https://github.com/orgs/ManageIQ/projects/13#column-17779686):

* New Providers
  * Split [oVirt](https://www.ovirt.org/) Provider out of Red Hat Virtualization Provider [[#21001]](https://github.com/ManageIQ/manageiq/issues/21001)
  * Split [AWX](https://github.com/ansible/awx) Provider out of Ansible Tower Provider [[#21056]](https://github.com/ManageIQ/manageiq/issues/21056)
* Provider Enhancements
  * Google
    * Allow Enable/Disable external access when provisioning a VM [[#231]](https://github.com/ManageIQ/manageiq-providers-google/issues/231)
  * IBM Cloud PowerVS
    * Add support for clone-to-template on an instance [[#374]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/374)
    * VM Native Console [[#389]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/389), [[#395]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/395)
    * VM Management Console access to open the VM's page on IBM Cloud [[#396]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/396)
    * Add volume clone [[#390]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/390)
    * Add VM affinity for multi-VM create via server placement groups [[#363]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/363)
    * Reporting Enhancements [[#321]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/321)
  * IBM PowerVC
    * Metrics collection (inherited from base OpenStack provider)
    * Instance snapshots (inherited from base OpenStack provider)
    * Image import from IBM Cloud PowerVS [[#38]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/38) 
    * VM Console access [[#69]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/pull/69) 
  * IBM Power HMC
    * Clone from Template to VM [[#63]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/63)
    * Collect LPAR disks using VSCSI mappings [[#91]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/91)
    * Collect Host Hardware/Guest Devices [[#96]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/96)
    * Collect HMC shared processor pools to inventory as 'resource pools' [[#100]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/100)
    * HMC console access [[#83]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/83)
    * Add rename support for VMs [[#99]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/99)
    * Add set_description support for VMs [[#102]](https://github.com/ManageIQ/manageiq-providers-ibm_power_hmc/pull/102)
  * Kyndryl AutoSDE
    * Events Collection [[#151]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/151)
    * Events Timeline [[#8373]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8373)
    * Service Catalog support [[#157]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/157)
    * Add validate storage button [[#149]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/149)
  * Oracle Cloud
    * Instance Provisioning Support [[#79]](https://github.com/ManageIQ/manageiq-providers-oracle_cloud/pull/79)
  * VMware
    * [Prototype] Add a pure-ruby event catcher [[#522]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/522)
* Core
  * Add lifecycle operation support for Cloud Databases [[#21886]](https://github.com/ManageIQ/manageiq/issues/21886)
  * Metrics Collection Performance and Scalability [[#20071]](https://github.com/ManageIQ/manageiq/issues/20071)
  * Add Kafka Configuration Option [[#22132]](https://github.com/ManageIQ/manageiq/issues/22132)
  * Run database with SSL as non-root user on appliances [[#21722]](https://github.com/ManageIQ/manageiq/issues/21722)
* API
  * New endpoints
    * `/physical_server_profiles` collection [[#1151]](https://github.com/ManageIQ/manageiq-api/issues/1151)
    * `/provider/#/cloud_volume_types` sub-collection [[#1170]](https://github.com/ManageIQ/manageiq-api/issues/1170)
  * Additions
    * `/cloud_databases` create [[#1152]](https://github.com/ManageIQ/manageiq-api/issues/1152), edit, delete [[#1153]](https://github.com/ManageIQ/manageiq-api/issues/1153)
    * `/cloud_volumes` create_backup [[#1140]](https://github.com/ManageIQ/manageiq-api/issues/1140), restore_backup [[#1143]](https://github.com/ManageIQ/manageiq-api/issues/1143), attach, detach [[#1149]](https://github.com/ManageIQ/manageiq-api/issues/1149), clone [[#1164]](https://github.com/ManageIQ/manageiq-api/issues/1164)
    * `/custom_button_sets` reorder [[#1146]](https://github.com/ManageIQ/manageiq-api/issues/1146)
    * `/host_initiators` delete [[#1157]](https://github.com/ManageIQ/manageiq-api/issues/1157)
    * `/physical_servers` decommission_server, recommission_server [[#1144]](https://github.com/ManageIQ/manageiq-api/issues/1144)
    * `/physical_storages` validate [[#1163]](https://github.com/ManageIQ/manageiq-api/issues/1163)
    * `/vms` set_description [[#1120]](https://github.com/ManageIQ/manageiq-api/issues/1120)
  * Fixes
    * `/widgets` Fixed generate_content to now return a task_id [[#1165]](https://github.com/ManageIQ/manageiq-api/issues/1165)
    * `/volume_mappings` Fixed issue where configuration button for volume mappings was missing [[#1169]](https://github.com/ManageIQ/manageiq-api/issues/1169)
* Build
  * Default to PostgreSQL 13 [[#20662]](https://github.com/ManageIQ/manageiq/issues/20662)
  * [Podified] operator-sdk 1.x support [[#624]](https://github.com/ManageIQ/manageiq-pods/issues/624)
  * Remove the need to deliver NodeJS in production [[#8300]](https://github.com/ManageIQ/manageiq-ui-classic/issues/8300)
  * Move ansible python module installation from post script to a standalone rpm [[#423]](https://github.com/ManageIQ/manageiq-appliance-build/issues/423)
* Developer
  * Complete Transition from AvailabilityMixin to SupportsFeatureMixin [[#21179]](https://github.com/ManageIQ/manageiq/issues/21179)
  * [UI] Continue conversion of HAML tables to react Carbon tables [[#8124]](https://github.com/ManageIQ/manageiq-ui-classic/issues/8124)
  * [UI] Continue to replace angular code [[#8417]](https://github.com/ManageIQ/manageiq-ui-classic/issues/8417)
  * [UI] Continue conversion of forms to React [[#8441]](https://github.com/ManageIQ/manageiq-ui-classic/issues/8441)
  * Support Ruby 3.0 [[#21536]](https://github.com/ManageIQ/manageiq/issues/21536)
  * Upgrade to Rails 6.1 [[#21516]](https://github.com/ManageIQ/manageiq/issues/21516)
  * Upgrade ansible-runner to 2.3.x [[#21734]](https://github.com/ManageIQ/manageiq/issues/21734)

**IMPORTANT**: The following are potentially breaking changes and deprecations.

* \*\***BREAKING**\*\*
  * Stop logging to files in production deployments [[#21177]](https://github.com/ManageIQ/manageiq/pull/21177)
    * Logs will go to `journald` on appliances and to STDOUT on podified deployments
    * This change is potentially breaking if you have any automation that relies on collecting the logs from the `/var/www/miq/vmdb/log` location.
  * Don't automatically initialize appliances on first-boot [[#21878]](https://github.com/ManageIQ/manageiq/issues/21878)
    * On first-boot an appliance can be configured as a database appliance or a worker appliance using `appliance_console`.
    * Worker appliances do not need a second disk and so can be connected directly to the database appliance without need for "un-initialization".
    * This change is potentially breaking if you have any automation for deploying appliances.
* Deprecations (to be removed in Petrosian release)
  * Microsoft SCVMM Provider
  * OpenShift 3.x support
  * VMware 5.x and below support
  * PostgreSQL 10 support
    * While PostgreSQL 10 support will continue to work for the Oparin release, we recommend upgrading to PostgreSQL 13 now, as it will be required for the Petrosian release.

There are many more changes that would be impossible to detail in a single blog post. Many thanks goes to all of the community members for their contributions! We are already well underway on the next release of ManageIQ - Petrosian. If you're interested in getting involved, check out our [roadmap](https://manageiq.org/roadmap), check out our [community page](https://manageiq.org/community), ask questions in our [discussions forum](https://github.com/ManageIQ/manageiq/discussions), and chat with us in [Gitter](https://gitter.im/ManageIQ/manageiq). We look forward to hearing from you!
