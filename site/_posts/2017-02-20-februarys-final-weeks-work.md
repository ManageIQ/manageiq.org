---
title: "Last Week in ManageIQ - February's Final Week's Work"
author: AllenBW
date: 2017-02-21
comments: true
published: true
tags: LWIMIQ
---

Woah first last week of February for 2017, this is :taco::dancer: **huge**. *Almost* as :taco::dancer: huge as the LQIMIQ low down prepared for you by your friendly neighbourhood developer [Allen](https://github.com/allenbw)!  So without further ado lets :woman_juggling:! 

## Featured
So here are the raw numbers:
* ManageIQ Core with [94 PRs merged][manageiq PRs merged] merged (awarded most overachieving!) :1st_place_medal: 
* ManageIQ Classic had [50 PRs][manageiq-ui-classic PRs merged] merged (eerily similar number as last week, for those of you keeing track, awarded most copycat!) :2nd_place_medal: 
* ManageIQ Content saw [9 PRs][manageiq-content PRs merged] merged (awarded most generic! no really, checkout those prs!) :3rd_place_medal: 
* ManageIQ Service UI saw [9 PRs][manageiq-ui-service PRs merged] merged (awarded most housekeeping!) :4th_place_medal:
* Amazon provider had [4 PRs][manageiq-providers-amazon PRs merged] merged (awarded most resilient!) :5th_place_medal:
* Azure provider had [3 PRs][manageiq-providers-azure PRs merged] merged (awarded most resilient!) :6th_place_medal:

But this :video_game: we play is not about the :trophy:'s, :taco:'s, emojis that don't **yet** exist (:5/6th_place_medal:) or :+1: its about the change, one such type of change being the Improvements!
## Improved
Every line of code contributed across the ManageIQ repo collection is an improvement, but since neither of us have the attention to look at each of the 169 improvements from last week, here are a few highlights:
* [Marcel](https://github.com/durandom) refreshed the workings of MIQ core credentials in support of Ansible Tower here [Ansible refresh inventory credentials](https://github.com/ManageIQ/manageiq/pull/13834)
* [Milan](https://github.com/mzazrivec) introduced into MIQ Core new menu sections to display Ansible Playbooks [UI for Ansible Tower Playbooks & Repositories](https://github.com/ManageIQ/manageiq-ui-classic/pull/283)

MIQ Core experienced a pair of key performance improvements:
* [Šimon](https://github.com/isimluk) introduced changes to speed up reports, [Drop the precision calculation](https://github.com/ManageIQ/manageiq/pull/13899) 
* [Libor](https://github.com/lpichler), for the second week running, has contributed to improved performance with [Use eager_load for extra_resources](https://github.com/ManageIQ/manageiq/pull/13904)

## Fixed
Sometimes an improvement is of the type two steps back.  In this case, a followup improvement of the type two steps forward is required, :bug: fixes! 
The MIQ Service UI repo was brought a fix of this nature by [Chris](https://github.com/chalettu), [Fix for refresh of SUI $state.FeatureNav issue](https://github.com/ManageIQ/manageiq-ui-service/pull/496/files) which eliminated role based errors experienced when reloading the UI.
In MIQ Classic repo broken automate icons [Fix broken Automate icons](https://github.com/ManageIQ/manageiq-ui-classic/pull/351) were fixed by [Eric](https://github.com/epwinchell).
MIQ Core experienced the most hotly discussed bug fix (42 comments :eyes::feelsgood:) [Create a hawkular client for partial endpoints](https://github.com/ManageIQ/manageiq/pull/13814) authored by [Mooli](https://github.com/moolitayer)

## New
Hold the :phone:'s **newly introduced** REST API endpoints for service templates! This deeply pondered pr (Nov 2016  :scream_cat: ) [create service template REST api](https://github.com/ManageIQ/manageiq/pull/12594) was slain to completion by [Jillian](https://github.com/jntullo).  


## Deleted
Extending that :walking: motif from earlier, [Martin](https://github.com/martinpovolny) added to MIQ Classic a fantastic line reduction by employing mixins [Deduplicate show methods using mixins](https://github.com/ManageIQ/manageiq-ui-classic/pull/384).

Another pr overflowing with juicy red minus numbers is [Delete ontap files](https://github.com/ManageIQ/manageiq-ui-classic/pull/392).  Brought to us by [Zita](https://github.com/ZitaNemeckova), this :hocho: removes all unused Ontap files :tada:.

## Wrapping up
In conclusion, ya'll :rocket:. No really! Especially those who are absent mention in this LWIMIQ; which is only ever but a snapshot of all the awesome on goings of this repo. That being said, we always welcome your involvement, so head on over to [Current Issues](https://github.com/ManageIQ/manageiq/issues) to see where you can contribute.

*Phew* that's it! It was an honour and pleasure to walk you around the contributions of the 170 developers working on ManageIQ Open-Source Management Platform, **STAY TUNED FOR MORE** or else  :taco::dancer:.  Oh and happy last week of February :feelsgood::wink: .

[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-02-13+..+2017-02-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-02-13+..+2017-02-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-02-13+..+2017-02-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-amazon PRs merged]: https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-02-13+..+2017-02-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-azure PRs merged]: https://github.com/ManageIQ/manageiq-providers-azure/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-02-13+..+2017-02-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-content PRs merged]: https://github.com/ManageIQ/manageiq-content/pulls?utf8=%E2%9C%93&q=is%3Apr%20is%3Amerged%20base%3Amaster%20merged%3A%222017-02-13%20..%202017-02-19%22%20sort%3Acreated-desc&utf8=%E2%9C%93