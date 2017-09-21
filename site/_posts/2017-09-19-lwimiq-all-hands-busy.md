---
title: "Last Week in ManageIQ: All Hands Busy"
author: cybette
date: 2017-09-19
comments: true
published: true
tags: LWIMIQ
---

Last week, most engineering hands were busy in an internal Engineering All-Hands meeting. A few stray hands still found the opportunity to submit some PRs, but there were no available fingers for typing up an entry for ["Last week in ManageIQ"][lwimiq tag]. So please allow me, [Carol][carol github], to paw in a few words in this edition.

## Green thumbs

As mentioned during [last Sprint][Sprint 68], [Greenkeeper.io][greenkeeper] was added to [Service UI repo][manageiq-ui-service] to keep dependencies updated a lot faster.

If you take a look at the [PRs merged][manageiq-ui-service PRs merged] in this repo last week, you will see many of them with green 'greenkeeper' labels, as various dependencies were updated to their latest versions.

## Iron fists

When it comes to paying technical debt, sometimes one has got to be ruthless. A bunch of constants [were][UI PR 2138] [placed][UI PR 2139] [on][UI PR 2141] [the][UI PR 2142] [chopping][UI PR 2145] [block][UI PR 2158], decreed to be removed from UiConstants. As those constants found new homes in appropriate modules, the UiConstants module was also [permanently deleted][UI PR 2165].

## White knuckles

This [PR][manageiq-providers-lenovo PR 76] from the [Lenovo XClarity provider plugin][manageiq-providers-lenovo] creates validation for credentials to the Lenovo provider, so that you don't have to turn your knuckles white with worry over invalid connections.

## Jazz hands

On the graphing front, [Graph refresh is turned on][manageiq-providers-amazon PR 290] for Amazon VMs with targeted refresh as the default. And what happens when you use GraphViz syntax for refresh graph logging? :open_hands: Tada - [pretty inventory graphs][manageiq PR 15814]! :open_hands:

## Monkey tail

Well, I selected some PRs I thought were interesting, in a totally unqualified way. If you could not make hands or tails out of it, or if you have other comments/suggestions for the project, please leave some feedback in our ongoing [ManageIQ Community Survey][miq survey], available for another week. As always, you're welcome to check out the progress we are making on [GitHub][miq github], and lend a hand!


[lwimiq tag]: /blog/tags/LWIMIQ
[carol github]: https://github.com/cybette
[Sprint 68]: https://www.youtube.com/watch?v=8BDL43-dsaE
[greenkeeper]: https://greenkeeper.io/
[manageiq-ui-service]: https://github.com/ManageIQ/manageiq-ui-service
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-09-11+..+2017-09-17%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-lenovo PR 76]: https://github.com/ManageIQ/manageiq-providers-lenovo/pull/76
[manageiq-providers-lenovo]: https://github.com/ManageIQ/manageiq-providers-lenovo
[manageiq-providers-amazon PR 290]: https://github.com/ManageIQ/manageiq-providers-amazon/pull/290
[manageiq PR 15814]: https://github.com/ManageIQ/manageiq/pull/15814
[UI PR 2138]: https://github.com/ManageIQ/manageiq-ui-classic/pull/2138
[UI PR 2139]: https://github.com/ManageIQ/manageiq-ui-classic/pull/2139
[UI PR 2141]: https://github.com/ManageIQ/manageiq-ui-classic/pull/2141
[UI PR 2142]: https://github.com/ManageIQ/manageiq-ui-classic/pull/2142
[UI PR 2145]: https://github.com/ManageIQ/manageiq-ui-classic/pull/2145
[UI PR 2158]: https://github.com/ManageIQ/manageiq-ui-classic/pull/2158
[UI PR 2165]: https://github.com/ManageIQ/manageiq-ui-classic/pull/2165
[miq survey]: /blog/2017/09/manageiq-community-survey/
[miq github]: https://github.com/ManageIQ
