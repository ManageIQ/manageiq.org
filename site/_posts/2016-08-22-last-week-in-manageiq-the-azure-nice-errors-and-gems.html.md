---
title: "Last Week in ManageIQ: The Azure, nice errors, and gems"
date: 2016-08-22 07:30 UTC
author: juliancheal
tags: LWIMIQ
comments: true
published: true
---

What ho! Welcome to another jolly edition of Last Week in ManageIQ. [Julian](https://juliancheal.co.uk) here, hailing from the Providers team. Let's put the kettle on and take a look over what's happened this last week in ManageIQ.

## Featured

We've had a spiffing week with [167 pull requests merged][PRs merged last week] from our marvellous contributors. ManageIQ always welcomes new contributors, we have a great list of
[issues](https://github.com/manageiq/manageiq/issues) so take a gander to see where
you can help us.

## Improved

### [The Azure, Azure](https://github.com/ManageIQ/manageiq/pull/10629)

[Bronagh Sorota](https://github.com/bronaghs) has improved the naming of the Azure regions. When creating an Azure provider with no instances; instead of naming the region `Azure-eastus`, we incorrectly called it `Azure-Azure-eastus`

### [MiQ Roles API](https://github.com/ManageIQ/manageiq/pull/10452)

Chris Arcand and Joe Rafaniello have been at the refactoring again, this time
overhauling the ManageIQ Roles API to:
> remove unused and needlessly complex code.

As with all good refactorings, this included 48 new additions, but managed to remove 124 lines of code!

## Fixed

### [Improving the API](https://github.com/ManageIQ/manageiq/pull/10632)

Fellow Brit [Tim Wade](https://github.com/imtayadeway) has been refactoring away at the API, this time extracting classes to remove the `Settings concern` from every API call. Good job Tim.

### [Nicer Errors](https://github.com/ManageIQ/manageiq/pull/10511)

Everyone likes error messages, but no one likes badly formatted ones. [Daniel Berger](https://github.com/djberg96) with this PR, formats the `XML` output of `SCVMM` into a nicer string.

## New

### [New LDAP Gem](https://github.com/ManageIQ/manageiq/pull/10635)

If you use `ldap` you might be happy to know [Gregg Tanzillo](https://github.com/gtanzillo) has updated us to version `0.14.0`. Fixing some encoding errors with the update :)

### [Active Support for Everyone](https://github.com/ManageIQ/manageiq/pull/10627)

[Nick Carboni](https://github.com/carbonin) has added the ability in the PostgresHAAdmin to use methods such as `Hash#symbolize_keys` and `Time#current` in production, by requiring `active_support/all` and making it safer for everyone needing those methods

## Deleted

### [Remove those buttons](https://github.com/ManageIQ/manageiq/pull/10565)

A small change, but a useful one. Removing an unused and _broken_ OAuth button. A good spot from [Martin Hradil](https://github.com/himdel)

### [No methods no cry](https://github.com/ManageIQ/manageiq/pull/10547)

[Keenan Brock](https://github.com/kbrock) is fixing relationships this week by removing unused relationship methods. A good example of a `TODO:` comment that never got `TODONE`.

## Wrapping up

Not technically last week, but ManageIQ developer Chris Arcand, made it into [Ruby Weekly](https://chrisarcand.com/the-search-for-class0x0000001ab51700/?utm_source=rubyweekly&utm_medium=email) with `The Search For <Class:0x00000027b59290>`, a thrilling tale of hunting for a mysterious bug in our codebase.

As always we have too many PRs to cover here in detail. You are always welcome to have a peek at them [here][PRs merged last week]. And with that pip pip & toodle-oo, and don't forget to look out for the next
exciting issue of *Last Week in ManageIQ*!

[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-08-15+..+2016-08-22%22+sort%3Acreated-desc&utf8=✓
