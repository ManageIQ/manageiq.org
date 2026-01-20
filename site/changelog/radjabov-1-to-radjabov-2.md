---
layout: page
title: Changelog from Radjabov-1 to Radjabov-2
---

## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq](https://github.com/ManageIQ/manageiq/compare/radjabov-1...radjabov-2)

### Bug (Security)

* Fix issue where TimeProfile#profile was not validated [[CVE-2026-22598]](https://github.com/ManageIQ/manageiq/security/advisories/GHSA-m832-x3g8-63j3)

### Bug

* Fix metric/ci_mixin_spec using kubevirt vm [[#23293]](https://github.com/ManageIQ/manageiq/pull/23293)
* ConnectionPool v3.0 introduces breaking changes [[#23669]](https://github.com/ManageIQ/manageiq/pull/23669)
* Call sync_from_system before_sync_workers at startup [[#23309]](https://github.com/ManageIQ/manageiq/pull/23309)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-automation_engine](https://github.com/ManageIQ/manageiq-automation_engine/compare/radjabov-1...radjabov-2)

### Bug

* Fix YAML.load error with serialized StateVarHash [[#572]](https://github.com/ManageIQ/manageiq-automation_engine/pull/572)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-documentation](https://github.com/ManageIQ/manageiq-documentation/compare/radjabov-1...radjabov-2)

### Bug

* Fix broken link to azure docs for adding an App [[#1841]](https://github.com/ManageIQ/manageiq-documentation/pull/1841)
* Mark Events as supported on IBM Cloud PowerVS [[#1852]](https://github.com/ManageIQ/manageiq-documentation/pull/1852)
* Fix menu link for Automation Management Providers [[#1856]](https://github.com/ManageIQ/manageiq-documentation/pull/1856)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-pods](https://github.com/ManageIQ/manageiq-pods/compare/radjabov-1...radjabov-2)

### Bug

* Removing subscription-manager also removes config-manager now [[#1246]](https://github.com/ManageIQ/manageiq-pods/pull/1246)

### Other

* Bump packages as 9.0-24 packages are no longer on the mirrors [[#1328]](https://github.com/ManageIQ/manageiq-pods/pull/1328)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-amazon](https://github.com/ManageIQ/manageiq-providers-amazon/compare/radjabov-1...radjabov-2)

### Other

* Fix missing required params in AWS auth stubs [[#888]](https://github.com/ManageIQ/manageiq-providers-amazon/pull/888)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-google](https://github.com/ManageIQ/manageiq-providers-google/compare/radjabov-1...radjabov-2)

### Bug

* Update to fog-google v1.25.0 [[#276]](https://github.com/ManageIQ/manageiq-providers-google/pull/276)
* Add checks for instances without a disk during refresh [[#274]](https://github.com/ManageIQ/manageiq-providers-google/pull/274)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-providers-kubernetes](https://github.com/ManageIQ/manageiq-providers-kubernetes/compare/radjabov-1...radjabov-2)

### Bug

* Fix Scanning Job spec failure private method [[#550]](https://github.com/ManageIQ/manageiq-providers-kubernetes/pull/550)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-rpm_build](https://github.com/ManageIQ/manageiq-rpm_build/compare/radjabov-1...radjabov-2)

### Bug

* [spassky] lockdown bundler [[#607]](https://github.com/ManageIQ/manageiq-rpm_build/pull/607)

### Other

* Bump packages as 9.0-24 packages are no longer on the mirrors [[#606]](https://github.com/ManageIQ/manageiq-rpm_build/pull/606)


## <i class="fa-brands fa-github"></i> [ManageIQ/manageiq-ui-classic](https://github.com/ManageIQ/manageiq-ui-classic/compare/radjabov-1...radjabov-2)

### Bug

* Fix the missing service vms table [[#9463]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9463)
* Fix settings authentication form provider type ids [[#9392]](https://github.com/ManageIQ/manageiq-ui-classic/pull/9392)
