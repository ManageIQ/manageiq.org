---
title: "Last Week in ManageIQ: Conversations lead to merges!"
author: syncrou
date: 2016-10-14 15:06:28 -04:00
comments: true
published: true
tags: LWIMIQ
---

Hello again. [Drew](https://twitter.com/syncrou) here, covering all of the 
amazing contributions over the last week in ManageIQ.

## Featured

Most weeks we feature [PRs][PRs merged last week] that provide a large code change
or major upgrade for our users.  This week I'm going to feature PRs that expose what it takes
to turn [357 commits ][Commits merged last week] into [113 Merged PRs][PRs merged last week].

The answer in short is **conversation**.  Lots and lots of **conversation**! If you've often wondered
what it would take to experience the click of the magic [green button](http://bit.ly/2epGDkp)
I would ask you to please take the plunge and build a PR. In doing so you can join [us][Contributors] in our conversations toward building a better ManageIQ!
If you're not sure where to start, here is a list of [our current issues][Open Issues], we could use all the help you can offer! 

## Improved 

### [Add features based on supported_api_versions to RedHat provider](https://github.com/ManageIQ/manageiq/pull/11418)

Over the course of 68 comments [Boris](https://github.com/borod108) made sure that we could use the SupportedFeaturesMixin to set 
features that are supported by the RedHat provider based on the API versions.

### [Service power operations API](https://github.com/ManageIQ/manageiq/pull/11557)

Although this technically feels like a new API feature, it is an improvement on the features
exposed through our API.  [Tim](https://github.com/imtayadeway) spent a good amount of time 
disscussing the changes needed over a 29 part conversation.

## Fixed

### [Allow to add a containers provider with a port other than 8443](https://github.com/ManageIQ/manageiq/pull/11391)

14 separate discussions and now [Daniel Korn](https://github.com/dkorn) solved a containers provider port problem.
Moving forward, whatever port you set will now be used as the "default" role endpoint.

## New

### [UI: Add Container Templates](https://github.com/ManageIQ/manageiq/pull/10303)

With much discussion comes brand new features.  [Zahi](https://github.com/zakiva) patiently
worked through over 32 comments and allowed us all to see Container Templates in the UI.

### [CRUD for OpenStack Host Aggregates](https://github.com/ManageIQ/manageiq/pull/11580)

With extreme attention to detail, [sseago](https://github.com/sseago) chatted 36 different times to hone and build
API calls for creating, editing, deleting, and adding/removing hosts
for OpenStack Host Aggregates.

### [Chargeback for container images](https://github.com/ManageIQ/manageiq/pull/10677)

[Ari](https://github.com/zeari) had some back and forth, and back and forth and... Voilà!
31 separate conversations allowed all of us to report on the number of hours a container is running.

## Deleted

### [Don't add a million things to the load path, require with directory](https://github.com/ManageIQ/manageiq/pull/11922)

Even with stopping the load of a [million](https://dl.dropboxusercontent.com/u/20913828/probably_more_like_700_things) things
we still need to chat about how to delete them. [Brandon](https://github.com/bdunne) deleted that many things from the load_path
with a back and forth 12 different times.
Yes, this is a deletion from memory and not a code deletion. But it was a [million](https://dl.dropboxusercontent.com/u/20913828/ok_it_was_probably_really_a_million) things!

## [Wrapping up](http://acasignups.net/sites/default/files/styles/400x400/public/thatsawrap.jpg?itok=xpmM1D_X)

That's about all the time we have for this conversation! Many more
people discussed many more things on a great many PRs this week.
You can check them all out
[here][Prs merged last week]. Until next time [I'm](https://github.com/syncrou) off to discuss what it will 
take to get my next [PR](https://github.com/ManageIQ/manageiq/pull/11888) merged!

[Open Issues]: https://github.com/ManageIQ/manageiq/issues
[Contributors]: https://github.com/ManageIQ/manageiq/graphs/contributors
[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-10-10+..+2016-10-16%22+sort%3Acreated-desc&utf8=%E2%9C%93
[Commits merged last week]: https://github.com/manageiq/manageiq/compare/master@%7B2016-10-10%7D...@%7B2016-10-16%7D
