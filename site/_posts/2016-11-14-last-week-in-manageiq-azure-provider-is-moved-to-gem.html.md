---
title: Last week in ManageIQ - Azure provider is moved to gem
author: zita
date: 2016-11-14
comments: true
published: true
tags: LWIMIQ
---

Hi. I, [ZitaNemeckova](https://github.com/ZitaNemeckova) will tell you more about this weeks news in our Last Week in ManageIQ.

## Featured

We've merged 110 [pull requests](https://github.com/ManageIQ/manageiq/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-11-07+..+2016-11-13%22+sort%3Acreated-desc) this week that contained 310 commits and were done by 44 contributors.

Anyone can be a ManageIQ contributor. Just have a look at [our open issues] and solve one or report an issue if ManageIQ is not working as it should be. Any help is appreciated.


## Improved
It is hard to work on internationalization (it's also hard to pronounce). You can see [here](https://github.com/ManageIQ/manageiq/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-11-07+..+2016-11-13%22+sort%3Acreated-desc+author%3Amzazrivec+label%3Ainternationalization) how much work [mzazrivec](https://github.com/mzazrivec) did last week. 11 PRs to improve i18n. You should always make sure that you don't leave any string that is displayed in the UI untranslated. 

Tests got some nice enhancements this week. [NickLaMuro](https://github.com/NickLaMuro) made them go faster with his [PR](https://github.com/ManageIQ/manageiq/pull/12519) that speeds up travis builds by caching bower assets. And [himdel's](https://github.com/himdel) [PR](https://github.com/ManageIQ/manageiq/pull/12509) makes tests fail early when bower install fails. It will no longer bug us.

From now on use `::Settings` instead of `get_vmdb_config` in `app/views/*` as [yrudman](https://github.com/yrudman) shows in his [PR](https://github.com/ManageIQ/manageiq/pull/12376).

## Fixed
There were too many bugs (exactly 80) fixed this week to choose from. So if you want to see which bugs we got rid of, have a look [here](https://github.com/ManageIQ/manageiq/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-11-07+..+2016-11-13%22+sort%3Acreated-desc+label%3Abug). 

There were two gem fixes that may interest you, [kbrock](https://github.com/kbrock) [fixed `fix_auth` after the pending gem was extracted](https://github.com/ManageIQ/manageiq/pull/12591) and [chrisarcand](https://github.com/chrisarcand) removed `gems/pending` paths from code climate config in his [PR](https://github.com/ManageIQ/manageiq/pull/12553).

## New
OpenStack devel [petrblaho](https://github.com/petrblaho) added connection options to OpenStack Cloud VM in this [PR](https://github.com/ManageIQ/manageiq/pull/12486). 

14 daily log rotations used to be saved. But now you can specify the number of rotated logs to save when an external disk volume is configured for vmdb/log thanks to [jvlcek's](https://github.com/jvlcek) [PR](https://github.com/ManageIQ/manageiq/pull/12293). Isn't it neat? 

The news of this week is here. The Azure provider was moved to a gem by [durandom](https://github.com/durandom) in this [PR](https://github.com/ManageIQ/manageiq/pull/12274). Another big step towards pluggable providers was done. More to come.

## Deleted
It is always nice to see someone delete duplicate code like in this PR [Refactor changes - Removed duplicate code in discover method](https://github.com/ManageIQ/manageiq/pull/12464) by [Jaganathancse](https://github.com/Jaganathancse).

## Wrapping up
That's all from me. Stay tuned for the next Last Week in ManageIQ to have the latest news from our development. 

[our open issues]: https://github.com/ManageIQ/manageiq/issues
