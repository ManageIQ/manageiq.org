---
title: "Last Week in ManageIQ: Faster Reports, Cloud Networks, and more!"
author: imtayadeway
date: 2016-07-26 15:01:11 UTC
tags: LWIMIQ
comments: true
published: true
---

Hello and welcome to the first *Last Week in ManageIQ*! This is
[Tim](https://twitter.com/imtayadeway) here ready to take you on a
whirlwind tour of some of the many, many (many) updates we had to the
ManageIQ codebase over just the last week.

## Featured

Last week we had an incredible
[109 PRs merged into master][PRs merged last week], with an astonishing
[329 commits][Commits merged last week]! Contributions from outside
the ManageIQ team are always welcome - feel free to check out the
latest [issues](https://github.com/manageiq/manageiq/issues) if you
want to get involved.

## Improved

### [Speed up MiqReport by using join instead of include](https://github.com/ManageIQ/manageiq/pull/9930)

An include was fetching all the `MiqReportResult` records in order to
filter the `MiqReport` objects on the `/report/explorer` page. Using a
`join`/`distinct` instead greatly reduced the number of rows sent back
from the database, resulting in faster times and a much better user
experience.

### [Improve performance on NetworkManager list pages](https://github.com/ManageIQ/manageiq/pull/9824)

This PR was able to improve the performance of `NetworkManager` list
pages by removing a number of N+1 queries.

## Fixed

### [Use a mutex to prevent concurrent deliver calls in Automate](https://github.com/ManageIQ/manageiq/pull/9903)

With the introduction of Puma as the default web server, concurrent
requests were starting to cause issues with starting and stopping
services in Automate. To fix this a mutex was used in the the
`MiqAeEngine` deliver code, preventing more than one delivery from
running at a time.

### [Better support for acts_as_ar_query collection methods](https://github.com/ManageIQ/manageiq/pull/9901)

This PR, along with the work done in
[#9896](https://github.com/ManageIQ/manageiq/pull/9896), expands
support for `acts_as_ar_query` objects to respond properly to
`#empty?` and `#present?`.

## New

### [Cloud Networks API](https://github.com/ManageIQ/manageiq/pull/9926)

This PR added a new `/api/cloud_networks` endpoint to the API, as well
as a new `/api/providers/:provider_id/cloud_networks` subcollection.

### [Enhancement to Users API](https://github.com/ManageIQ/manageiq/pull/9801)

Where users could previously only update their password through this
endpoint, support was added to update their email and settings too. It
also updated the `/api` entrypoint to include all the user's settings
in the response.

### [Add a language switcher in the SSUI](https://github.com/ManageIQ/manageiq-ui-self_service/pull/80)

Building on the Users API enhancement where a user is able to update
their language preference, a language switcher was added to the SSUI
both in the User's menu and in the login screen. A user can now select
their preferred language in the UI and it will be remembered for next
time they log in. This also builds on another to PR to add the list of
available languages as a Gulp task
[here](https://github.com/ManageIQ/manageiq-ui-self_service/pull/77).

## Deleted

### [Remove MiqERBForYAML](https://github.com/ManageIQ/manageiq/pull/9899)

This code was last needed in 2013 and we gave it a fond farewell last week!

### [Remove unused code for ActiveSupport::Inflector](https://github.com/ManageIQ/manageiq/pull/9900)

Since the `miq-string` extension file was requiring
`active_support/inflector`, a total of 141 lines could be removed
which duplicated that work.

## Wrapping up

There were way too many PRs to cover in detail, but feel free to check
them all out [here][PRs merged last week]. Look out for the next
installment of *Last Week in ManageIQ*!

[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-07-16+..+2016-07-22%22+sort%3Acreated-desc&utf8=%E2%9C%93
[Commits merged last week]: https://github.com/manageiq/manageiq/compare/master@%7B2016-07-16%7D...@%7B2016-07-22%7D
