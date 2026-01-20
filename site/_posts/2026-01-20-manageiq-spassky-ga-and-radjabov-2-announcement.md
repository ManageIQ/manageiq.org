---
title: ManageIQ Spassky GA and Radjabov-2 Announcement
author: Fryguy
date: 2026-01-20
comments: true
published: true
tags: releases announcements
---

## ManageIQ Spassky-1

On behalf of the ManageIQ team, I'm happy to announce the release of **ManageIQ Spassky**! This release is named after the chess grandmaster [Boris Spassky](https://en.wikipedia.org/wiki/Boris_Spassky). You can download the Spassky-1 release on our [downloads page](/download).

Here are the highlights of the [Spassky release](https://github.com/orgs/ManageIQ/projects/19/views/1?filterQuery=status%3ASpassky):

#### Security Issues

- [CVE-2026-22598 - Denial of Service when creating malformed TimeProfiles](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-m832-x3g8-63j3)

  Thanks to Arpitha S for finding and reporting this issue.

#### New Providers
- [Nutanix](https://github.com/ManageIQ/manageiq-providers-nutanix) [[#23586]](https://github.com/ManageIQ/manageiq/pull/23586)
- [Terraform Enterprise](https://github.com/ManageIQ/manageiq-providers-terraform_enterprise) [[#23440]](https://github.com/ManageIQ/manageiq/pull/23440)

#### Providers
- [Ansible Automation Platform] Rename 'Ansible Tower' to 'Ansible Automation Platform' [[#318]](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/318)
- [Embedded Terraform] Support Terraform provisioning via Workflows - [[#23276]](https://github.com/ManageIQ/manageiq/issues/23276)
- [Embedded Terraform] Support reconfigure action for ServiceTerraformTemplate [[#94]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/94)
- [Embedded Terraform] Generate dialog fields based on terraform type constraints [[#89]](https://github.com/ManageIQ/manageiq-providers-embedded_terraform/pull/89)
- [IBM Cloud VPC] Add schedule tab with "Time until Retirement" during provisioning [[#520]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/520)
- [Kubernetes] Add create, update, and delete of container projects [[#554]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/554)
- [KubeVirt / OpenShift Virtualization] Add VM Reconfigure [[#285]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/285)
- [KubeVirt / OpenShift Virtualization] Collect KubeVirt / OSV instance types [[#288]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/288), [[#284]](https://github.com/ManageIQ/manageiq-providers-openshift/pull/284)
- [KubeVirt / OpenShift Virtualization] Parse VM sockets and threads [[#287]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/287)
- [KubeVirt / OpenShift Virtualization] Parse Host memory and cpu [[#283]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/283)
- [OpenStack] Fix missing OpenStack VM CPU Usage Metrics [[#923]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/923)
- [OpenStack] Support nested JSON parsing for Oslo.messaging v2.0 notifications [[#927]](https://github.com/ManageIQ/manageiq-providers-openstack/pull/927)
- [VmWare] Add v8.0.3 support [[#924]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/924)

#### Core
- Upgrade to Rails 7.2 [[#23201]](https://github.com/ManageIQ/manageiq/pull/23424), [[#23200]](https://github.com/ManageIQ/manageiq/pull/23200)
- Upgrade ansible/ansible-core to latest and python to 3.12 [[#573]](https://github.com/ManageIQ/manageiq-rpm_build/pull/573)
- Improve purging of numerous tables [[#23394]](https://github.com/ManageIQ/manageiq/pull/23394)
- Support /mnt/log_collection mount point on appliances for log collection scripts [[#23644]](https://github.com/ManageIQ/manageiq/pull/23644)

#### Embedded Workflows
- Add a manageiq://api builtin method for API calls to the ManageIQ API [[#144]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/144)
- Add a manageiq://http builtin method for arbitrary REST API calls [[#143]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/143), [[#294]](https://github.com/ManageIQ/floe/pull/306)
- Check if a workflow payload is valid during sync [[#59]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/59)
- [Amazon States Language] \*\***BREAKING**\*\* Fix nested PayloadTemplate interpolation [[#311]](https://github.com/ManageIQ/floe/pull/311)
  - UPGRADE NOTE: Using `.$` at the end of Hash keys is no longer required and will result in an error
- [Amazon States Language] \*\***BREAKING**\*\* Allow credentials to be referenced from parameters [[#308]](https://github.com/ManageIQ/floe/pull/308)
  - UPGRADE NOTE: Setting credentials via ResultPath now must use `$$.Credentials` instead of `$.Credentials`
- [Amazon States Language] Add Choice rule payload validation [[#189]](https://github.com/ManageIQ/floe/pull/189)
- [Amazon States Language] Add Map state ItemBatcher/ItemSelector support [[#294]](https://github.com/ManageIQ/floe/pull/294)


#### UI
- Add columns for payload valid and error for workflows [[#9632]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9632)
- Add embedded automate and workflow entry point UI components [[#9404]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9404)
- Table conversions to React [[#9704]](https://github.com/ManageIQ/manageiq-ui-classic/issues/9704)
- Form conversions to React [[#9495]](https://github.com/ManageIQ/manageiq-ui-classic/issues/9495)
- Tabs conversions to React [[#9490]](https://github.com/ManageIQ/manageiq-ui-classic/issues/9490)
- \*\***BREAKING**\*\* Remove Diagnostics > Collect Logs [[#9704]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9704), [[#23647]](https://github.com/ManageIQ/manageiq/pull/23647)
- Remove Diagnostics > Orphaned Data [[#9442]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9442)

#### API
- Add `/api/container_projects` create, edit, and delete [[#1291]](https://github.com/ManageIQ/manageiq-api/pull/1291)
- Expose attribute aliases in list of attributes [[#1278]](https://github.com/ManageIQ/manageiq-api/pull/1278)

#### Build
- [RPMs] Reduce the size of the azure gems [[#737]](https://github.com/ManageIQ/manageiq-pods/pull/737)
- [Appliances] Add bundler aware shell alias `appliance_console_cli` [[#394]](https://github.com/ManageIQ/manageiq-appliance/pull/394)
- [Appliances] Check for pending migrations before starting server [[#395]](https://github.com/ManageIQ/manageiq-appliance/pull/395)
- [Appliances] Fix installing RPMs overwriting the permissions of podman container filesystems by moving the containers storage to `/var/lib/manageiq/containers/storages`, allowing `/var/lib/manageiq/containers` to live on another logical volume. [[#23470]](https://github.com/ManageIQ/manageiq/issues/23470)
  - UPGRADE NOTE: If you have container registries with authentication, you will need to login again.
- [Appliances / Containerized] Set OIDCCacheShmMax value to avoid using changed package defaults [[#400]](https://github.com/ManageIQ/manageiq-appliance/pull/400), [[#1320]](https://github.com/ManageIQ/manageiq-pods/pull/1320)
- [Containerized] Add health monitoring for liveness and readiness of httpd pod [[#97]](https://github.com/ManageIQ/container-httpd/pull/97), [[#1310]](https://github.com/ManageIQ/manageiq-pods/pull/1310)
- [Operator] Upgrade to go 1.25.0 and operator-sdk v1.41.0 [[#1279]](https://github.com/ManageIQ/manageiq-pods/pull/1279)

#### Developer
- Upgrade from Node v18 to v20 [[#23425]](https://github.com/ManageIQ/manageiq/issues/23425)
- Update Yarn to v4.10.3 [[#9627]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9627)
- Improve cypress automated testing via cypress-on-rails [[#9633]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9633)

\*\***IMPORTANT**\*\*: The following are potentially \*\***BREAKING**\*\* changes

- [Amazon States Language] Fix nested PayloadTemplate interpolation [[#311]](https://github.com/ManageIQ/floe/pull/311)
  - UPGRADE NOTE: Using `.$` at the end of Hash keys is no longer required and will result in an error
- [Amazon States Language] Allow credentials to be referenced from parameters [[#308]](https://github.com/ManageIQ/floe/pull/308)
  - UPGRADE NOTE: Setting credentials via ResultPath now must use `$$.Credentials` instead of `$.Credentials`
- Remove Diagnostics > Collect Logs [[#9704]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9704), [[#23647]](https://github.com/ManageIQ/manageiq/pull/23647)
  - Log collection is no longer accessible from the UI as we continue to separate the application concerns from the appliance concerns, where those differences affect and/or do not work on the containerized deployments. The log collection scripts under `tools/collect_logs` have been enhanced to support a mount point at `/mnt/log_collection` ([[#23644]](https://github.com/ManageIQ/manageiq/pull/23644)) if you want to collect logs from the appliance in a scriptable or schedulable way.

There are many more changes and bug fixes that would be impossible to detail in a single blog post, but you can read through them all in the [full changelog](/changelog/radjabov-2-to-spassky-1). Many thanks goes to all of the community members for their contributions!

## ManageIQ Radjabov-2

In addition to the Spassky release, we are also releasing Radjabov-2 which includes the following security fix:

#### Security Issues

- [CVE-2026-22598 - Denial of Service when creating malformed TimeProfiles](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-m832-x3g8-63j3)

  Thanks to Arpitha S for finding and reporting this issue.

You can see the rest of the Radjabov-2 changes in the [full changelog](/changelog/radjabov-1-to-radjabov-2).

---

We are already well underway on the next release of ManageIQ: Tal. If you're interested in getting involved, check out our [roadmap](https://manageiq.org/roadmap), check out our [community page](https://manageiq.org/community), ask questions in our [discussions forum](https://github.com/ManageIQ/manageiq/discussions), and chat with us in [Gitter](https://gitter.im/ManageIQ/manageiq). We look forward to hearing from you!
