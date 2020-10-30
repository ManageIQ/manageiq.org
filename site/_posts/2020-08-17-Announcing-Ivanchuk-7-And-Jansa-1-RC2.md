---
title: Announcing Ivanchuk-7 and Jansa-1 RC2
author: fryguy
date: 2020-08-17 13:01:13 UTC
comments: true
published: true
tags: releases announcements
---

ManageIQ Ivanchuk-7 and Jansa-1 RC2 are now available. These releases are primarily security fix releases, after extensive security testing. Many thanks goes to the IBM Security team for finding and reporting these vulnerabilities.

## Security Issues

### Critical severity

- [CVE-2020-14325 - User Impersonation in the API for OIDC and SAML](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-84f5-5g5v-g8vr)

### High severity

- [CVE-2020-10778 - Business logic bypass through widgets](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-2r6j-p8gp-5649)
- [CVE-2020-10779 - Missing functional level access control & IDOR lead to compromise](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-cqhg-v344-cfh6)
- [CVE-2020-14324 - Out-of-band OS Command Injection through conversion host](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-6q9c-cc8x-6x5f) (Ivanchuk only)

### Moderate severity

- [CVE-2020-10777 - Cross Site Scripting in report menu title / HTML Code Injection](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-64x7-6p52-c927)
- [CVE-2020-10780 - CSV Injection in Orchestration Templates](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-fvwm-rpxw-jgcx)
- [CVE-2020-10783 - Missing access control leads to escalation of admin group privileges](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-h59j-h2m8-8rf2)
- [CVE-2020-14296 - Server-Side Request Forgery (SSRF) in Ansible Tower Provider ](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-p229-rfp6-7w8w)
- [Host Header Injection](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-rc7q-jcrc-v4wc)

## Other notable changes

### Ivanchuk-7

#### Fixed
- DialogFieldTagControl - don't add \<None> for multiselects ([#19696](https://github.com/manageiq/manageiq/pull/19696))
- Fix vm retirement initiated on global region ([#20244](https://github.com/manageiq/manageiq/pull/20244))
- Fixed Settings hierarchy on Global region ([#20299](https://github.com/manageiq/manageiq/pull/20299))
- [Automation Engine] Prevent git import to overwrite base system domain in datastore ([manageiq-automation\_engine#355](https://github.com/manageiq/manageiq-automation_engine/pull/355))
- [Pods] Add ansible-runner ([manageiq-pods#561](https://github.com/manageiq/manageiq-pods/pull/561))
- [Openstack Provider] Skip Volumes without mountpoint in VM refresh ([manageiq-providers-openstack#517](https://github.com/manageiq/manageiq-providers-openstack/pull/517))
- [UI] MiqTask to get stdout for Ansible should be owned by user who requested view ([manageiq-ui-classic#7093](https://github.com/manageiq/manageiq-ui-classic/pull/7093))

#### Added
- Add support for Service request copy ([#18859](https://github.com/manageiq/manageiq/pull/18859))
- [Automation Engine] Update object based on ansible set_stats data ([manageiq-automation\_engine#381](https://github.com/manageiq/manageiq-automation_engine/pull/381))
- [Automation Engine] Update service_vars with playbook set_stats data ([manageiq-automation\_engine#399](https://github.com/manageiq/manageiq-automation_engine/pull/399))
- [Openstack Provider] Add STF Event monitor backend ([manageiq-providers-openstack#556](https://github.com/manageiq/manageiq-providers-openstack/pull/556))
- [oVirt Provider] Vm disk resize ([manageiq-providers-ovirt#483](https://github.com/manageiq/manageiq-providers-ovirt/pull/483))
- [UI] Enable Copy feature for ServiceRequests ([manageiq-ui-classic#5539](https://github.com/manageiq/manageiq-ui-classic/pull/5539))
- [UI] Catalog Item: allow for selecting / deselecting whole tenant subtree ([manageiq-ui-classic#7142](https://github.com/manageiq/manageiq-ui-classic/pull/7142))
- [UI] Allow for file:// urls in git repository ([manageiq-ui-classic#7105](https://github.com/manageiq/manageiq-ui-classic/pull/7105))

Here are the changes (since Ivanchuk-6) per affected repository in GitHub:
- [manageiq](https://github.com/ManageIQ/manageiq/compare/ivanchuk-6...ivanchuk-7)
- [manageiq-api](https://github.com/ManageIQ/manageiq-api/compare/ivanchuk-6...ivanchuk-7)
- [manageiq-appliance](https://github.com/ManageIQ/manageiq-appliance/compare/ivanchuk-6...ivanchuk-7)
- [manageiq-appliance-build](https://github.com/ManageIQ/manageiq-appliance-build/compare/ivanchuk-6...ivanchuk-7)
- [manageiq-automation_engine](https://github.com/ManageIQ/manageiq-automation_engine/compare/ivanchuk-6...ivanchuk-7)
- [manageiq-content](https://github.com/ManageIQ/manageiq-content/compare/ivanchuk-6...ivanchuk-7)
- [manageiq-pods](https://github.com/ManageIQ/manageiq-pods/compare/ivanchuk-6...ivanchuk-7)
- [manageiq-providers-ansible_tower](https://github.com/ManageIQ/manageiq-providers-ansible_tower/compare/ivanchuk-6...ivanchuk-7)
- [manageiq-providers-openstack](https://github.com/ManageIQ/manageiq-providers-openstack/compare/ivanchuk-6...ivanchuk-7)
- [manageiq-providers-ovirt](https://github.com/ManageIQ/manageiq-providers-ovirt/compare/ivanchuk-6...ivanchuk-7)
- [manageiq-ui-classic](https://github.com/ManageIQ/manageiq-ui-classic/compare/ivanchuk-6...ivanchuk-7)
- [manageiq-ui-service](https://github.com/ManageIQ/manageiq-ui-service/compare/ivanchuk-6...ivanchuk-7)

### Jansa-1 RC2

#### Fixed
- Call `column_type` on parsed field to get the actual column type ([#20398](https://github.com/manageiq/manageiq/pull/20398))
- [API] Updated the API to return nil virtual attributes and associations ([manageiq-api#875](https://github.com/manageiq/manageiq-api/pull/875))
- [Amazon Provider] Update volume_id fetching for volume modification events ([manageiq-providers-amazon#639](https://github.com/manageiq/manageiq-providers-amazon/pull/639))

Here are the changes (since Jansa-1 RC1) per affected repository in GitHub:
- [manageiq](https://github.com/ManageIQ/manageiq/compare/jansa-1-rc1...jansa-1-rc2)
- [manageiq-api](https://github.com/ManageIQ/manageiq-api/compare/jansa-1-rc1...jansa-1-rc2)
- [manageiq-appliance](https://github.com/ManageIQ/manageiq-appliance/compare/jansa-1-rc1...jansa-1-rc2)
- [manageiq-appliance-build](https://github.com/ManageIQ/manageiq-appliance-build/compare/jansa-1-rc1...jansa-1-rc2)
- [manageiq-content](https://github.com/ManageIQ/manageiq-content/compare/jansa-1-rc1...jansa-1-rc2)
- [manageiq-pods](https://github.com/ManageIQ/manageiq-pods/compare/jansa-1-rc1...jansa-1-rc2)
- [manageiq-providers-amazon](https://github.com/ManageIQ/manageiq-providers-amazon/compare/jansa-1-rc1...jansa-1-rc2)
- [manageiq-providers-ansible_tower](https://github.com/ManageIQ/manageiq-providers-ansible_tower/compare/jansa-1-rc1...jansa-1-rc2)
- [manageiq-providers-lenovo](https://github.com/ManageIQ/manageiq-providers-lenovo/compare/jansa-1-rc1...jansa-1-rc2)
- [manageiq-providers-openstack](https://github.com/ManageIQ/manageiq-providers-openstack/compare/jansa-1-rc1...jansa-1-rc2)
- [manageiq-providers-vmware](https://github.com/ManageIQ/manageiq-providers-vmware/compare/jansa-1-rc1...jansa-1-rc2)
- [manageiq-ui-classic](https://github.com/ManageIQ/manageiq-ui-classic/compare/jansa-1-rc1...jansa-1-rc2)

You can download the Ivanchuk-7 and Jansa-1 RC2 releases [here](http://manageiq.org/download/).

For questions or support, [join in on the talk page](http://talk.manageiq.org/).
