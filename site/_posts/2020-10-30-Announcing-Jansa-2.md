---
title: "Announcing Jansa-2"
author: Fryguy
date: 2020-10-30
tags: releases announcements
comments: true
published: true
---

ManageIQ Jansa-2 is now available. This release is primarily a stabilization release and contains a number of bug fixes and performance fixes.

Some notable changes since Jansa-1 include:

### Fixed

- [Podified] Gracefully handle pod monitor exceptions [[#20695]](https://github.com/ManageIQ/manageiq/pull/20695)
- [Ansible::Runner] wait on artifacts/ to exist [[#20670]](https://github.com/ManageIQ/manageiq/pull/20670)
- [EmbeddedAnsible] Fix edit credentials [[#20524]](https://github.com/ManageIQ/manageiq/pull/20524)
- [Amazon Provider] Keep the parent manager's tenant_id in sync with its child managers [[#652]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/652)
- [oVirt Provider] Sync the tenant_id when creating a NetworkManager [[#524]](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/524)
- [VMware Provider] Fix host reconnect [[#650]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/650)
- [VMware Provider] Fix missing storages_vms_and_templates records [[#635]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/635)
- [VMware Provider] Collect customization_specs [[#614]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/614)
- [UI] Correctly render multi-tags in request details dialog [[#7419]](https://github.com/ManageIQ/manageiq-ui-classic/pull/7419)
- [UI] Fix issue during return from Set Ownership Screen to summary page of Service [[#7316]](https://github.com/ManageIQ/manageiq-ui-classic/pull/7316)
- [UI] Allow to display templates set ownership screen [[#7276]](https://github.com/ManageIQ/manageiq-ui-classic/pull/7276)

### Added

- [Build] Add RPM repo manifest [[#293]](https://github.com/ManageIQ/manageiq-appliance/pull/293)
- [VMware Provider] Collect and parse the guest ipStack dns/route info [[#591]](https://github.com/ManageIQ/manageiq-providers-vmware/pull/591)

You can download the Jansa-2 release [here](http://manageiq.org/download/).

Here are the changes (since Jansa-1) per affected repository in GitHub:
- [manageiq](https://github.com/ManageIQ/manageiq/compare/jansa-1...jansa-2)
- [manageiq-api](https://github.com/ManageIQ/manageiq-api/compare/jansa-1...jansa-2)
- [manageiq-appliance](https://github.com/ManageIQ/manageiq-appliance/compare/jansa-1...jansa-2)
- [manageiq-appliance-build](https://github.com/ManageIQ/manageiq-appliance-build/compare/jansa-1...jansa-2)
- [manageiq-pods](https://github.com/ManageIQ/manageiq-pods/compare/jansa-1...jansa-2)
- [manageiq-providers-amazon](https://github.com/ManageIQ/manageiq-providers-amazon/compare/jansa-1...jansa-2)
- [manageiq-providers-ovirt](https://github.com/ManageIQ/manageiq-providers-ovirt/compare/jansa-1...jansa-2)
- [manageiq-providers-vmware](https://github.com/ManageIQ/manageiq-providers-vmware/compare/jansa-1...jansa-2)
- [manageiq-rpm_build](https://github.com/ManageIQ/manageiq-rpm_build/compare/jansa-1...jansa-2)
- [manageiq-ui-classic](https://github.com/ManageIQ/manageiq-ui-classic/compare/jansa-1...jansa-2)
- [manageiq-ui-service](https://github.com/ManageIQ/manageiq-ui-service/compare/jansa-1...jansa-2)
- [manageiq-v2v](https://github.com/ManageIQ/manageiq-v2v/compare/jansa-1...jansa-2)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
