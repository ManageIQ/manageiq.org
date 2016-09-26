---
title: "Last Week in ManageIQ: Speedups, Chargebacks, Toolbars, and more!"
date: 2016-08-29
author: jntullo
tags: LWIMIQ
comments: true
published: true
---

[Jillian](https://github.com/jntullo) here to guide you through another edition of Last Week in ManageIQ. Let's get this show on the road and explore what we've accomplished last week!

## Featured
As usual, we had a great week in ManageIQ with 92 pull requests merged from our awesome [contributors](https://github.com/ManageIQ/manageiq/graphs/contributors). Next week, one of them could be you! 
Head on over to our [issues](https://github.com/manageiq/manageiq/issues) to see where you can contribute - we'd love to have you.

## Improved

### [Index Speedup](https://github.com/ManageIQ/manageiq/pull/10685)
_VMs & Instances in My LDAP Group_ index and ajax calls in `/vm_or_template` received an awesome speedup this week
thanks to the work of [Nick LaMuro](https://github.com/NickLaMuro). Head on over to the PR to view the improvement statistics.

### [Setup and Update Failure Report](https://github.com/ManageIQ/manageiq/pull/10745)
Thanks to [Joe VLcek](https://github.com/jvlcek), `bin/setup` and `bin/update` will now report any commands that have failed and exit the script. This should be a helpful addition to developers, 
as they will no longer have to assume that those commands executed correctly.

## Fixed

### [Multi-rate chargeback reports could not be queued](https://github.com/ManageIQ/manageiq/pull/10812)
Multi-rate chargebacks can now be queued again, as [Libor Pichler](https://github.com/lpichler) resolved the issue by adding in the missing providers.

### [Angular Toolbars in Production](https://github.com/ManageIQ/manageiq/pull/10751)
Angular toolbars were failing to load in Production mode, but were fixed by [Aparna Karve](https://github.com/AparnaKarve).

## New

### [Vmware vCloud NetworkManager](https://github.com/ManageIQ/manageiq/pull/10550)
vCloud users will be happy with this addition from [Miha Plesko](https://github.com/miha-plesko), which adds a NetworkManager for this provider.

### [Disks management for RHEVM provider in 'Reconfigure VM'](https://github.com/ManageIQ/manageiq/pull/10364)
This pull request by [Moti Asayag](https://github.com/masayag) 
> adds support for RHEVM providers to add or remove disks from a VM as part of the 'Reconfigure VM' dialog.

## Deleted

### [Out with TODO clutter!](https://github.com/ManageIQ/manageiq/pull/10773)
[Ladislav Smola](https://github.com/Ladas) was kind enough to remove some outdated TODOs from 
`save_inventory_network`. It's always nice to get rid of TODO clutter.

### [Remove CloudManager Relationships from a NetworkManager](https://github.com/ManageIQ/manageiq/pull/10768)
[Ladislav Smola](https://github.com/Ladas)  was having fun with removals this week, as he also removed some `CloudManager` relationships from `NetworkManager`
which resolved confusion in some back buttons.

## Wrapping Up
There's a lot more where those PRs came from, so head on over [here][PRs merged last week] to
check them all out. We'll be back next week, same place, same time, for another edition of *Last Week in ManageIQ*!

[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-08-22+..+2016-08-28%22+sort%3Acreated-desc&utf8=
