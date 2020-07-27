---
title: Announcing Ivanchuk-6
author: chessbyte
date: 2020-07-27 19:12:13 UTC
comments: true
published: true
tags: releases announcements
---

ManageIQ Ivanchuk-6 is now available. This release contains bug fixes, UI tweaks, and stabilization.
Here are just some of the things added since the Ivanchuk-5 release:

### Fixed
* Allow embedded_ansible role on multiple appliances [(#19162)](https://github.com/ManageIQ/manageiq/pull/19162)
* Fixed cockpit process starting [(#20077)](https://github.com/ManageIQ/manageiq/pull/20077)
* Addressed [Possible Information Leak / Session Hijack Vulnerability](https://github.com/rack/rack/security/advisories/GHSA-hrqr-hxpp-chr3) by using the proper version of the `rack` gem [(#20210)](https://github.com/ManageIQ/manageiq/pull/20210)
* [API] Add name to valid edit attributes for vms [(ManageIQ/manageiq-api#832)](https://github.com/ManageIQ/manageiq-api/pull/832)
* [AWS] Check instance exists before getting status during provisioning [(ManageIQ/manageiq-providers-amazon#604)](https://github.com/ManageIQ/manageiq-providers-amazon/pull/604)
* [AWS] Update Floating IP target and event collection [(ManageIQ/manageiq-providers-amazon#618)](https://github.com/ManageIQ/manageiq-providers-amazon/pull/618)
* [Ansible Tower] Catch exceptions when parsing job_templates [(ManageIQ/manageiq-providers-ansible_tower#218)](https://github.com/ManageIQ/manageiq-providers-ansible_tower/pull/218)
* [Automation Engine] Add cc and bcc into builtin method send_email's inputs fields [(ManageIQ/manageiq-automation_engine#404)](https://github.com/ManageIQ/manageiq-automation_engine/pull/404)
* [Classic UI] Provision Dialog (prov_dialog) customize - do not fail when no :sysprep_enabled [(ManageIQ/manageiq-ui-classic#6953)](https://github.com/ManageIQ/manageiq-ui-classic/pull/6953)
* [Classic UI] Remove Tags from Network Topology View and others so as to limit the ability for users to see other users' tags [(ManageIQ/manageiq-ui-classic#6351)](https://github.com/ManageIQ/manageiq-ui-classic/pull/6351)
* [Classic UI] Fix cancel, save and select_tree actions in breadcrumbs and title in PXE menu section [(ManageIQ/manageiq-ui-classic#7045)](https://github.com/ManageIQ/manageiq-ui-classic/pull/7045)
* [Classic UI] Fix breadcrumbs for Dashboard Widgets [(ManageIQ/manageiq-ui-classic#7063)](https://github.com/ManageIQ/manageiq-ui-classic/pull/7063)
* [Classic UI] Add reconfigureMode parameter to dialog-user [(ManageIQ/manageiq-ui-classic#7074)](https://github.com/ManageIQ/manageiq-ui-classic/pull/7074)

You can download the Ivanchuk-6 release [here](http://manageiq.org/download/).

Here are the changes (since Ivanchuk-5) per affected repository in GitHub:
- [manageiq](https://github.com/ManageIQ/manageiq/compare/ivanchuk-5...ivanchuk-6)
- [manageiq-api](https://github.com/ManageIQ/manageiq-api/compare/ivanchuk-5...ivanchuk-6)
- [manageiq-automation_engine](https://github.com/ManageIQ/manageiq-automation_engine/compare/ivanchuk-5...ivanchuk-6)
- [manageiq-content](https://github.com/ManageIQ/manageiq-content/compare/ivanchuk-5...ivanchuk-6)
- [manageiq-providers-amazon](https://github.com/ManageIQ/manageiq-providers-amazon/compare/ivanchuk-5...ivanchuk-6)
- [manageiq-providers-ansible_tower](https://github.com/ManageIQ/manageiq-providers-ansible_tower/compare/ivanchuk-5...ivanchuk-6)
- [manageiq-ui-classic](https://github.com/ManageIQ/manageiq-ui-classic/compare/ivanchuk-5...ivanchuk-6)
- [manageiq-v2v](https://github.com/ManageIQ/manageiq-v2v/compare/ivanchuk-5...ivanchuk-6)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
