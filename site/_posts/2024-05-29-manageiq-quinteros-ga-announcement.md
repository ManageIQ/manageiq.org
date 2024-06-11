---
title: ManageIQ Quinteros GA Announcement
author: Fryguy
date: 2024-05-29
comments: true
published: true
tags: releases announcements
---

On behalf of the ManageIQ team, I'm happy to announce the release of **ManageIQ Quinteros**! This release is named after the chess grandmaster [Miguel Quinteros](https://en.wikipedia.org/wiki/Miguel_Quinteros). You can download the Quinteros-1 release on our [downloads page](/download).

Here are the highlights of the [Quinteros release](https://github.com/orgs/ManageIQ/projects/13#column-19503919):

- Providers
  - General
    - Allow non-Rails provider workers for reduced memory usage [[#21992]](https://github.com/ManageIQ/manageiq/issues/21992)
    - Allow Kafka for events [[#20027]](https://github.com/ManageIQ/manageiq/issues/20027)
  - Google Cloud
    - Fix google API pagination [[#254]](https://github.com/ManageIQ/manageiq-providers-google/pull/254)
  - IBM CIC
    - Add service catalog support [[#28]](https://github.com/ManageIQ/manageiq-providers-ibm_cic/issues/28)
  - IBM Cloud PowerVS
    - Retirement settings upon VM provision in PowerVS [[#460]](https://github.com/ManageIQ/manageiq-providers-ibm_cloud/pull/460)
  - IBM PowerVC
    - Add support for Ceilometer events [[#75]](https://github.com/ManageIQ/manageiq-providers-ibm_power_vc/issues/75)
  - VMware
    - Enable non-Rails event catcher by default (80%+ memory reduction!) [[#894]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/894)
- Core
  - First phase of the new "Embedded Workflows" engine completed. This new feature uses Amazon States Language to define workflows that can be used to automate complex tasks, and is designed as a future replacement for Automate. Admins can create custom docker images that will execute the "tasks" within the workflow. While this first phase is complete, we still believe it to be in prototype and is not recommended for production use at this time, and will be ultimately completed in the Radjabov release. UI work is listed below in the UI section. [[#22302](https://github.com/ManageIQ/manageiq/issues/22302)]
  - Add sorting by date and project to Chargeback reports [[#8763]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8763)
  - Separate out role access restrictions for catalog items [[#22573]](https://github.com/ManageIQ/manageiq/pull/22573)
  - Add an AutomationWorker to orchestrate workflows/playbooks [[#22710]](https://github.com/ManageIQ/manageiq/pull/22710)
  - [Performance] Better support archived records in VimPerformanceStates [[#22593]](https://github.com/ManageIQ/manageiq/issues/22593)
  - VimPerformanceState#purge_timer for old records [[#22605]](https://github.com/ManageIQ/manageiq/pull/22605)
- UI
  - Add presentation of the ansible playbook contents [[#8922]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8922)
  - Add checking of which attached resources are compliant with the selected capabilities to the Storage Service edit screen [[#8749]](https://github.com/ManageIQ/manageiq-ui-classic/issues/8749)
  - Workflows
    - Added Embedded Workflows / Credentials Page [[#8834]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8834)
    - Credential Mapping Form [[#8905](https://github.com/ManageIQ/manageiq/issues/8905)]
    - Add workflow status list in request's show page [[#8782]](https://github.com/ManageIQ/manageiq-ui-classic/pull/8782)
    - Add workflow status list in tasks detail page [[#9000](https://github.com/ManageIQ/manageiq/issues/9000)]
  - More page conversions from Angular to React [[#9032]](https://github.com/ManageIQ/manageiq-ui-classic/issues/9032)
  - More page conversions from HAML to React [[#9035]](https://github.com/ManageIQ/manageiq-ui-classic/issues/9035)
- API
  - Add support for edit configuration_script_payloads [[#1231]](https://github.com/ManageIQ/manageiq-api/pull/1231)
- Build
  - Require Kafka [[#22225]](https://github.com/ManageIQ/manageiq/issues/22225)
  - [Containerized] Added ManageIQ Status with conditions, versions and ingress endpoint info [[#973]](https://github.com/ManageIQ/manageiq-pods/pull/973)
- Developer
  - Drop Ruby 2.7 support [[#22768]](https://github.com/ManageIQ/manageiq/pull/22768)
  - Update to yarn v4.0.2 [[#22791]](https://github.com/ManageIQ/manageiq/pull/22791)
  - Move to use zeitwerk autoloader instead of classic autoloader in preparation for Rails 7 support [[#22000]](https://github.com/ManageIQ/manageiq/issues/22000)
  - Introduce Cypress Tests for UI testing [[#8946]](https://github.com/ManageIQ/manageiq-ui-classic/issues/8946)

**IMPORTANT**: The following are potentially breaking changes and deprecations

- \*\***BREAKING**\*\*
  - Removal of PostgreSQL 10
  - Removal of Ruby 2.7 support
- Deprecations
  - CentOS Stream 8 is no longer supported. In the Radjabov release we will be moving completely to CentOS Stream 9 on appliances, and to UBI9 on containers. As such, there will be no direct upgrade path on appliances from the Quinteros release to the Radjabov release, and it will require full appliance replacement. Please take this into consideration when preparing for the next release.

There are many more changes and bug fixes that would be impossible to detail in a single blog post. Many thanks goes to all of the community members for their contributions!

We are already well underway on the next release of ManageIQ: Radjabov. If you're interested in getting involved, check out our [roadmap](https://manageiq.org/roadmap), check out our [community page](https://manageiq.org/community), ask questions in our [discussions forum](https://github.com/ManageIQ/manageiq/discussions), and chat with us in [Gitter](https://gitter.im/ManageIQ/manageiq). We look forward to hearing from you!
