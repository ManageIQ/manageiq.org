---
title: "Last Week in ManageIQ: Love is in the PRs"
author: jntullo
date: 2017-02-14
comments: true
published: true
tags: LWIMIQ
---

Happy Valentine's Day! [Jillian](https://github.com/jntullo) here to walk you through the love given to PRs this past week. In the spirit of the holiday, and before you devour lots of :chocolate_bar:, let's take a look at those PRs with :heart:! 

## Featured
It was an active week in ManageIQ core with [71 PRs merged][manageiq PRs merged]. To highlight some of the providers, Amazon had [5 PRs][manageiq-providers-amazon PRs merged] merged and Azure had [3 PRs][manageiq-providers-azure PRs merged] merged. In the UI department, ManageIQ classic had [50 PRs][manageiq-ui-classic PRs merged] merged while the Service UI had [16 PRs][manageiq-ui-service PRs merged] merged.

## Improved
Everybody loves a good speedup and [Libor](https://github.com/lpichler) saw the love when he improved the speed of [REGEX for invalid fields](https://github.com/ManageIQ/manageiq/pull/13808) in `MiqExpression::Field`.

In an improvement to the API, [Alberto](https://github.com/abellotti) added a feature that allows for [multiple identifiers](https://github.com/ManageIQ/manageiq/pull/13827) in `api.yml`. Now, a user must be allowed at least one of the roles specified in the identifier for authorization. 

## Fixed
The `ImportFileUpload` model is tightly coupled to the UI, but [Eric](https://github.com/hayesr) took the first step in resolving that by [temporarily bypassing asset lookup](https://github.com/ManageIQ/manageiq/pull/13801) in tests.

Another lovely fix came in from [Chris](https://github.com/chalettu). He fixed [Catalog Card styling](https://github.com/ManageIQ/manageiq-ui-service/pull/495) in the Service UI and was lucky enough to even get a :dancer: for that one!

## New
In the Service UI, [Allen](https://github.com/AllenBW) added a new [Ansible Service Details](https://github.com/ManageIQ/manageiq-ui-service/pull/501) page. 

## Deleted
Deletions always get a good amount of love, and this one is no different. [Keenan](https://github.com/kbrock) removed [tenant custom icons and paperclip](https://github.com/ManageIQ/manageiq/pull/13796) this week to much delight and :heart:.

The removal of a [stale comment](https://github.com/ManageIQ/manageiq/pull/13869) by [Joe](https://github.com/jrafanie) got the :heart_eyes: that it truly deserves! 

## Wrapping up
That's it for this week's edition of LWIMIQ! We always welcome your involvement, so head on over to [Current Issues](https://github.com/ManageIQ/manageiq/issues) to see where you can contribute.
And don't forget to give those PRs you love lots of :heart: today! 

[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-02-06+..+2017-02-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-02-06+..+2017-02-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-02-06+..+2017-02-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-amazon PRs merged]: https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-02-06+..+2017-02-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-azure PRs merged]: https://github.com/ManageIQ/manageiq-providers-azure/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-02-06+..+2017-02-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
