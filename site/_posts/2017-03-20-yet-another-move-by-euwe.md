---
title: "Last Week in ManageIQ: Yet Another move by Euwe"
author: lpichler
date: 2017-03-20 13:47:49 +01:00
comments: true
published: true
tags: LWIMIQ
---
Hello World!

My name is [Libor](https://github.com/lpichler "Can you guess what word is highlighted in my avatar?") and I am part of Platform Team in Brno.

It's that time again. Time to recap of last week in ManageIQ!

## Featured
This week we were busy with moving last features to Euwe for upcoming Euwe-3 release!

Let's start typically - with some numbers:
- [88 PRs][manageiq PRs merged] merged in [ManageIQ core][manageiq] repo.
- [47 PRs][manageiq-ui-classic PRs merged] merged in [ManageIQ UI classic][manageiq-ui-classic] controller repo.
- [17 PRs][manageiq-ui-service PRs merged] merged in [ManageIQ UI Service][manageiq-ui-service] javascript repo.
- [17 PRs][manageiq-providers-amazon PRs merged] merged in [ManageIQ Providers Amazon][manageiq-providers-amazon] repo.
- [7 PRs][manageiq-gems-pending PRs merged] merged in [ManageIQ Gems Pending][manageiq-gems-pending] repo.
- [5 PRs][manageiq-providers-vmware PRs merged] merged in [ManageIQ Providers VMWare][manageiq-providers-vmware] repo.
- [3 PRs][manageiq-providers-lenovo PRs merged] merged in [ManageIQ Providers Lenovo][manageiq-providers-lenovo] repo.
- [1 PR][manageiq-providers-azure PRs merged] merged in [ManageIQ Providers Azure][manageiq-providers-azure] repo.

Last line of ruby code in last week have number `253 718` in [ManageIQ core][manageiq] repo and `3 810` in [ManageIQ UI classic][manageiq-ui-classic] controller repo.
Javascript coders this week added `432 642nd` line.

[Last Sprint Review][sprint-blog-page] has number [56](https://youtu.be/NnQs9Mbw3DM).

## Other Moves
[Marcel](https://github.com/durandom) moved [azure settings](https://github.com/ManageIQ/manageiq/pull/14345) to [azure provider](https://github.com/ManageIQ/manageiq-providers-azure/pull/40)

[Adam](https://github.com/agrare) moved [fog-vcloud-director gem](https://github.com/ManageIQ/manageiq/pull/14358) to [manageiq-providers-vmware gemspec](https://github.com/ManageIQ/manageiq-providers-vmware/pull/28)

[James](https://github.com/jameswnl) moved [Credential's API_ATTRIBUTES to the shared one](https://github.com/ManageIQ/manageiq/pull/14334)

## Docs
[Ladas](https://github.com/Ladas) is showing to us that developer can also create nice documentation.
Let's inspire and look on his [documentation for InventoryCollection.new](https://github.com/ManageIQ/manageiq/pull/14346) - examples included!

## Fixed
Time is most important physical quantity on the world and also [Keenan](https://github.com/kbrock) is aware of this fact. It is visible in his [peformance PR](https://github.com/ManageIQ/manageiq/pull/14285 "second part") to speed up for generating widgets.

[Beni](https://github.com/cben) with his [Container TLS fixes](https://github.com/ManageIQ/manageiq-ui-classic/pull/670) is fixing ability to create and edit container's provider without Hawkular.

Broken chargeback has been fixed by [Allen](https://github.com/ManageIQ/manageiq-ui-service/pull/591) in [ManageIQ UI Service][manageiq-ui-service] repo.

## New
[Hungarian](https://github.com/skateman), [Czech](https://github.com/martinpovolny) and [Ame](https://github.com/abellotti)[ric](https://github.com/Fryguy)[ans](https://github.com/yrudman) are creating a pull request ... it is not begining of joke, they worked together on one PR, concretely they added [option for disabling asynchronous](https://github.com/ManageIQ/manageiq/pull/13898) notifications.

API is still rapidly improved by  [Jillian](https://github.com/jntullo). Her contribution is almost [tenth of PRs](https://github.com/ManageIQ/manageiq/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-13+..+2017-03-19%22+sort%3Acreated-desc+author%3Ajntullo) in ManageIQ repo!

Sharing is good and you mother was right as well as [Richard](https://github.com/rwsu) in his [PR](https://github.com/ManageIQ/manageiq/pull/13535) where he introduced CloudTenancyMixin - it allows to us share tenant functionality also for Cloud Objects. 

[Daniel](https://github.com/djberg96) modified label_tag_mapping_add to accommodate scoped entity type in his [PR](https://github.com/ManageIQ/manageiq-ui-classic/pull/666)
*Warning!!! The PR is not for people with hexakosioihexekontahexaphobia*

[Erez](https://github.com/ManageIQ/manageiq/pull/13704) added [External Logging Link](https://github.com/ManageIQ/manageiq/pull/13704) for container nodes.


## Deleted

Best code is no code. Our contributors are coding hand by hand with this statement, see their deletions: 

- [James](https://github.com/jameswnl) - [Add test coverage for Embedded Ansible and eliminate redundant spec code](https://github.com/ManageIQ/manageiq/pull/14383): `+1,181 −16,115`
- [Tim](https://github.com/imtayadeway) - [Remove uncalled miq_server lets](https://github.com/ManageIQ/manageiq/pull/14355): `+0 −12`
- [Robin](https://github.com/PanSpagetka) - [Remove unnecessary chart code](https://github.com/ManageIQ/manageiq/pull/13470): `+7 −61`
- [Nick](https://github.com/NickLaMuro) - [Remove `hide_action` patch to StaticController](https://github.com/ManageIQ/manageiq-ui-classic/pull/660): `+0 −5`

Should be noted that we like pets and I assure you that [Martin](https://github.com/himdel) has the same view of the matter even when he published PR called [Remove dead @cats](https://github.com/ManageIQ/manageiq-ui-classic/pull/664) (No one was harmed during coding/review of this PR)

## Wrapping up
That's it! It was just small summary of our ManageIQ stories - for more fun, take one of issues [here](https://github.com/ManageIQ/manageiq/issues). We are looking forward to your pull requests!

[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-13+..+2017-03-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-13+..+2017-03-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-13+..+2017-03-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-amazon PRs merged]: https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-13+..+2017-03-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-azure PRs merged]: https://github.com/ManageIQ/manageiq-providers-azure/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-13+..+2017-03-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-vmware PRs merged]: https://github.com/ManageIQ/manageiq-providers-vmware/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-13+..+2017-03-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-lenovo PRs merged]: https://github.com/ManageIQ/manageiq-providers-lenovo/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-13+..+2017-03-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-gems-pending PRs merged]: https://github.com/ManageIQ/manageiq-gems-pending/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-13+..+2017-03-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq]: https://github.com/manageiq/manageiq
[manageiq-ui-classic]: https://github.com/ManageIQ/manageiq-ui-classic
[manageiq-ui-service]: https://github.com/ManageIQ/manageiq-ui-service
[manageiq-providers-amazon]: https://github.com/ManageIQ/manageiq-providers-amazon
[manageiq-providers-azure]: https://github.com/ManageIQ/manageiq-providers-azure
[manageiq-providers-vmware]: https://github.com/ManageIQ/manageiq-providers-vmware
[manageiq-providers-lenovo]: https://github.com/ManageIQ/manageiq-providers-lenovo
[manageiq-gems-pending]: https://github.com/ManageIQ/manageiq-gems-pending
[sprint-blog-page]: http://manageiq.org/blog/2017/03/sprint-56-review-march-15-2017/