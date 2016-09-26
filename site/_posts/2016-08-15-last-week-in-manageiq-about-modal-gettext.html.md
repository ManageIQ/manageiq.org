---
title: "Last Week in ManageIQ: About modal, gettext improvements, refactoring and more!"
date: 2016-08-15 06:20 UTC
author: skateman
tags: LWIMIQ
comments: true
published: true
---

Hi! [David](https://twitter.com/halaszdavid) here, from the UI team!

Let's take a quick review of the changes to ManageIQ since last week.

## Featured

In the last week [114 merged pull requests][PRs merged last week] have been
produced by 42 of our contributors. We very much like this round number
of authors, but new contributors are always welcome. Check out our
[issue tracker](https://github.com/manageiq/manageiq/issues) to see where
you can help us.

## Improved

### [Move code to more core extensions](https://github.com/ManageIQ/manageiq/pull/10423)

We have been using our own statistical functions for various metrics all
around the project. These small snippets are now methods implemented as
[extensions](https://github.com/ManageIQ/more_core_extensions) of standard
ruby structures, such as Arrays or Hashes.

### [Support for gettext in ManageIQ plugins](https://github.com/ManageIQ/manageiq/pull/10372)

Internationalization support is getting better by each week. This PR adds
support for automated extracting of gettext strings from external plugins.
It also introduces an updated version of FastGettext that supports merging
and chaining multiple gettext repositories.

## Fixed

### [Fix multiple ui_lookup(:model => nonCamelized) in MiqPolicyController*](https://github.com/ManageIQ/manageiq/pull/9347)

Multiple ui_lookup calls in `MiqPolicyController` and children were failing
due to incorrect capitalization. Because of the fallback `titleize` behavior,
this was almost invisible when using the UI in English.


### [Display total cpu cores for right sizing](https://github.com/ManageIQ/manageiq/pull/10329)

The Right Size Recommendations page displayed the number of CPU sockets
instead of the correct number of CPUs. Thanks to [Adam](https://github.com/agrare)'s
fix, now this works perfectly.

## New

### [Add network manager load balancer models](https://github.com/ManageIQ/manageiq/pull/10282)

We are constantly improving the networking support in ManageIQ. This PR
is the first step to have support for Load Balancers available in cloud
environments.

### [Add 'About' Modal](https://github.com/ManageIQ/manageiq/pull/9989)

Thanks to the improvements in the PatternFly project we are now able to
display a fancy about modal. This displays information about the browser
session and the used version number of ManageIQ.

## Deleted

### [Remove D deprecated methods](https://github.com/ManageIQ/manageiq/pull/9645)

Some CPU-related methods used in the REST API have been marked as deprecated
in the Darga release. From now these methods are no more, making the codebase
a bit cleaner.

### [Remove redundant code from report editor](https://github.com/ManageIQ/manageiq/pull/10399)

[Šimon](https://github.com/ManageIQ/manageiq/pull/10399) found some code in the
reports editor controller which was already implemented elsewhere. This is now removed!

## Wrapping up

There were way too many PRs to cover here in detail. Feel free to
check them all out [here][PRs merged last week]. Look out for the next
installment of *Last Week in ManageIQ*!

[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-08-08+..+2016-08-15%22+sort%3Acreated-desc&utf8=%E2%9C%93
