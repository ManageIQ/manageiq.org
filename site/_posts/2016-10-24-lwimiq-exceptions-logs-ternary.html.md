---
title: "Last Week in ManageIQ: Exceptions, Logs, and Ternary Operators!"
author: jntullo
date: 2016-10-24
comments: true
published: true
tags: LWIMIQ
---

Hello out there, Manage IQ Community. [Jillian](https://github.com/jntullo) here again with the latest edition of Last Week in Manage IQ!

## Featured
It was another productive week in ManageIQ with 478 [commits] making up the 164 [PRs merged].
No matter how many merged PRs we have in a week, there will always be a place for you to join in on the fun! Check out our [open issues] for your chance
to become one of our [contributors].

## Improved

### [Ability to use a different disk for storing log files](https://github.com/ManageIQ/manageiq/pull/12027)
This PR from [Joe](https://github.com/jvlcek) enables the configuration of an additional disk for storing EVM log files.
This enhancement will allow users to save more logfile rotations.

### [Rename Cloud Subnet MIQ Exceptions](https://github.com/ManageIQ/manageiq/pull/11741)
Exceptions became a bit clearer after this PR from [Gilles](https://github.com/gildub). He properly renamed
`MiqSubnet*` exceptions to `MiqCloudSubnet*` exceptions.

## Fixed

### [Fix issue with #verify_credentials after updating ansible_tower_client](https://github.com/ManageIQ/manageiq/pull/12107)
A pull request doesn't have to be massive to be important, as [Brandon](https://github.com/bdunne) proved with a one line
fix to credential verification. 

### [Ensure spinner gets turned off](https://github.com/ManageIQ/manageiq/pull/12080)
During a git import, you'll no longer be stuck with an infinite spinner when there's an error thanks to a fix by [Erik](https://github.com/eclarizio).

## New

### [Support for self-signed certificates in Git Repositories](https://github.com/ManageIQ/manageiq/pull/11963)
When importing new repositories, users may now disable certificate validation which creates
support for git repositories that use self-signed certificates. This enhancement comes
from [Madhu](https://github.com/mkanoor).

### [Allow VMs with unknown power state to retire](https://github.com/ManageIQ/manageiq/pull/11261)
[Bill](https://github.com/billfitzgerald0120) has added the ability to retire VMs with an unknown power state 
by proceeding past the `check_pre_retirement` automate method. 

## Deleted

### [Remove duplicate function to handle tags editor](https://github.com/ManageIQ/manageiq/pull/11987)
Deleting code is always good, especially when it removes duplicate functions. [Šimon](https://github.com/isimluk) 
did just that this week by removing `rbac_tags_set_from_vars`, which was a duplicate of `x_tags_set_from_vars`.

### [Remove Unnecessary Ternary Operators](https://github.com/ManageIQ/manageiq/pull/12012)
[Roman](https://github.com/romanblanco) improved toolbar builder by deleting some unnecessary ternary operators.

## Wrapping up
Thanks for joining us for another edition of LWIMIQ. See you next week!

[open issues]: https://github.com/ManageIQ/manageiq/issues
[contributors]: https://github.com/ManageIQ/manageiq/graphs/contributors
[PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-10-17+..+2016-10-23%22+sort%3Acreated-desc&utf8=%E2%9C%93
[commits]: https://github.com/manageiq/manageiq/compare/master@%7B2016-10-17%7D...@%7B2016-10-23%7D
