---
title: Announcing Kasparov Beta, Jansa-3, and Ivanchuk-8
author: Fryguy
date: 2021-01-18 17:01:13 UTC
comments: true
published: true
tags: releases announcements
---

ManageIQ Kasparov-1-Beta1.1, Jansa-3, and Ivanchuk-8 are now available. These releases include security fixes. Many thanks goes to Dávid Halász ([@skateman](https://github.com/skateman)) and the team for finding and fixing these vulnerabilities.  Also, many thanks go to all of the contributors for all of their enhancements and bug fixes.

## Security Issues

### High severity

- [CVE-2020-25716 - Missing access control leads to escalation of admin group privileges](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-46q7-rqqj-pxxj)

## Other notable changes

### Kasparov-1-Beta1.1

#### Bug

* Fix CPU cores for chargeback project [[#20933]](https://github.com/ManageIQ/manageiq/pull/20933)
* Honor zone setting when queuing launch_ansible_job. [[#20891]](https://github.com/ManageIQ/manageiq/pull/20891)
* Do not allow to delete tenant which has children [[#20404]](https://github.com/ManageIQ/manageiq/pull/20404)
* fixed MiqPolicySet.seed when Condition record with the same description or name but different guid already exists [[#20875]](https://github.com/ManageIQ/manageiq/pull/20875)
* [API] Allow set ownership screen for instances and images [[#969]](https://github.com/ManageIQ/manageiq-api/pull/969)
* [Podified] Fix escaping of < and > in ContainerLogger [[#20883]](https://github.com/ManageIQ/manageiq/pull/20883)
* [Podified] Run MiqServer.status_update in server process [[#20904]](https://github.com/ManageIQ/manageiq/pull/20904)
* [Podified] Prefer recreate as the deployment strategy for many services. [[#653]](https://github.com/ManageIQ/manageiq-pods/pull/653)
* [UI] Fixed tree selection issues with screens in Reports explorer [[#7536]](https://github.com/ManageIQ/manageiq-ui-classic/pull/7536)
* [UI] Disable snapshot create button for non-supported volumes [[#7487]](https://github.com/ManageIQ/manageiq-ui-classic/pull/7487)
* [AutoSDE provider] Add refresh_interval every 15 minutes [[#45]](https://github.com/ManageIQ/manageiq-providers-autosde/pull/45)
* [Google provider] Fix refresh failure when load balancer can't be found [[#170]](https://github.com/ManageIQ/manageiq-providers-google/pull/170)
* [IBM Terraform provider] Fix parsing of IBM vpc hostname [[#53]](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/pull/53)
* [OpenStack provider] Change hardcoded router data to regex [[#668]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/668)
* [OpenStack provider] Update Network Targeted refresh to skip not found network [[#667]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/667)
* [oVirt provider] Fix for datacenters being recreated every refresh [[#540]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/540)
* [VMWare provider] Fix IP Address Regex Matching IPv6 as IPv4 [[#677]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/677)

#### Enhancement

* [Podified] Adopt new memory/cpu request/limit(threshold) values [[#20847]](https://github.com/ManageIQ/manageiq/pull/20847)
* [Podified] Update to UBI/CentOS 8.3 [[#660]](https://github.com/ManageIQ/manageiq-pods/pull/660)
* [UI] Created a spec that checks all routes for RBAC enforcements [[#7552]](https://github.com/ManageIQ/manageiq-ui-classic/pull/7552)
* [VMWare provider] Allow specifying the datastore/network for OVF deployment. [[#670]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/670)

Here are the changes (since Kasparov-1-Alpha1) per affected repository in GitHub:

* [manageiq](https://github.com/ManageIQ/manageiq/compare/kasparov-1-alpha1...kasparov-1-beta1.1)
* [manageiq-api](https://github.com/ManageIQ/manageiq-api/compare/kasparov-1-alpha1...kasparov-1-beta1.1)
* [manageiq-appliance-build](https://github.com/ManageIQ/manageiq-appliance-build/compare/kasparov-1-alpha1...kasparov-1-beta1.1)
* [manageiq-pods](https://github.com/ManageIQ/manageiq-pods/compare/kasparov-1-alpha1...kasparov-1-beta1.1)
* [manageiq-providers-autosde](https://github.com/ManageIQ/manageiq-providers-autosde/compare/kasparov-1-alpha1...kasparov-1-beta1.1)
* [manageiq-providers-google](https://github.com/ManageIQ/manageiq-providers-google/compare/kasparov-1-alpha1...kasparov-1-beta1.1)
* [manageiq-providers-ibm_cloud](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/compare/kasparov-1-alpha1...kasparov-1-beta1.1)
* [manageiq-providers-ibm_terraform](https://github.com/ManageIQ/manageiq-providers-ibm_terraform/compare/kasparov-1-alpha1...kasparov-1-beta1.1)
* [manageiq-providers-kubernetes](https://github.com/ManageIQ/manageiq-providers-kubernetes/compare/kasparov-1-alpha1...kasparov-1-beta1.1)
* [manageiq-providers-openstack](https://github.com/ManageIQ/manageiq-providers-openstack/compare/kasparov-1-alpha1...kasparov-1-beta1.1)
* [manageiq-providers-ovirt](https://github.com/ManageIQ/manageiq-providers-ovirt/compare/kasparov-1-alpha1...kasparov-1-beta1.1)
* [manageiq-providers-vmware](https://github.com/ManageIQ/manageiq-providers-vmware/compare/kasparov-1-alpha1...kasparov-1-beta1.1)
* [manageiq-rpm_build](https://github.com/ManageIQ/manageiq-rpm_build/compare/kasparov-1-alpha1...kasparov-1-beta1.1)
* [manageiq-ui-classic](https://github.com/ManageIQ/manageiq-ui-classic/compare/kasparov-1-alpha1...kasparov-1-beta1.1)
* [manageiq-ui-service](https://github.com/ManageIQ/manageiq-ui-service/compare/kasparov-1-alpha1...kasparov-1-beta1.1)

### Jansa-3

#### Bug

* VmScan transitions from before_scan -> start_scan [[#20953]](https://github.com/ManageIQ/manageiq/pull/20953)
* Fix CPU cores for chargeback project [[#20933]](https://github.com/ManageIQ/manageiq/pull/20933)
* Honor zone setting when queuing launch_ansible_job. [[#20891]](https://github.com/ManageIQ/manageiq/pull/20891)
* Fixed MiqPolicySet.seed when Condition record with the same description or name but different guid already exists [[#20875]](https://github.com/ManageIQ/manageiq/pull/20875)
* Do not allow to delete tenant which has children [[#20404]](https://github.com/ManageIQ/manageiq/pull/20404)
* [API] Only show OPTIONS for supported providers [[#948]](https://github.com/ManageIQ/manageiq-api/pull/948)
* [EmbeddedAnsible] Ensure newline for :ssh_key_data [[#20771]](https://github.com/ManageIQ/manageiq/pull/20771)
* [Podified] Run MiqServer.status_update in server process [[#20904]](https://github.com/ManageIQ/manageiq/pull/20904)
* [OpenStack provider] Change hardcoded router data to regex [[#668]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/668)
* [OpenStack provider] Update Network Targeted refresh to skip not found network [[#667]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/667)
* [oVirt provider] Fix for datacenters being recreated every refresh [[#540]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/540)
* [VMWare provider] Fix IP Address Regex Matching IPv6 as IPv4 [[#677]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/677)
* [VMWare provider] Fix OpaqueNetwork parser [[#578]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/578)

#### Enhancement

* Add git remote connection check code [[#20759]](https://github.com/ManageIQ/manageiq/pull/20759)
* [Podified] Update to UBI/CentOS 8.3 [[#660]](https://github.com/ManageIQ/manageiq-pods/pull/660)
* [Podified] Adopt new memory/cpu request/limit(threshold) values [[#20847]](https://github.com/ManageIQ/manageiq/pull/20847)

Here are the changes (since Jansa-2) per affected repository in GitHub:

* [amazon_ssa_support](https://github.com/ManageIQ/amazon_ssa_support/compare/jansa-2...jansa-3)
* [manageiq](https://github.com/ManageIQ/manageiq/compare/jansa-2...jansa-3)
* [manageiq-api](https://github.com/ManageIQ/manageiq-api/compare/jansa-2...jansa-3)
* [manageiq-appliance](https://github.com/ManageIQ/manageiq-appliance/compare/jansa-2...jansa-3)
* [manageiq-appliance-build](https://github.com/ManageIQ/manageiq-appliance-build/compare/jansa-2...jansa-3)
* [manageiq-automation_engine](https://github.com/ManageIQ/manageiq-automation_engine/compare/jansa-2...jansa-3)
* [manageiq-consumption](https://github.com/ManageIQ/manageiq-consumption/compare/jansa-2...jansa-3)
* [manageiq-content](https://github.com/ManageIQ/manageiq-content/compare/jansa-2...jansa-3)
* [manageiq-decorators](https://github.com/ManageIQ/manageiq-decorators/compare/jansa-2...jansa-3)
* [manageiq-gems-pending](https://github.com/ManageIQ/manageiq-gems-pending/compare/jansa-2...jansa-3)
* [manageiq-graphql](https://github.com/ManageIQ/manageiq-graphql/compare/jansa-2...jansa-3)
* [manageiq-pods](https://github.com/ManageIQ/manageiq-pods/compare/jansa-2...jansa-3)
* [manageiq-providers-amazon](https://github.com/ManageIQ/manageiq-providers-amazon/compare/jansa-2...jansa-3)
* [manageiq-providers-ansible_tower](https://github.com/ManageIQ/manageiq-providers-ansible_tower/compare/jansa-2...jansa-3)
* [manageiq-providers-azure](https://github.com/ManageIQ/manageiq-providers-azure/compare/jansa-2...jansa-3)
* [manageiq-providers-azure_stack](https://github.com/ManageIQ/manageiq-providers-azure_stack/compare/jansa-2...jansa-3)
* [manageiq-providers-foreman](https://github.com/ManageIQ/manageiq-providers-foreman/compare/jansa-2...jansa-3)
* [manageiq-providers-google](https://github.com/ManageIQ/manageiq-providers-google/compare/jansa-2...jansa-3)
* [manageiq-providers-kubernetes](https://github.com/ManageIQ/manageiq-providers-kubernetes/compare/jansa-2...jansa-3)
* [manageiq-providers-kubevirt](https://github.com/ManageIQ/manageiq-providers-kubevirt/compare/jansa-2...jansa-3)
* [manageiq-providers-lenovo](https://github.com/ManageIQ/manageiq-providers-lenovo/compare/jansa-2...jansa-3)
* [manageiq-providers-nuage](https://github.com/ManageIQ/manageiq-providers-nuage/compare/jansa-2...jansa-3)
* [manageiq-providers-openshift](https://github.com/ManageIQ/manageiq-providers-openshift/compare/jansa-2...jansa-3)
* [manageiq-providers-openstack](https://github.com/ManageIQ/manageiq-providers-openstack/compare/jansa-2...jansa-3)
* [manageiq-providers-ovirt](https://github.com/ManageIQ/manageiq-providers-ovirt/compare/jansa-2...jansa-3)
* [manageiq-providers-redfish](https://github.com/ManageIQ/manageiq-providers-redfish/compare/jansa-2...jansa-3)
* [manageiq-providers-scvmm](https://github.com/ManageIQ/manageiq-providers-scvmm/compare/jansa-2...jansa-3)
* [manageiq-providers-vmware](https://github.com/ManageIQ/manageiq-providers-vmware/compare/jansa-2...jansa-3)
* [manageiq-schema](https://github.com/ManageIQ/manageiq-schema/compare/jansa-2...jansa-3)
* [manageiq-ui-classic](https://github.com/ManageIQ/manageiq-ui-classic/compare/jansa-2...jansa-3)
* [manageiq-ui-service](https://github.com/ManageIQ/manageiq-ui-service/compare/jansa-2...jansa-3)

### Ivanchuk-8

#### Bug

* Do not allow to delete tenant which has children [[#20404]](https://github.com/ManageIQ/manageiq/pull/20404)
* Enhance error handle for failing playbook clone [[#20232]](https://github.com/ManageIQ/manageiq/pull/20232)
* Updated vm_reconfigure_task in app/models to add disk size information. [[#19681]](https://github.com/ManageIQ/manageiq/pull/19681)
* Block attempt to create duplicate retire request [[#20355]](https://github.com/ManageIQ/manageiq/pull/20355)
* [API] fix the custom button create [[#814]](https://github.com/ManageIQ/manageiq-api/pull/814)
* [EmbeddedAnsible] Ensure newline for :ssh_key_data [[#20771]](https://github.com/ManageIQ/manageiq/pull/20771)
* [UI] Correctly render multi-tags in request details dialog [[#7419]](https://github.com/ManageIQ/manageiq-ui-classic/pull/7419)
* [OpenStack provider] Change hardcoded router data to regex [[#668]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/668)
* [OpenStack provider] Update Network Targeted refresh to skip not found network [[#667]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/667)

#### Enhancement

* Add git remote connection check code [[#20759]](https://github.com/ManageIQ/manageiq/pull/20759)
* Native console support for ivanchuk [[#20640]](https://github.com/ManageIQ/manageiq/pull/20640)
* [V2V] Add search boxes to the source and target lists in the mapping wizard [[#1142]](https://github.com/ManageIQ/manageiq-v2v/pull/1142)
* [oVirt provider] Native viewer support [[#528]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/528)
* [oVirt provider] Add cpu_affinity for vms [[#502]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/502)

Here are the changes (since Ivanchuk-7) per affected repository in GitHub:

* [manageiq](https://github.com/ManageIQ/manageiq/compare/ivanchuk-7...ivanchuk-8)
* [manageiq-api](https://github.com/ManageIQ/manageiq-api/compare/ivanchuk-7...ivanchuk-8)
* [manageiq-appliance-build](https://github.com/ManageIQ/manageiq-appliance-build/compare/ivanchuk-7...ivanchuk-8)
* [manageiq-automation_engine](https://github.com/ManageIQ/manageiq-automation_engine/compare/ivanchuk-7...ivanchuk-8)
* [manageiq-pods](https://github.com/ManageIQ/manageiq-pods/compare/ivanchuk-7...ivanchuk-8)
* [manageiq-providers-azure](https://github.com/ManageIQ/manageiq-providers-azure/compare/ivanchuk-7...ivanchuk-8)
* [manageiq-providers-openstack](https://github.com/ManageIQ/manageiq-providers-openstack/compare/ivanchuk-7...ivanchuk-8)
* [manageiq-providers-ovirt](https://github.com/ManageIQ/manageiq-providers-ovirt/compare/ivanchuk-7...ivanchuk-8)
* [manageiq-ui-classic](https://github.com/ManageIQ/manageiq-ui-classic/compare/ivanchuk-7...ivanchuk-8)
* [manageiq-ui-service](https://github.com/ManageIQ/manageiq-ui-service/compare/ivanchuk-7...ivanchuk-8)
* [manageiq-v2v](https://github.com/ManageIQ/manageiq-v2v/compare/ivanchuk-7...ivanchuk-8)

---

You can download the Jansa-3 and Kasparov-1-Beta releases [here](https://manageiq.org/download/).
Since we no longer support Ivanchuk, the Ivanchuk-8 release is available on [https://releases.manageiq.org](https://releases.manageiq.org), however we highly recommend upgrading to a supported release instead.

For questions or support, [join in on the talk page](https://talk.manageiq.org/).
