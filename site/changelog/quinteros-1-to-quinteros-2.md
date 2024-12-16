---
layout: page
title: Changelog from Quinteros-1 to Quinteros-2
---

## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq](https://github.com/ManageIQ/manageiq/compare/quinteros-1...quinteros-2.2)

### Bug (Security)

* Encrypt verify_credentials params before MiqQueue [[CVE-2023-46175]](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-pfh3-vj6p-89h9)
* Extend wrapped_logger formatter if one is present [[CVE-2023-46175]](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-pfh3-vj6p-89h9)
* Filter out Basic Authorization tokens [[CVE-2023-46175]](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-pfh3-vj6p-89h9)
* Fix YAML imports to only accept specific types. [[CVE-2024-43191]](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-pgw4-pqv6-rfvx)

### Enhancement

* Add workflow_dispatch to allow manually triggering monolithic builds [[#22997]](https://github.com/ManageIQ/manageiq/pull/22997)

### Other

* [QUINTEROS] Update Gemfile.lock.release for various security issues [[#23223]](https://github.com/ManageIQ/manageiq/pull/23223)
* Remove CVE-2024-26143 as rails 6.1 is not vulnerable [[#22913]](https://github.com/ManageIQ/manageiq/pull/22913)
* Force rails 6.1.7.7 minimum version [[#22910]](https://github.com/ManageIQ/manageiq/pull/22910)
* Temporarily ignore non-critical CVE as we upgrade to rails 7 [[#22909]](https://github.com/ManageIQ/manageiq/pull/22909)

## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-api](https://github.com/ManageIQ/manageiq-api/compare/quinteros-1...quinteros-2.2)

### Bug

* [QUINTEROS] Fix Host verify_credentials_task password expectation [[#1272]](https://github.com/ManageIQ/manageiq-api/pull/1272)
* Fix Host verify_credentials_task password expectation [[#1271]](https://github.com/ManageIQ/manageiq-api/pull/1271)
* Fix CloudNetworks spec with empty including() [[#1267]](https://github.com/ManageIQ/manageiq-api/pull/1267)

## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-appliance-build](https://github.com/ManageIQ/manageiq-appliance-build/compare/quinteros-1...quinteros-2.2)

### Bug

* [quinteros] Lock down to ruby 3.0.4 from Appstream [[#579]](https://github.com/ManageIQ/manageiq-appliance-build/pull/579)
* [quinteros] Update CentOS Stream 8 repos [[#575]](https://github.com/ManageIQ/manageiq-appliance-build/pull/575)

## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-documentation](https://github.com/ManageIQ/manageiq-documentation/compare/quinteros-1...quinteros-2.2)

### Bug

* QA Updated KubeVirt references [[#1797]](https://github.com/ManageIQ/manageiq-documentation/pull/1797)
* QA Updated images. [[#1785]](https://github.com/ManageIQ/manageiq-documentation/pull/1785)

### Enhancement

* LVM guidelines for ISCSI/FC SmartState Analysis [[#1782]](https://github.com/ManageIQ/manageiq-documentation/pull/1782)

### Other

* QA Removed SCVMM provider [[#1816]](https://github.com/ManageIQ/manageiq-documentation/pull/1816)

## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-gems-pending](https://github.com/ManageIQ/manageiq-gems-pending/compare/quinteros-1...quinteros-2.2)

### Bug

* Fix MiqXml handling of BOM + handle CVE-2024-39908 [[#581]](https://github.com/ManageIQ/manageiq-gems-pending/pull/581)

### Other

* [QUINTEROS] Fix rspec version used to match core's version [[#594]](https://github.com/ManageIQ/manageiq-gems-pending/pull/594)
* Bump rexml to 3.3.6 for CVE-2024-43398 [[#589]](https://github.com/ManageIQ/manageiq-gems-pending/pull/589)
* Upgrade rexml to 3.3.3+ for CVE-2024-41123 and CVE-2024-41946 [[#582]](https://github.com/ManageIQ/manageiq-gems-pending/pull/582)

## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-pods](https://github.com/ManageIQ/manageiq-pods/compare/quinteros-1...quinteros-2.2)

### Bug

* [quinteros] Lock down to ruby 3.0.4 from Appstream [[#1186]](https://github.com/ManageIQ/manageiq-pods/pull/1186)

## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-ansible_tower](https://github.com/ManageIQ/manageiq-providers-ansible_tower/compare/quinteros-1...quinteros-2.2)

### Bug (Security)

* Use ProviderSdkLogger as the class for ansible_tower_log [[CVE-2023-46175]](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-pfh3-vj6p-89h9)

## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-autosde](https://github.com/ManageIQ/manageiq-providers-autosde/compare/quinteros-1...quinteros-2.2)

### Bug (Security)

* Don't log the token during re-auth [[CVE-2023-46175]](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-pfh3-vj6p-89h9)

## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-awx](https://github.com/ManageIQ/manageiq-providers-awx/compare/quinteros-1...quinteros-2.2)

### Bug (Security)

* Use ProviderSdkLogger as the class for awx_log [[CVE-2023-46175]](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-pfh3-vj6p-89h9)

## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-kubernetes](https://github.com/ManageIQ/manageiq-providers-kubernetes/compare/quinteros-1...quinteros-2.2)

### Bug

* [QUINTEROS] JSON parse prometheus_alert client responses [[#541]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/541)

## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-lenovo](https://github.com/ManageIQ/manageiq-providers-lenovo/compare/quinteros-1...quinteros-2.2)

### Bug (Security)

* Use ProviderSdkLogger as the class for xclarity_log [[CVE-2023-46175]](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-pfh3-vj6p-89h9)

## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-rpm_build](https://github.com/ManageIQ/manageiq-rpm_build/compare/quinteros-1...quinteros-2.2)

### Bug

* [quinteros] Allow timestamped release builds [[#482]](https://github.com/ManageIQ/manageiq-rpm_build/pull/482)
* [quinteros] Lock down to ruby 3.0.4 from Appstream [[#521]](https://github.com/ManageIQ/manageiq-rpm_build/pull/521)

## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-ui-classic](https://github.com/ManageIQ/manageiq-ui-classic/compare/quinteros-1...quinteros-2.2)

### Bug

* Fix automate specs [[#9226]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9226)
* Fix the VM Infra button checking EmsCloud providers [[#9249]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9249)
