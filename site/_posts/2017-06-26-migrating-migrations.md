---
title: "Last Week in ManageIQ: The DB migrations have migrated."
author: jvlcek
date: 2017-06-27
comments: true
published: true
tags: LWIMIQ
---

Howdy! I am [JoeV](https://github.com/jvlcek). I work with the ManageIQ *Platform Team*.
This is my second *Last Week in ManageIQ* post. Below is a review of the changes made this
past week.

## Featured

This past week saw [32 PRs][manageiq PRs merged] merged into ManageIQ core.
      
The 13 different provider repositories had a total of 15 PRs merged. The Classic UI team was truly busy with [24 PRs][manageiq-ui-classic PRs merged] merged and
the Service UI folks merged [6 PRs][manageiq-ui-service PRs merged]
      
## Improved

One notable change this past week was a substantial repo split. The ManageIQ database migrations have been extracted from the db/migrate directory into the new 
[manageiq-schema repo](https://github.com/ManageIQ/manageiq-schema) The full story can be found on the *ManageIQ Talk* post [New split repo - manageiq-schema](http://talk.manageiq.org/t/new-split-repo-manageiq-schema/2478)


## Fixed

There were 5 PRs merged into the ManageIQ core repo that addressed bugs:

#### [Ladislav Smola](https://github.com/Ladas) fixed these 2 bugs:
  * [Wrong time var used for timestamps](https://github.com/ManageIQ/manageiq/pull/15427)
  * [Do not update :type in batch query](https://github.com/ManageIQ/manageiq/pull/15426)

#### [Yuri Rudman](https://github.com/yrudman) fixed this bug:
  * [Refactor MiqTask.delete_older to queue condition instead of array of IDs](https://github.com/ManageIQ/manageiq/pull/15415)


#### [Joe Rafaniello](https://github.com/jrafanie) fixed this bug:
  * [We always want to setup the sample manageiq test db](https://github.com/ManageIQ/manageiq/pull/15407)

#### [Libor Pichler](https://github.com/lpichler) fixed this bug:
  * [Make user filter as restriction in RBAC](https://github.com/ManageIQ/manageiq/pull/15367)

## Deleted

#### Related to the improvement noted above [Jason Frey](https://github.com/Fryguy) deleted the db/migrate directory.
  * [Extract migrations to manageiq-schema repo](https://github.com/ManageIQ/manageiq/pull/15293)


## Wrapping up

That wraps it up for this week in ManageIQ. To stay in touch and learn more about the project take a look at  [ManageIQ.ORG](http://manageiq.org/)

Thanks for having a look!
JoeV

[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-19+..+2017-06-25%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-19+..+2017-06-25%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-19+..+2017-06-25%22+sort%3Acreated-desc&utf8=%E2%9C%93
