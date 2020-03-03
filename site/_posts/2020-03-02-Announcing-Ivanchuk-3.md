---
title: Announcing Ivanchuk-3
author: mfeifer
date: 2020-03-01 19:12:13 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Ivanchuk-3. This release contains bug fixes, UI tweaks, and stabilization.
Here are just a few of the things added since the Ivanchuk-2 release:

### Added
* Updated rubyzip gem to version 2 [(#19629)](https://github.com/ManageIQ/manageiq/pull/19629)
* Updated linux_admin gem to version 2 [(#19639)](https://github.com/ManageIQ/manageiq/pull/19639)
* Adding Volume Snapshot (CloudVolumeSnapshot) to RBAC [(#19356)](https://github.com/ManageIQ/manageiq/pull/19356)
* Adding Volume Type (CloudVolumeType) to RBAC [(#19408)](https://github.com/ManageIQ/manageiq/pull/19408)

### Fixed
* Adding task error status to log management [(#19480)](https://github.com/ManageIQ/manageiq/pull/19480)
* Fixed Cockpit, Web console access [(#19631)](https://github.com/ManageIQ/manageiq/pull/19631)
* Cleanup after Ansible runner. [(#19383)](https://github.com/ManageIQ/manageiq/pull/19383)
* Fix key_pair class lookup [(#19486)](https://github.com/ManageIQ/manageiq/pull/19486)

### Security
* A flaw triggered remote code execution through NFS schedule backup[(CVE-2019-14894)](https://access.redhat.com/security/cve/cve-2019-14894)

You can download the Ivanchuk-3 release [here](http://manageiq.org/download/).

Here is the changelog:
[Ivanchuk-3](https://github.com/ManageIQ/manageiq/blob/ivanchuk/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
