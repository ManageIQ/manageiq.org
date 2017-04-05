---
title: "Last Week in ManageIQ: Mostly harmless update"
author: romanblanco
date: 2017-04-04
comments: true
published: true
tags: LWIMIQ
---

Another week is behind us, a new one is here and it brings along the next
weekly update. I'm [Roman](https://github.com/romanblanco) from ManageIQ UI
team, and I'll walk you through what happened in the last week in ManageIQ.

## Featured

This week we had:

- 56 PRs in the [manageiq][manageiq PRs merged] repo
- 54 in the [manageiq-ui-classic][manageiq-ui-classic PRs merged] repo
- 13 in the [manageiq-ui-service][manageiq-ui-service PRs merged] repo

It's worth mentioning we now have 3 merged Pull Requests
([#470](https://github.com/ManageIQ/manageiq-ui-classic/pull/470),
[#466](https://github.com/ManageIQ/manageiq-ui-classic/pull/466),
[#475](https://github.com/ManageIQ/manageiq-ui-classic/pull/475))
from Mendel University students in Brno, led by
[Zita](https://github.com/ZitaNemeckova) and
[Martin](https://github.com/himdel), and more are comming!

Keep up the good work!

## Improved

Day by day, week by week, we try to make ManageIQ better and better.
From last week there was a Pull Request from
[Nick](https://github.com/carbonin)
([#14529](https://github.com/ManageIQ/manageiq/pull/14529)) adding a
notification when the embedded ansible server starts or Pull Request providing
VM href when Service is ordered from Control action
by [Madhu](https://github.com/mkanoor)
([#14481](https://github.com/ManageIQ/manageiq/pull/14481)).

## Fixed

With the amount of code that is submitted into ManageIQ, it is possible
some issues are introduced. This week,
[Martin](https://github.com/martinpovolny) has helped to keep the
ManageIQ UI nice by fixing issue with missing metrics for
Containers ([#819](https://github.com/ManageIQ/manageiq-ui-classic/pull/819))
and missing table name on VMDB Summary page
([#806](https://github.com/ManageIQ/manageiq-ui-classic/pull/806)).

## New

Of course, we have also added a lot of new code.

[Alberto](https://github.com/abellotti) has added support for a
`format_attributes` parameter in
API ([#14449](https://github.com/ManageIQ/manageiq/pull/14449)).

New code was also added in Service UI by [Chris](https://github.com/chalettu),
he has added a additional permission to allow viewing of catalogs
([#610](https://github.com/ManageIQ/manageiq-ui-service/pull/610)).

## Deleted

There has been a lot of code added to the codebase of ManageIQ from the last week,
but it's important not to forget to remove what is not needed anymore.

Just like did [Joe](https://github.com/jrafanie) by removing extra requires
([#14526](https://github.com/ManageIQ/manageiq/pull/14526)) or
[Edgar](https://github.com/israel-hdez) in Pull Request
[#14595](https://github.com/ManageIQ/manageiq/pull/14595), where he was fixing VCR test.

## Wrapping up

That's all folks. See you next week at next LWIMIQ post, by
[Robin](https://github.com/PanSpagetka).

[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-27+..+2017-04-02%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-27+..+2017-04-02%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-27+..+2017-04-02%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-amazon PRs merged]: https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-27+..+2017-04-02%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-azure PRs merged]: https://github.com/ManageIQ/manageiq-providers-azure/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-27+..+2017-04-02%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-vmware PRs merged]: https://github.com/ManageIQ/manageiq-providers-vmware/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-27+..+2017-04-02%22+sort%3Acreated-desc&utf8=%E2%9C%93
