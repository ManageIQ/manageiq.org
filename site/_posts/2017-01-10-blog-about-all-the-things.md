---
title: "Last Week in ManageIQ: Blog about all the things"
author: syncrou
date: 2017-01-10 09:20:19 -05:00
comments: true
published: true
tags: LWIMIQ
---

Hi! [syncrou][me] here to continue our discussions as to what happened in the ManageIQ world last week. As the hours passed by and minutes zipped on,
we all thought that a week couldn't possibly justify a blog post. Au contraire, this post is about our ability to [manage all the things][manageiq]!

In the last week we not only continued to manage more things, we did it better! While some thought that there was room for
[improvement][issues], others (everyone) agreed on one overarching theme. As long as infrastructure and clouds and subnets and networks and hybrid clouds
and computers and phones and IFTT and technology things exist ([breathe][breath]),
together we shall unite them all under one [manageiq][manageiq]!

## Feature all the things

Last week we merged lots of PRs! We also made many many commits! The big news is that we have so many contributors and such 
a huge code base, we had to break up all the repos. Below is a smattering of them with total merged PRs inline. 

[ManageIQ][PRs merged last week] 42 PRs merged.
[Classic UI][classic ui PRs merged last week] 35 PRs merged.
[SUI][sui PRs merged last week] 8 PRs merged.
[Amazon][amazon PRs merged last week] 4 PRs merged.
[Content][content PRs merged last week] 2 PRs merged.
[ManageIQ][Commits merged last week] 100 commits pushed (base repo.)

If you're ever looking to help jump into our great project, we just lowered the barrier to entry.
All [issues][issues], PRs, specs are now broken up by repo.  If you were ever looking for a great reason to manage your manageable item, NOW is 
the time!

## Improved a number of things

### [Leverage ManageIQ::Environment](https://github.com/ManageIQ/manageiq-content/pull/14)
[Brandon](https://github.com/bdunne) helped make everything work nicely together when using
our new [ManageIQ content][automate] repo. Though eventually this repo will house more things, for now
it is the new home of our Automate Domain.

### [Add ConfigurationScript model to RBAC directly](https://github.com/ManageIQ/manageiq/pull/13366)
In our [ManageIQ][miq] repo [lpichler](https://github.com/lpichler) helped to apply RBAC to the ConfigurationScript
model. This allows for Ansible Tower Job Templates to be filtered by a user's tags.

## Fixed broken things

### [Validate dialog children while edit is in progress](https://github.com/ManageIQ/manageiq-ui-classic/pull/91)
[Harpreet](https://github.com/h-kataria) solved a validation issue in our [classic-ui][classic] repo.  Validation errors 
will now show up while the edit is in progress as opposed to running them at submit.

### [Update Angular & broken tests](https://github.com/ManageIQ/manageiq-ui-service/pull/413)
[Allen](https://github.com/AllenBW) fixed an issue in our [Service UI][sui] repo that makes all developers happy.
He fixed broken tests!

## New things

### [moving settings from manageiq](https://github.com/ManageIQ/manageiq-providers-amazon/pull/91])
[Marcel](https://github.com/durandom) has been very busy in the [Amazon][amazon] provider repo. Although
this repo has been separate for some time, the settings for this provider can now be handled by the provider.

## Deleted a major thing

Time.  We deleted time from the development process.
Each repo holds its own tests, which means both development and merging take less time.

There isn't a way to quantify the time saved, however...

A happy developer continues to develop.  For our project, that is a deletion worth
fighting for.

## Wrapping up

Thank you so much for taking the time to read about all that is going on at [ManageIQ][manageiq].  We're very excited about the changes coming down
the pipeline and are happy you're helping to continuously improve our (your) product.

[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-01-03+..+2017-01-09%22+sort%3Acreated-desc&utf8=%E2%9C%93
[classic ui PRs merged last week]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-01-03+..+2017-01-09%22+sort%3Acreated-desc&utf8=%E2%9C%93
[sui PRs merged last week]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-01-03+..+2017-01-09%22+sort%3Acreated-desc&utf8=%E2%9C%93
[amazon PRs merged last week]: https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-01-03+..+2017-01-09%22+sort%3Acreated-desc&utf8=%E2%9C%93
[content PRs merged last week]: https://github.com/ManageIQ/manageiq-content/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-01-03+..+2017-01-09%22+sort%3Acreated-desc&utf8=%E2%9C%93
[Commits merged last week]: https://github.com/manageiq/manageiq/compare/master@%7B2017-01-03%7D...@%7B2017-01-09%7D
[me]: https://github.com/syncrou
[issues]: https://github.com/ManageIQ/manageiq/issues
[manageiq]: https://github.com/ManageIQ
[breath]: http://sensuousmind.com/sites/default/files/breathe-sensuousmind-1280x720-AndroidGalaxyNexus.jpg
[classic]: https://github.com/ManageIQ/manageiq-ui-classic
[automate]: https://github.com/ManageIQ/manageiq-content
[amazon]: https://github.com/ManageIQ/manageiq-providers-amazon
[sui]: https://github.com/ManageIQ/manageiq-ui-service
[miq]: https://github.com/ManageIQ/manageiq
[easter_egg]: http://allrecipes.com/recipe/23891/grilled-cheese-sandwich/
