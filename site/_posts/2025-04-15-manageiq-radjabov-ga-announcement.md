---
title: ManageIQ Radjabov GA Announcement
author: Fryguy
date: 2025-04-15
comments: true
published: true
tags: releases announcements
---

On behalf of the ManageIQ team, I'm happy to announce the release of **ManageIQ Radjabov**! This release is named after the chess grandmaster [Teimour Radjabov](https://en.wikipedia.org/wiki/Teimour_Radjabov). You can download the Radjabov-1 release on our [downloads page](/download).

Here are the highlights of the [Radjabov release](https://github.com/orgs/ManageIQ/projects/19/views/1?filterQuery=status%3ARadjabov):

- New Providers
  - [Embedded Terraform](https://github.com/ManageIQ/manageiq-providers-embedded_terraform)
  - [OpenShift Virtualization](https://github.com/ManageIQ/manageiq-providers-openshift/blob/radjabov/app/models/manageiq/providers/openshift/infra_manager.rb) as a dedicated provider apart from KubeVirt
- Providers
  - Cisco Intersight
    - Add support for Intersight Private Virtual Appliance [[#103]](https://github.com/ManageIQ/manageiq-providers-cisco_intersight/issues/103)
  - KubeVirt (and OpenShift Virtualization)
    - KubeVirt VM Metrics Capture [[#260]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/260)
    - KubeVirt Events Capture [[#256]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/256)
    - Service Catalog Provisioning Support [[#250]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/250)
    - Restart a Virtual Machine [[#263]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/263)
    - Create snapshot for a Virtual Machine [[#267]](https://github.com/ManageIQ/manageiq-providers-kubevirt/pull/267)
- Core
  - Added new product feature that controls who can see Request Logs [[#22701]](https://github.com/ManageIQ/manageiq/pull/22701)
  - Upgrade Ruby to 3.3 [[#23142]](https://github.com/ManageIQ/manageiq/pull/23142)
  - Upgrade Rails to 7.0 [[#22052]](https://github.com/ManageIQ/manageiq/issues/22052)
  - Workflows
    - Add provisioning to workflows [[#23039]](https://github.com/ManageIQ/manageiq/pull/23039)
    - Use Floe wait for event driven updates [[#109]](https://github.com/ManageIQ/manageiq-providers-workflows/issues/109)
    - Expose requester to workflows [[#101]](https://github.com/ManageIQ/manageiq-providers-workflows/issues/101)
    - Add an embedded_ansible builtin method [[#86]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/86)
    - Add provision_execute builtin method [[#81]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/81)
    - Rename 'builtin' scheme to 'manageiq' [[#96]](https://github.com/ManageIQ/manageiq-providers-workflows/pull/96)
    - Provide out of the box workflows [[#744]](https://github.com/ManageIQ/manageiq-content/pull/744), [[#750]](https://github.com/ManageIQ/manageiq-content/pull/750)
    - [ASL] Add Intrinsic Functions [[floe#64]](https://github.com/ManageIQ/floe/issues/64)
    - [ASL] Implement Map state [[floe#184]](https://github.com/ManageIQ/floe/pull/184)
    - [ASL] Implement Parallel State [[floe#287]](https://github.com/ManageIQ/floe/issues/287)
- UI
  - Many page conversions from Angular to React
  - Many page conversions from HAML to React [[#9396]](https://github.com/ManageIQ/manageiq-ui-classic/issues/9396), [[#9399]](https://github.com/ManageIQ/manageiq-ui-classic/issues/9399), [[#9400]](https://github.com/ManageIQ/manageiq-ui-classic/issues/9400)
- API
  - Add `/api/providers/#/metric_rollups` [[#22827]](https://github.com/ManageIQ/manageiq/issues/22827)
- Build
  - [Appliances] Upgrade to EL9 [[#563]](https://github.com/ManageIQ/manageiq-appliance-build/pull/563)
  - [Appliances] Set Ruby stream to 3.3 [[#578]](https://github.com/ManageIQ/manageiq-appliance-build/pull/578)
  - [Containerized] Upgrade to UBI9 [[#848]](https://github.com/ManageIQ/manageiq-pods/issues/848)
  - [Operator] Upgrade the operator to UBI9 [[#1055]](https://github.com/ManageIQ/manageiq-pods/pull/1055)
- Developer
  - Update Yarn to v4.3.1 [[#23072]](https://github.com/ManageIQ/manageiq/pull/23072)
  - Default PostgreSQL encryption to scram-sha-256 [[#388]](https://github.com/ManageIQ/manageiq-appliance/pull/388)

**IMPORTANT**: The following are potentially breaking changes and deprecations

- \*\***BREAKING**\*\*
  - CentOS Stream 8 is no longer supported.
  - Removal of PostgreSQL 10 [[#23065]](https://github.com/ManageIQ/manageiq/pull/23065)
  - Removal of Ruby 3.0 support, Ruby 3.1 is the minimum

There are many more changes and bug fixes that would be impossible to detail in a single blog post, but you can read through them all in the [full changelog](/changelog/quinteros-2-to-radjabov-1). Many thanks goes to all of the community members for their contributions!

We are already well underway on the next release of ManageIQ: Spassky. If you're interested in getting involved, check out our [roadmap](https://manageiq.org/roadmap), check out our [community page](https://manageiq.org/community), ask questions in our [discussions forum](https://github.com/ManageIQ/manageiq/discussions), and chat with us in [Gitter](https://gitter.im/ManageIQ/manageiq). We look forward to hearing from you!
