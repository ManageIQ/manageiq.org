---
title: "Last Week in ManageIQ: Hacktoberfest, Faster Trees, and Chargeback Reports!"
author: imtayadeway
date: 2016-10-10 10:25:20 -07:00
comments: true
published: true
tags: LWIMIQ
---

Hello again! [Tim](https://twitter.com/imtayadeway) here with a
wrap-up of all the ManageIQ activity from last week.

## Featured

Last week [116 PRs got merged][PRs merged last week] into master,
consisting of [336 commits][Commits merged last week].

If you'd like to see yourself on the
[contributors board][Contributors] why not check out one of our
[open issues][Open Issues]? There are some t-shirts up for grabs if
you tackle some issues labeled `hacktoberfest` during the month of
October. Head over to the [official website][Hacktoberfest] for more
details! 🍻

## Improved

### [Improve Retrieval of VMware Host Storage Devices](https://github.com/ManageIQ/manageiq/pull/11629)

Host storage devices are retrieved one at a time to limit the chance
of a timeout resulting from too much data going over the
line. However, that is no longer a concern and requests can be
packaged into one API call thanks to this PR.

### [Move most of TreeNodeBuilder#build to hash lookup](https://github.com/ManageIQ/manageiq/pull/11604)

By moving to a constant time hash lookup for calls made to nodes in
trees, [Nick LaMuro](https://github.com/NickLaMuro) was able to
squeeze some extra performance out of some large trees. 🌲

### [Remove to_a at core of Automate](https://github.com/ManageIQ/manageiq/pull/11703)

By removing the call of `to_a`, these Active Record relations can
continue without loading every single row into memory until
needed. Especially handy if you were just going to throw most of them
away anyway!

## Fixed

### [Show shared networks in the OpenStack provisioning dialog](https://github.com/ManageIQ/manageiq/pull/11653)

Shared networks in the OpenStack provisioning dialog were lost during
a prior refactoring. This PR ensures they are back in their rightful place. 🐛

## New

### [Add chargeback report for Services](https://github.com/ManageIQ/manageiq/pull/11570)

This PR adds a monthly chargeback report for Services. 📊

### [Add UI to create/update/delete OpenStack cloud tenants](https://github.com/ManageIQ/manageiq/pull/11259)

As of this PR, a user is now able to do full CRUD on OpenStack cloud
tenants. 🎉

## Deleted

### Some old comments get the heave-ho

Last week [Joe Rafaniello](https://github.com/jrafanie) found some
[truly](https://github.com/ManageIQ/manageiq/pull/11727)
[vintage](https://github.com/ManageIQ/manageiq/pull/11725) comments
going back before 2011. They are gone now thanks to these PRs, but
their intentions will always be around in our hearts (and in the
commit history). 🔥

### [Remove unused toolbar buttons from toolbar builder](https://github.com/ManageIQ/manageiq/pull/11688)

Apparently these toolbar buttons were no longer needed, meaning that
32 lines of code could be straight-up deleted! ✂️

### [Remove leftover rubyrep password checking code](https://github.com/ManageIQ/manageiq/pull/11668)

When rubyrep was removed back in
[#9696](https://github.com/ManageIQ/manageiq/pull/9696) this code was
left behind, resulting in a bug in the UI. On the bright side, this PR
lets us say goodbye to rubyrep one more time! 👋

## Wrapping up

That's about all we have time for! As always, there were too many
great PRs to cover fully, but you can check them all out
[here][Prs merged last week]. Until next week!

[Hacktoberfest]: https://hacktoberfest.digitalocean.com/
[Open Issues]: https://github.com/ManageIQ/manageiq/issues
[Contributors]: https://github.com/ManageIQ/manageiq/graphs/contributors
[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-10-03+..+2016-10-09%22+sort%3Acreated-desc&utf8=%E2%9C%93
[Commits merged last week]: https://github.com/manageiq/manageiq/compare/master@%7B2016-10-03%7D...@%7B2016-10-09%7D
