---
title: "Last Two Weeks in ManageIQ: A brand new Euwe"
author: Julian Cheal
date: 2017-01-03
comments: true
published: true
tags: LWIMIQ
---

As the end of 2016 grew closer, and the Winter Solstice brought with it either the longest night or shortest night, depending on which hemisphere you frequent, ManageIQ cut its latest release Euwe. You can download it [here][1] or clone it from Github [here][2] Happy New Year!

## Featured

Over the last two weeks amongst all the New Year's celebrations there were [70 pull requests merged][3]! These pull requests (PRs) were comprised of [229 commits][4]. Why not start your New Year by contributing to Open Source, just check out our [issue tracker][5] to see something that tickles your fancy, or join our chat on [Gitter][6] to find out more.

## Improved

If removing technical debt is considered an improvement (answer: it should be), then these last two weeks won't disappoint.
First up is [Tim Wade][7] removing some [dead paths][8] in `MiqExpression.operands2rubyvalue`. Next up is [Tim Wade][7] again! This time [fixing invalid chargeback factories][9] in our test suite.

And finally, a useful improvement from [Ari Zellner][10] Changing `Images` to `ContainerImages` in our [chargeback rate assignments][11].

## Fixed

After a normally expensive December, people are often frugal in January; which is good as that's when the sales start! And who wants to overpay when you can get something for less. That's why [Šimon Lukašík][12] fixed a bug in [chargeback reporting][13].

[Laura Galis][14] Fixed the case where an empty link was being created if an [orchestration stack was empty][15].

I know, I know it's January and we're all still zoned out from the holidays. Don't despair [Gregg Tanzillo][16] has a solution, he's fixed [zone scoping][17] for a server's region!

## New

New code usually creates new bugs. One of our new and ongoing projects is creating a new physical infrastructure provider. However that has led to a couple of bugs, but [Dávid Halász][18] to the rescue he's fixed our [Rubocop][19] [style guide][20] to [not complain][21] about the `$lenovo_log` global; the logging variable used by our first physical infrastructure provider, Lenovo.

[Aparna Karve][22] has a new feature exposing [workflows on api request resources][23] to show the Request Workflow details in the SUI.

## Deleted

In this issue, I think [Martin Povolny][24] wins the deletion prize, with a massive `359,849` lines deleted! Admittedly [this PR][25] was part of the UI split into a separate repo, but that still counts right? If you want to find the recently deleted code it can be found in its own [repository][26], more information on this can be found in this [guide][27]. This is all part of ManageIQ's plan to "extract all the things". Expect more code extractions over the coming months.

## Wrapping up

Well that about wraps up this double issue of [Last Two Weeks in ManageIQ][28]. Hopefully 2017 brings you joy and happiness, and lots more [Open Source contributions][5]. Happy coding!


[1]: http://manageiq.org/download/
[2]: https://github.com/ManageIQ/manageiq/tree/euwe
[3]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-12-19+..+2017-01-03%22+sort%3Acreated-desc&utf8=%E2%9C%93
[4]: https://github.com/manageiq/manageiq/compare/master@%7B2016-12-19%7D...@%7B2017-01-03%7D
[5]: https://github.com/manageiq/manageiq/issues
[6]: https://gitter.im/ManageIQ/manageiq
[7]: https://github.com/imtayadeway
[8]: https://github.com/ManageIQ/manageiq/pull/10959
[9]: https://github.com/ManageIQ/manageiq/pull/13310
[10]: https://github.com/zeari
[11]: https://github.com/ManageIQ/manageiq/pull/13198
[12]: https://github.com/isimluk
[13]: https://github.com/ManageIQ/manageiq/pull/12807
[14]: https://github.com/lgalis
[15]: https://github.com/ManageIQ/manageiq/pull/12954
[16]: https://github.com/gtanzillo
[17]: https://github.com/ManageIQ/manageiq/pull/13100
[18]: https://github.com/skateman
[19]: https://github.com/bbatsov/rubocop
[20]: https://github.com/ManageIQ/manageiq/blob/master/.rubocop.yml
[21]: https://github.com/ManageIQ/manageiq/pull/13266
[22]: https://github.com/AparnaKarve
[23]: https://github.com/ManageIQ/manageiq/pull/13254
[24]: https://github.com/martinpovolny
[25]: https://github.com/ManageIQ/manageiq/pull/13303
[26]: https://github.com/ManageIQ/manageiq-ui-classic
[27]: https://github.com/ManageIQ/guides/blob/master/developer_setup/classic_ui_split.md
[28]: http://manageiq.org/blog/2017/01/last-week-in-manageiq-a-brand-new-euwe/
