---
title: "Last Week in ManageIQ: Squashing Bugz"
author: h-kataria
date: 2017-04-24
comments: true
published: true
tags: LWIMIQ
---

Hello there! This is [Harpreet Kataria](https://github.com/h-kataria), my first contribution at LWIMIQ blog post, I want to share some updates on what has been happening in ManageIQ world this past week. 
Team ManageIQ has been busy squashing bugz rapidly to make Fine release finer and more stable. After all bugz are bugz and must be squashed.


## Count/List of PRs merged in all repos in LWIMIQ:

- 56 - [ManageIQ/manageiq](https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-04-17+..+2017-04-23%22+sort%3Acreated-desc&utf8=%E2%9C%93)
- 59 - [ManageIQ/manageiq-ui-classic](https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-04-17+..+2017-04-23%22+sort%3Acreated-desc&utf8=%E2%9C%93)
- 29 - [ManageIQ/manageiq-ui-service](https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-04-17+..+2017-04-23%22+sort%3Acreated-desc&utf8=%E2%9C%93)
- 10 - [ManageIQ/manageiq-providers-amazon](https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-04-17+..+2017-04-23%22+sort%3Acreated-desc&utf8=%E2%9C%93)
- 2 - [ManageIQ/manageiq-providers-azure](https://github.com/ManageIQ/manageiq-providers-azure/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-04-17+..+2017-04-23%22+sort%3Acreated-desc&utf8=%E2%9C%93)
- 6 - [ManageIQ/manageiq-providers-vmware](https://github.com/ManageIQ/manageiq-providers-vmware/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-04-17+..+2017-04-23%22+sort%3Acreated-desc&utf8=%E2%9C%93)

Keep up the good work!

## Improvements

Each week we strive to make ManageIQ better and better. Last week Šimon made some changes to make improvements in the seeding methods.


[Šimon](https://github.com/isimluk) Do not run certain seeds twice
([#14725](https://github.com/ManageIQ/manageiq/pull/14725)) & ([#14726](https://github.com/ManageIQ/manageiq/pull/14726))

[Šimon](https://github.com/isimluk) Speed up certain seeding methods
([#14721](https://github.com/ManageIQ/manageiq/pull/14721)) & ([#14712](https://github.com/ManageIQ/manageiq/pull/14712))


## Squashing Bugz

With the amount of new features introduced in last few sprints into ManageIQ, it is possible
that we introduced new bugz as well as existing bugz were discovered.

Several fixes were made in Embedded Ansible area and Ansible Services area, see list of PRs in manageiq-ui-classic & manageiq repos for full details on these.

[MartinH](https://github.com/himdel) made performance improvements with Notifications ([#611](https://github.com/ManageIQ/manageiq-ui-classic/pull/611))

[Brian](https://github.com/bmclaughlin) Fix Group/Role name links on User Details page ([#655](https://github.com/ManageIQ/manageiq-ui-classic/pull/655))

[Aparna](https://github.com/AparnaKarve) Quadicon links fixed on Tagging edit screen ([#1041](https://github.com/ManageIQ/manageiq-ui-classic/pull/1041))

[Zahi](https://github.com/zakiva) Add Container entities to TAG_CLASSES ([#14535](https://github.com/ManageIQ/manageiq/pull/14535))

There were many more bugz that were fixed last week, please see complete list of merged PRs in each repo for more details.


## Features

While all our developers are heads down with squashing bugz some of us managed to  squeeze in some minor Enhancements this past week.

[Jillian](https://github.com/jntullo) has added API support for Refresh Configuration Script Sources action
([#14714](https://github.com/ManageIQ/manageiq/pull/14714)).

[James](https://github.com/jameswnl) Added support to pickup Tower Project's refresh status 
([#14687](https://github.com/ManageIQ/manageiq/pull/14687)).

[Milan](http://github.com/mzazrivec) added UI support for Embedded Ansible refresh
([#934](https://github.com/ManageIQ/manageiq-ui-classic/pull/934))

[MartinP](http://github.com/martinpovolny) Custom buttons for list views
([#796](https://github.com/ManageIQ/manageiq-ui-classic/pull/796))

[Joshua](http://github.com/jjlangholtz) SUI - Show all custom actions vs collapsing to single dropdown
([#669](https://github.com/ManageIQ/manageiq-ui-service/pull/669))

[Allen](http://github.com/AllenBW) SUI - Power buttons vm details
([#635](https://github.com/ManageIQ/manageiq-ui-service/pull/635))


## Cleanup

Aside from some new additions & lots of bug fixing, we also deleted some unwanted code from our repos.

[MartinP](https://github.com/martinpovolny) Remove duplicate flash_msg_div
([#1015](https://github.com/ManageIQ/manageiq-ui-classic/pull/1015)) & 
([#1016](https://github.com/ManageIQ/manageiq-ui-classic/pull/1016)) 

[Brandon](https://github.com/bdunne) Removal of unsused Global Variables from manageiq-ui-classic repo ([#969](https://github.com/ManageIQ/manageiq-ui-classic/pull/969))

[Roman](https://github.com/romanblanco) Removed unused & invalid provider documentation link ([#1002](https://github.com/ManageIQ/manageiq-ui-classic/pull/1002))

[Tzu-Mainn](https://github.com/tzumainn) Remove code that creates phantom object when creating Cloud Volume & Tenant ([#14766](https://github.com/ManageIQ/manageiq/pull/14766))

[Jozef](https://github.com/jzigmund) Removing unused host trait ([#14598](https://github.com/ManageIQ/manageiq/pull/14598))

[Nimrod](https://github.com/nimrodshn) Removed duplicate report ([#14515](https://github.com/ManageIQ/manageiq/pull/14515))

## Wrapping up

That's all I have to share with you folks. Stay tuned for next week's LWIMIQ post, by
[Drew](https://github.com/d-m-u).

