---
title: "Last Week in ManageIQ: Fixing bugs and fixing bugs"
author: skateman
date: 2016-11-28 10:58:27 +01:00
comments: true
published: true
tags: LWIMIQ
---

Hello! [Dávid](https://github.com/skateman) here from the UI team with
some updates about the changes since last week.

## Featured

We are still focused on the stabilization of the upcoming Euwe release.
In numbers this means 91 commits merged from 88 PRs created by 40 of our
contributors since last week. If you are interested, check out the list
of [open issues]((https://github.com/manageiq/manageiq/issues)) to help
us in increasing these numbers.

## Improved

Chart widgets on the dashboard are sometimes displaying too much information
on a too tiny place, making some data unreadable. There was a primitive
zooming feature available, but it was not always helpful. Now thanks to
our charts expert [Robin](https://github.com/PanSpagetka) the zoomed version
uses [a full screen modal](https://github.com/ManageIQ/manageiq/pull/12811).

![Full screen modal for dashboard charts](https://cloud.githubusercontent.com/assets/9535558/20563637/bacc8c78-b189-11e6-95c2-c308bfe04e4f.png){:.large_img}

There were also some improvements in the Automate part of our codebase.
For example [Patrik](https://github.com/pkomanek) continued the [refactoring
of automate methods](https://github.com/ManageIQ/manageiq/pull/12523). His
victim was the `available_flavors` method for `miq_ae_orchestration`.

## Fixed

In these tough days almost half of the number of PRs have the word "fix"
in their title. This means it is extremely hard to select which ones to
present here.

We had some issues with infinite spinners on the Reports page when logged
in as a non-admin user. The problem was with tree unlocking after an AJAX
change on the page. Thanks to our [Happy Martin](https://github.com/himdel)
it is now [fixed](https://github.com/ManageIQ/manageiq/pull/12846).

The select box for policy profile selection on the policy simulation screen
had a fixed size and therefore, it could not properly display longer strings.
The cleverness of [Milan](https://github.com/mzazrivec) came in handy, as he
fixed it with a [single line](https://github.com/ManageIQ/manageiq/pull/12371).

## New

As the release is getting closer and closer, we are not really introducing
new features. However, [Alon](https://github.com/alongoldboim) found some
space for improving the Container Node screen by adding a new field which
displays [custom attributes](https://github.com/ManageIQ/manageiq/pull/12832).
But that is not all, he also added support for provider policies in our
[User Interface](https://github.com/ManageIQ/manageiq/pull/11002).

## Deleted

[Libor](https://github.com/lpichler) found out that the *show* and *list*
permissions for Tenants have the same purpose and unified them under a [new
permission](https://github.com/ManageIQ/manageiq/pull/12844) called *view*.

As you know, we introduced a new version of timelines a few weeks ago. The old
ones had compatibility issues with some versions of Internet Explorer which
was compensated by some JavaScript code. For the new timelines, this code is
no longer required and thanks to [Harpreet](https://github.com/h-kataria) it's
[removed](https://github.com/ManageIQ/manageiq/pull/12798) from our codebase.

## Wrapping up

This was just a quick summarization of our last week. Feel free to check out
the complete list of [PRs merged last week] for more information.

[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-11-21+..+2016-11-27%22+sort%3Acreated-desc&utf8=%E2%9C%93a
