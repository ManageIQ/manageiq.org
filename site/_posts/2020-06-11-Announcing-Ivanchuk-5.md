---
title: Announcing Ivanchuk-5
author: chessbyte
date: 2020-06-11 19:12:13 UTC
comments: true
published: true
tags: releases announcements
---

We have built Ivanchuk-5. This release contains bug fixes, UI tweaks, and stabilization.
Here are just some of the things added since the Ivanchuk-4 release:

### Added
* [V2V] Add VMware host credentials check to migration preflight check [(#19882)](https://github.com/ManageIQ/manageiq/pull/19882)
* [V2V] Preflight check: verify if a VM with same name already exists in destination [(#19911)](https://github.com/ManageIQ/manageiq/pull/19911)
* [V2V] Allow selecting a VMware host IP address for VM transformation [(#19954)](https://github.com/ManageIQ/manageiq/pull/19954)
* Allow a `*` glob within a file path in a SmartState Analysis profile [(#20025)](https://github.com/ManageIQ/manageiq/pull/20025)
* Make GuestDevice taggable [(#19549)](https://github.com/ManageIQ/manageiq/pull/19549)

### Fixed
* Unable to retire a VM via REST API [(#19855)](https://github.com/ManageIQ/manageiq/pull/19855) and [(manageiq-api/#743)](https://github.com/ManageIQ/manageiq-api/pull/743)
* Add display name for OpenStack Cinder Manager [(#19909)](https://github.com/ManageIQ/manageiq/pull/19909)
* Add CloudTenant relationship in VM class [(#19914)](https://github.com/ManageIQ/manageiq/pull/19914)
* Embedded Ansible should handle Playbooks with git submodules [#(19939)](https://github.com/ManageIQ/manageiq/pull/19939) and [(#19959)](https://github.com/ManageIQ/manageiq/pull/19959)
* [V2V] Do not wait for VM IP address if no Ansible playbook will run [(#19979)](https://github.com/ManageIQ/manageiq/pull/19979)
* Incorrect timezone shown in the Data View of a saved report [(#19285)](https://github.com/ManageIQ/manageiq/pull/19285)

You can download the Ivanchuk-5 release [here](http://manageiq.org/download/).

Here are the changes (since Ivanchuk-4) per affected repository in GitHub:
- [manageiq](https://github.com/ManageIQ/manageiq/compare/ivanchuk-4...ivanchuk-5)
- [manageiq-api](https://github.com/ManageIQ/manageiq-api/compare/ivanchuk-4...ivanchuk-5)
- [manageiq-automation_engine](https://github.com/ManageIQ/manageiq-automation_engine/compare/ivanchuk-4...ivanchuk-5)
- [manageiq-content](https://github.com/ManageIQ/manageiq-content/compare/ivanchuk-4...ivanchuk-5)
- [manageiq-providers-google](https://github.com/ManageIQ/manageiq-providers-google/compare/ivanchuk-4...ivanchuk-5)
- [manageiq-providers-openstack](https://github.com/ManageIQ/manageiq-providers-openstack/compare/ivanchuk-4...ivanchuk-5)
- [manageiq-providers-ovirt](https://github.com/ManageIQ/manageiq-providers-ovirt/compare/ivanchuk-4...ivanchuk-5)
- [manageiq-ui-classic](https://github.com/ManageIQ/manageiq-ui-classic/compare/ivanchuk-4...ivanchuk-5)
- [manageiq-v2v](https://github.com/ManageIQ/manageiq-v2v/compare/ivanchuk-4...ivanchuk-5)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
