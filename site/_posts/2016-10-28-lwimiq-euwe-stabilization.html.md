---
title: Last week in ManageIQ - Euwe stabilization
author: bronaghs
date: 2016-10-31
comments: true
published: true
tags: LWIMIQ
---
[Bronagh](https://github.com/bronaghs) here bringing you this week's edition of Last Week in ManageIQ!
## Featured
A milestone was met this week when we entered into the stabilization phase of the upcoming Euwe release. At this point we will concentrate on fixing bugs. If you would like to help out then take your pick from our [open issues].

Sprint 48 ended on Monday 24th. Don't worry if you could not make the Sprint review meeting this week, it was recorded [here](https://www.youtube.com/watch?v=wD6dqm9hSRM).

It was a knock out week in ManageIQ with a whopping 335 [commits] across  121 [PRs].

## Improved
[Šimon](https://github.com/isimluk) is keeping it simple with the chargeback rate editor [UX: Simplify Chargeback rates editor](https://github.com/ManageIQ/manageiq/pull/12156).

[Beni](https://github.com/cben) undertook a major rewrite of auto-tagging of kubernetes labels
and fixed a bunch of bugs while he was at it: [Rewrite of auto-tagging, fixing multiple bugs](https://github.com/ManageIQ/manageiq/pull/11806).

Tired of having to input your RabbitMQ credentials on the rails console? Now you don't have to, thanks to [Miha](https://github.com/miha-plesko). Check out his work here: [Add GUI with inputs for VMware vCloud event monitoring](https://github.com/ManageIQ/manageiq/pull/11362).

## Fixed
[Šimon](https://github.com/isimluk) made a PR to fix the [Add a new chargeback rate screen](https://github.com/ManageIQ/manageiq/pull/12130) and 
[Nick](https://github.com/carbonin) made a PR to [raise an error if a region is not configured for central admin](https://github.com/ManageIQ/manageiq/pull/12264).

## New
This week we saw the introduction of a new network provider page for Nuage. Check out some nice eye candy [here](https://github.com/ManageIQ/manageiq/pull/10425) by [Samuel](https://github.com/samuel-nuage).

Mac support was added to the [linux_block_device gem](https://github.com/ManageIQ/linux_block_device), thanks to [Jason](https://github.com/fryguy). No idea what the linux_block_device gem is? Me neither, have a [read](https://github.com/ManageIQ/linux_block_device).

VMware virtal machines can now be imported into RHEV using the REST API, [PR](https://github.com/ManageIQ/manageiq/pull/11455) by [Martin Beták](https://github.com/matobet).

[Andrey](https://github.com/andyvesel) added a topology view this week to display the hosts on the backend of the OpenStack cloud, the PR can be found [here](https://github.com/ManageIQ/manageiq/pull/11679).


## Deleted
Deleting duplicate code is always good fun.
[Eric](https://github.com/epwinchell) knocked it out of the park this week by deleting 93 files! [Remove old timeline JS from public](https://github.com/ManageIQ/manageiq/pull/12135).

Robin deleted 391 lines by [Removing Ziya flash charts from code](https://github.com/ManageIQ/manageiq/pull/12122), thanks [Robin!](https://github.com/PanSpagetka).


## Wrapping up
This is just a synposis of last week in ManageIQ, check out our full list of merged [PRs] for the full story.
Thanks for joining us for another edition of LWIMIQ. Happy Halloween!

[open issues]: https://github.com/ManageIQ/manageiq/issues
[contributors]: https://github.com/ManageIQ/manageiq/graphs/contributors
[PRs]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-10-24+..+2016-10-28%22+sort%3Acreated-desc&utf8=%E2%9C%93
[commits]: https://github.com/manageiq/manageiq/compare/master@%7B2016-10-24%7D...@%7B2016-10-28%7D
