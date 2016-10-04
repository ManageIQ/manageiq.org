---
title: "Last Week in ManageIQ: Swift, vCloud, PG upgrades, and the Euwe beta"
date: 2016-10-03
author: fryguy
comments: true
published: true
tags: LWIMIQ
---

Hi everyone! This is [Jason](https://github.com/Fryguy), bringing you this
week's *Last Week in ManageIQ*. This past week was the final development week
before the upcoming beta release of the Euwe branch! After the beta release, we
will start on many weeks of stabilization, so keep on the lookout for lots of
bug fixes in the coming weeks.

## Featured

Last week, we merged [106 PRs][PRs merged last week], of which
[37 were enhancements][Enhancements merged last week]. In total, there were
[339 commits][Commits merged last week] by 47 contributors. If you want to join
in on the fun, be sure to checkout the
[issues tracker](https://github.com/manageiq/manageiq/issues).

## Improved

### [Move the postgresql mountpoint up](https://github.com/ManageIQ/manageiq/pull/11597)

Along with [ManageIQ/manageiq-appliance-build#165](https://github.com/ManageIQ/manageiq-appliance-build/pull/165)
and [ManageIQ/manageiq-appliance#91](https://github.com/ManageIQ/manageiq-appliance/pull/91),
this PR changes the mountpoint location of the PostgreSQL data disk. The
`pg_upgrade` tool from PostgreSQL has a really cool feature where it will use
hard links for files that are the same on both sides of the upgrade, which can
save a significant amount of space. However, the current mountpoint is too deep
and makes taking advantage of that feature difficult. So, this PR moves us in a
direction for easier PostgreSQL upgrades.  Thanks
[Nick](https://github.com/carbonin)!

### [Handle the case that a parameter group does not have label](https://github.com/ManageIQ/manageiq/pull/11589)

OpenStack Heat templates are supposed to follow the spec, and part of the spec
is to include a label and description for parameter groups. However, in reality,
not every template has these properties. [Bill](https://github.com/bzwei)
put together this PR to loosen up the requirements, making it just that much
easier for our users.

## Fixed

### [Disable same origin as host matching in development](https://github.com/ManageIQ/manageiq/pull/11616)

[Dávid](https://github.com/skateman) wrote up this pull request for one of those
is-it-a-fix-or-an-enhancement bugs, where he loosened the same-origin policy in
development mode only. Developers who work on the service UI will benefit the
most, as they are once again able to run the service UI in development
mode and still have it talk over websockets on another host. In production, on
the appliance, the same-origin policy still applies and has not been changed.

### [Force expand node when selecting service catalog entry point](https://github.com/ManageIQ/manageiq/pull/11574)

Coincidentally, [Dávid](https://github.com/skateman) has the second featured fix
this week, with a fix to the service catalog entry point modal. The change is to
automatically expand the tree to the point of the current selection. Sometimes
a one-line fix goes a long way towards usability!

## New

### [New Swift Storage Provider](https://github.com/ManageIQ/manageiq/pull/11458)

As we expand further into managing storage providers,
[Jerry](https://github.com/jerryk55) has added management of OpenStack Swift
object storage.  Along with the recent Cinder addition, this greatly improves
ManageIQ's storage coverage. Moving forward, this Swift integration could be
used as the base for non-OpenStack standalone Swift providers.

### [Implement VMware Cloud EventCatcher backend](https://github.com/ManageIQ/manageiq/pull/11362)

[Miha](https://github.com/miha-plesko) expanded on the VMware vCloud provider
with this enhancement to add the EventCatcher. When creating a new provider, the
EventCatcher is one of the most crucial components, as it is generally the main
driver of automatic inventory updates, so this is a really important update for
vCloud support!

## Deleted

### [Extract ActsAsArModel to QueryRelation gem](https://github.com/ManageIQ/manageiq/pull/11120)

Although not technically a true "deletion", the ActsAsArQuery functionality was
extracted to the [query_relation](https://github.com/ManageIQ/query_relation)
gem by yours truly. ActsAsArQuery, originally written by
[Keenan](https://github.com/kbrock), provides an ActiveRecord-like query
interface for non-SQL backends. Moving it out to a new gem allows it to be
reused by the new [manageiq-api-client](https://github.com/ManageIQ/manageiq-api-client).

### [Drop redundant User.in_my_region](https://github.com/ManageIQ/manageiq/pull/11191)

When enterprise regioning was in its early days, the User model had its own
region column. As time went on, all tables assumed their region number from the
id range and general methods were made for querying by region.  However, the
User model never changed and has been that way since 2010!
[Šimon](https://github.com/isimluk) finally got rid of these in this pull
request, and has made the User model consistent with everything else.

## Wrapping up

It was really hard for me to choose this week, but take a look
[here][PRs merged last week] for all of the other merged PRs.  Have a great
week and Happy Coding!

[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A"2016-09-25+..+2016-10-01"
[Commits merged last week]: https://github.com/manageiq/manageiq/compare/master@%7B2016-09-25%7D...@%7B2016-10-01%7D
[Enhancements merged last week]: https://github.com/ManageIQ/manageiq/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-09-25+..+2016-10-01%22+label%3Aenhancement
