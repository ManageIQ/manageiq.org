---
title: "Last Week in ManageIQ: VMware catalog parsing, MiqExpression refinement, and more!"
author: chrisarcand
date: 2016-08-09 15:00:00 UTC
tags: LWIMIQ
comments: true
published: true
---

Hi! This is [Chris](https://twitter.com/chrisarcand) welcoming you to another
edition of *Last Week in ManageIQ*! Let's take a look back at all the lovely
changes made to ManageIQ as we turned the calendars to August.

## Featured

46 wonderful people contributed to ManageIQ last week, with [121 pull
requests][PRs merged last week] and [222 commits][Commits merged last week]
merged into master last week. Join the fun!  Check out the latest on the
[issues tracker](https://github.com/manageiq/manageiq/issues) if you want to
get involved.

## Improved

### [Backend support for service types that are generic of a certain type.](https://github.com/ManageIQ/manageiq/pull/10203)

Currently you can only create services with a limited number of specific
service types (VMware, RHEV, OpenStack, etc). This improvement in the back end
lays down the beginnings of creating new service types that are 'generic' (i.e.
"Generic_VM, Generic_Container", etc.). The idea is that a blueprint can be
authored using only these generic types, laying out the architecture to an
application, without the need to explicitly define the resources to make the
application. There's plenty left to do but this is a great start!


### [Rbac allow limits to come from the scope](https://github.com/ManageIQ/manageiq/pull/10209)

The RBAC interface no longer requires you to pass `limit`, `order`, and `offset`
explicitly in the options hash, instead pulling from the passed scope itself.

Before:

```
Rbac.filtered(Vm.all, :limit => 20, :offset => 40)
```

After:

```
Rbac.filtered(Vm.limit(20).offset(40))
```

The old hash signature is still valid for now while hashes are converted to scopes.


## Fixed

### [Container dashboard graph failures with non-UTC timezones](https://github.com/ManageIQ/manageiq/pull/10216)

With the appliance timezone set to anything other than 'UTC', the container
dashboard showed 'No data available' for some of the graphs. Fixed!

### [Session table bloat in long running environments](https://github.com/ManageIQ/manageiq/pull/8272)

It turns out the Sessions database table can grow to enormous sizes with very,
very long running environments (greater than one year). This required some
manual removal to allow Postgres to properly vacuum the table. A new API on
Session has been added to purge session objects in batches and resolve this
issue.

## New

### [Added Blueprints REST API endpoints](https://github.com/ManageIQ/manageiq/pull/9765)

This published the Create and Read parts of the Blueprints API. It provides the
back end support for the new Service Designer UI (SDUI) to start fleshing out
the canvas for dragging and dropping service items. Users will be able to create
Blueprints, and then be able to drag other Catalog Items (or bundles) onto the
canvas and save the blueprint. Neat!

### [Added VMware catalog parsing](https://github.com/ManageIQ/manageiq/pull/10136)

The VMware catalog provides descriptors for vApp templates and corresponding VM
images and now ManageIQ can collect all these available VM images! Public and
private catalogs are available so a setting has been introduced to allow
enablement of import of both types of catalogs (by default, only private
catalogs are imported).

## Deleted

### [Removed relative datetime support for <, >, <=, >= in MiqExpression](https://github.com/ManageIQ/manageiq/pull/10246)

[Tim](https://github.com/imtayadeway) continued his sweeping improvements to
MiqExpression last week, including the removal of some unused functionality
concerning relative datetimes. This brings some clarity to the code and explicitness
to what MiqExpression officially supports.

### [Removed REST API cruft regarding Virtual Templates](https://github.com/ManageIQ/manageiq/pull/10269)

With some of the forthcoming work regarding Service Brokers and Arbitration
Rules, the purpose of Virtual Templates has changed. The REST API no longer needs
full CRUD functionality, so hey! Let's keep it simple and clean, removing some of that ability.

## Wrapping up

As always, there were way too many PRs to cover here in detail. Feel free to
check them all out [here][PRs merged last week]. Look out for the next
installment of *Last Week in ManageIQ*!

[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-08-01+..+2016-08-07%22+sort%3Acreated-desc&utf8=%E2%9C%93
[Commits merged last week]: https://github.com/manageiq/manageiq/compare/master@%7B2016-08-01%7D...@%7B2016-08-07%7D
