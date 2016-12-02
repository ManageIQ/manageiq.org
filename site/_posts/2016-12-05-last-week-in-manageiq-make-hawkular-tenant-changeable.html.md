---
title: "Last Week in ManageIQ: Make Hawkular tenant changeable"
author: jvlcek
date: 2016-12-05 11:50:57 -05:00
tags: LWIMIQ
comments: true
published: true
---

Howdy! I am [JoeV](https://github.com/jvlcek). I work with the ManageIQ *Platform Team*.
Below is a review of the changes made *Last Week in ManageIQ*.

## Featured

As we continue to stabilize the code base for the upcoming Euwe release
53 contributors posted a hefty [127 PRs into master][PRs merged last week] and [358 commits][Commits merged last week]
with a *tiebreaker* speed that would garner the admiration of
[Magnus Carlsen](http://www.nytimes.com/topic/person/magnus-carlsen?inline=nyt-per)

If you would like to join the rodeo and help contribute to moving the stampede, you can choose from our list of [open issues]. 

## Improved

Many improvements were made this past week, a few of which are:

Multiple improvements were made to our _**API**_ by [Alon Goldboim](https://github.com/alongoldboim)

  - https://github.com/ManageIQ/manageiq/pull/12838
    Update the API policy create action to require the mode attribute parameter. This will enable MiqPolicy to be listed on the policy view in the UI.

  - https://github.com/ManageIQ/manageiq/pull/12842 
    Ensuring the API options hash keys are symbolized, if the keys are not symbolized the option does not take effect.

  - https://github.com/ManageIQ/manageiq/pull/12866
    Properly create a MiqExpression upon create or edits of condition resources.

[Yaacov Zamir](https://github.com/yaacov) contributed a change making the _**Hawkular**_ tenant changeable.

  - https://github.com/ManageIQ/manageiq/pull/12925

[Jirka Kremser](https://github.com/Jiri-Kremser) fixed an [issue](https://github.com/ManageIQ/manageiq/issues/12923)
where the 'Relationships' section in Middleware Provider Summary page was missing.

  - https://github.com/ManageIQ/manageiq/pull/12939

[Bill Fitzgerald](https://github.com/billfitzgerald0120) posted an _**Automate**_
 change that results in notifications being sent when a VM or a Service starts retirement.

  - https://github.com/ManageIQ/manageiq/pull/12796

## Fixed

[87 bugs were ERRATA-cated][BZs moved to RELEASE_PENDING] with the the efficiency of the long-banned [DDT](https://en.wikipedia.org/wiki/DDT).
A few of which are:

*From:* [Šimon Lukašík](https://github.com/isimluk)

  - https://github.com/ManageIQ/manageiq/pull/12957
  Dropped unprofessional images from the *Consumption* page

*From:* [Dan Clarizio](https://github.com/dclarizio)

  - https://github.com/ManageIQ/manageiq/pull/12934
  Make report names descriptive

*From:* [Adam Grare](https://github.com/agrare)

  - https://github.com/ManageIQ/manageiq/pull/12931
  Fix auto-placement for hosts without a datastore that can hold the new VM 

*From:* [Nick Carboni](https://github.com/carbonin)

  - https://github.com/ManageIQ/manageiq/pull/12930
  Fix failing service provision from the global region due to dialogs from separate regions with the same label.

*From:* [Jillian Tullo](https://github.com/jntullo)

  - https://github.com/ManageIQ/manageiq/pull/12928
  The update of a dialog field needs to account for a resource action

*From:* [Libor Pichler](https://github.com/lpichler)

  - https://github.com/ManageIQ/manageiq/pull/12920
  Fix failed previews when creating a report with chart Bars, Stacked (2D)

*From:* [Robin Knaur](https://github.com/PanSpagetka)

  - https://github.com/ManageIQ/manageiq/pull/12919
  Make Widget chart actually zoom and use full names in legend

  - https://github.com/ManageIQ/manageiq/pull/12922
  Fix position of chart menu in C&U charts


## Wrapping up

This was just a synopsis of last week in ManageIQ. To get the full lowdown on the ManageIQ-hoedown saddle on up and pony over
to [MangeIQ.ORG](http://manageiq.org/)

Thanks for having a *look-see*!

_**Adios**_ JoséV



[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?utf8=%E2%9C%93&q=is%3Apr%20is%3Amerged%20base%3Amaster%20merged%3A%222016-11-27%20..%202016-12-05%22%20sort%3Acreated-desc%20
[Commits merged last week]: https://github.com/manageiq/manageiq/compare/master@%7B2016-11-27%7D...@%7B2016-12-05%7D
[BZs moved to RELEASE_PENDING]: https://bugzilla.redhat.com/buglist.cgi?bug_status=NEW&bug_status=ASSIGNED&bug_status=POST&bug_status=MODIFIED&bug_status=ON_DEV&bug_status=ON_QA&bug_status=VERIFIED&bug_status=RELEASE_PENDING&bug_status=CLOSED&chfield=bug_status&chfieldfrom=2016-11-28&chfieldto=2016-12-02&chfieldvalue=RELEASE_PENDING&classification=Red%20Hat&list_id=6804311&product=Red%20Hat%20CloudForms%20Management%20Engine&query_format=advanced
[open issues]: https://github.com/ManageIQ/manageiq/issues

