---
title: "Last Week in ManageIQ: The school year begins - let's improve our GPA"
author: skateman
date: 2017-09-05
comments: true
published: true
tags: LWIMIQ
---

Hello, [Dávid](https://github.com/skateman) here from the UI team. Let's have a quick recap about what happened in the last week on the magical land of ManageIQ.

Honestly, I gave up on counting how many repositories we are currently maintaining. The only number I come up with is ~220 and this is the number of PRs we merged last week. Around 50% of these PRs got merged into [core][manageiq PRs merged] and into the [two][manageiq-ui-classic PRs merged] [UI][manageiq-ui-service PRs merged] repos, feel free to check them out.

## Featured
[Martin](https://github.com/martinpovolny) (but not [Martin](https://github.com/himdel) and [Martin](https://github.com/hyperkid123)) decided to increase the [Code Climate GPA](https://codeclimate.com/github/ManageIQ/manageiq-ui-classic) of the UI Classic repo. I lost count of the PRs, but the outcome is [visible](https://codeclimate.com/github/ManageIQ/manageiq-ui-classic/trends/gpa).

## Improved
The Service UI folks hired a [new developer](https://github.com/apps/greenkeeper) for keeping their dependencies up to date and he is doing a [suspiciously good job](https://github.com/ManageIQ/manageiq-ui-service/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-08-28+..+2017-09-03%22+sort%3Acreated-desc+author%3Aapp%2Fgreenkeeper). I am pretty sure that he will never lose his job because of the upcoming automatization and robots everywhere.

## Fixed
[Brian](https://github.com/bmclaughlin) is our maintainer of remote consoles. His task this week was to [fix](https://github.com/ManageIQ/manageiq/pull/15901) the web-based Cockpit console for multiple providers. Meanwhile [Joe](https://github.com/jvlcek) fixed a possible user duplication issue in the external authentication by [assigning UUIDs](https://github.com/ManageIQ/manageiq/pull/15535).

## New
What if I told you that [we're using Angular](https://github.com/ManageIQ/manageiq-ui-classic/pull/1989) in all tree views on the left side of the screen? Actually it's not 100% accurate, but let's say that there is just a single ~~Gallic tribe~~ screen that ~~the Romans were~~ I was not able to ~~conquer~~ convert.
Also one of the container people, [Nimrod](https://github.com/nimrodshn) added some [new features](https://github.com/ManageIQ/manageiq-ui-classic/pull/1840) into the container image list view.


## Deleted
[Adrian](https://github.com/europ) started with us as an intern in the beginning of August. We wanted to give him a first task that teaches him to orientate in the UI. What's better than deleting some UI-related constants across the codebase? He made [15 PRs](https://github.com/ManageIQ/manageiq-ui-classic/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-08-28+..+2017-09-03%22+sort%3Acreated-desc+author%3Aeurop) last week and each of them gets rid of a specific constant. Well done!

## Wrapping up
That's all folks! If you think it was not enough, feel free to check our [GitHub organization](http://github.com/manageiq) where among others you can contribute to our codebase.

[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-08-28+..+2017-09-03%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-08-28+..+2017-09-03%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-08-28+..+2017-09-03%22+sort%3Acreated-desc&utf8=%E2%9C%93
