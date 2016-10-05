---
title: "Last Week in ManageIQ: Builders, BaseControllers, bugs, backend changes, and booting of comments!"
date: 2016-09-26
author: eclarizio
tags: LWIMIQ
comments: true
published: true
---

After [Drew's](https://github.com/d-m-u) wonderful 'A' [blog](http://manageiq.org/blog/2016/09/last-week-in-manageiq-absence-atomic-providers/), I, [Erik](http://github.com/eclarizio), will be guiding you through the 'B' blog! There were a lot of fun and exciting changes so lets get started!

## The stats

Last week, we merged [122 PRs][PRs merged last week], of which, [49 were enhancements][Enhancements merged last week]. In total, there were [414 commits!][Commits merged last week]

## Builders and BaseControllers! (Improved)

### [Convert myco_tree to use TreeBuilder](https://github.com/ManageIQ/manageiq/pull/10904)

[Zita](https://github.com/ZitaNemeckova) is continuing work on refactoring the way some of our left-side trees are built by using TreeBuilders. This will hopefully make it easier in the future if/when we need to make adjustments.

### [Clean up Api::BaseController a bit](https://github.com/ManageIQ/manageiq/pull/11085)

I'm a sucker for a good refactoring story, and [Tim](https://github.com/imtayadeway) has told a good one here. As with the tree builders, making things easier to adjust in the future is always a welcome change.

## Bugs! (Fixed)

### [Fixed issue with no history and refresh toolbar buttons displayed in UI](https://github.com/ManageIQ/manageiq/pull/11409)

As I'm sure most users know, the back button isn't very friendly for ManageIQ, so we have a history toolbar button. However, that went missing, so [Roman](https://github.com/romanblanco) had to put it back. Whew!

### [Ensure api config references only valid miq_product_features](https://github.com/ManageIQ/manageiq/pull/11364)

[Šimon](https://github.com/isimluk) fixed an issue where the api wasn't referencing the right name of product features, and therefore was returning a forbidden response when trying to access policies and policy profiles that should have been accessible.

## Backend changes! (New)

### [Add Cinder storage manager support: backend changes](https://github.com/ManageIQ/manageiq/pull/11088)

The backend changes are in place for Cinder storage manager support! Big thumbs up to [Hui](https://github.com/hsong-rh) for laying the groundwork on this one.

### [Enhancement to expose the Automate model via /api/automate](https://github.com/ManageIQ/manageiq/pull/9499)

[Alberto](https://github.com/abellotti) has added support to the API to expose the Automate models. I personally work closely within Automate so I know quite a few people who will be very happy with this change.

## Booting of comments! (Deleted)

### [Delete commented code](https://github.com/ManageIQ/manageiq/pull/11436)

With an app as large as ours, eventually some rogue comments make their way through. [Brandon](https://github.com/bdunne) has found them, and booted them out!

## Bye-bye! (Wrapping up)

Of course, there were a ton more that probably deserved mentioning, but their owners simply didn't bribe me enough to feature them :). If you'd like to help out and maybe see *your* PR featured here, take a look at the [issues](https://github.com/manageiq/manageiq/issues) page and see if there's anything you can tackle.

[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A"2016-09-18+..+2016-09-24"
[Commits merged last week]: https://github.com/manageiq/manageiq/compare/master@%7B2016-09-18%7D...@%7B2016-09-24%7D
[Enhancements merged last week]: https://github.com/ManageIQ/manageiq/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-09-18+..+2016-09-24%22+label%3Aenhancement
