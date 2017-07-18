---
title: "Last Week in ManageIQ: Kicking off the summer edition"
author: chrisarcand
date: 2017-07-18
comments: true
published: true
tags: LWIMIQ
---

[Chris](https://twitter.com/chrisarcand) here, welcoming you to the first of
the biweekly summer edition of *Last Week in ManageIQ*!  Though, the summer
solstice (for the northern hemisphere) already occurred on June 20th. And wait,
that's not even the start of meteorological summer which was actually on June
1st. Also shouldn't it be Last Week**s** In ManageIQ, then?

No matter. Let's not sweat the details in this hot weather and just get to the good stuff.


## Featured

[60 pull requests][manageiq PRs merged] were merged into ManageIQ core over
the past two weeks.

[36 pull requests][manageiq-ui-classic PRs merged] were merged in the classic
UI, [11][manageiq-ui-service PRs merged] in manageiq-ui-service, and 35 across
the various provider plugins.



## Improved

### Allow MiqWorker.required_roles to be a lambda ([manageiq#15522](https://github.com/ManageIQ/manageiq/pull/15522))
This allows required_roles to use a lambda to define them, like
`MiqWorker.workers` currently does. This allows for greater flexibility since
you can now change the roles of a worker depending on what's configured.

### Ensure we test against a random, non-0 region ([manageiq#15525](https://github.com/ManageIQ/manageiq/pull/15525))
Our test suite received an improvement in the form of random region testing. We
previously hardcoded a region of `1` in all of our CI builds whereas we now
test against random, non-0 regions to further cover odd edge cases with our
test suite.

## Fixed

### Filtered tags sort order bug ([manageiq#15559](https://github.com/ManageIQ/manageiq/pull/15559))
You once found yourself staring at an internal server error result while
requesting an ascending sort order for filtered tags from the API. You'll no
longer find yourself staring at it, since it's now fixed! You've got better
things to do.

### Fix VNC console connection to Windows VMs and Ctrl-Alt-Del button ([manageiq-ui-classic#1672](https://github.com/ManageIQ/manageiq-ui-classic/pull/1672))
Similarly, you've got better things to do than stare at non-responsive buttons. Great news! These aforementioned buttons are fixed.

## New

### Bundler groups ([manageiq#15459](https://github.com/ManageIQ/manageiq/pull/15459))
Ruby dependencies in ManageIQ's Gemfile are now bucketed into [Bundler groups](http://bundler.io/v1.15/groups.html), which
should allow us some immediate memory and boot improvements, better
organization, and eventual extraction of dependencies to code providing that
feature. You can read more about it in the PR description.

### Add validate_blacklist method for VM pre-provisioning ([manageiq#15513](https://github.com/ManageIQ/manageiq/pull/15513))
Some providers have special blacklists for VM usernames and passwords that would pass a regex check but are not considered valid.
For example, you cannot use "abc@123" as a password for Microsoft Azure VMs, even though that would normally pass a validity check.
This new method now allows you to hook into the validation of these names and specify the provider's specific blacklist.

## Deleted

### Save inventory container: remove target option ([manageiq#15182](https://github.com/ManageIQ/manageiq/pull/15182))
The `target` option in the save inventory container was removed as it was unused, greatly simplifying partial graph refreshes in the future.

### Miscellaneous

A PORT environment variable ([manageiq#15536](https://github.com/ManageIQ/manageiq/pull/15536)) and some
leading blank lines ([manageiq#15515](https://github.com/ManageIQ/manageiq/pull/15515)) made their
way to the chopping block, too. Yay deleting stuff!

## Wrapping up

As always, this is just a small sampling of all the great pull requests merged
to ManageIQ these past couple weeks. Check out the [ManageIQ organization](https://github.com/ManageIQ) on
GitHub to view the progress being made across all of our repositories, and
don't be afraid to join in on the fun and become a contributor!

Thanks for joining us on this summer edition of *Last Week In ManageIQ*! Whew,
time for some lemonade :sunny: :lemon: :sunglasses:

[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-07-03+..+2017-07-16%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-07-03+..+2017-07-16%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-07-03+..+2017-07-16%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-amazon PRs merged]: https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-07-03+..+2017-07-16%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-ansible_tower PRs merged]: https://github.com/ManageIQ/manageiq-providers-ansible_tower/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-07-03+..+2017-07-16%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-foreman PRs merged]: https://github.com/ManageIQ/manageiq-providers-foreman/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-07-03+..+2017-07-16%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-google PRs merged]: https://github.com/ManageIQ/manageiq-providers-google/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-07-03+..+2017-07-16%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-hawkular PRs merged]: https://github.com/ManageIQ/manageiq-providers-hawkular/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-07-03+..+2017-07-16%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-lenovo PRs merged]: https://github.com/ManageIQ/manageiq-providers-lenovo/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-07-03+..+2017-07-16%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-kubernetes PRs merged]: https://github.com/ManageIQ/manageiq-providers-kubernetes/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-07-03+..+2017-07-16%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-nuage PRs merged]: https://github.com/ManageIQ/manageiq-providers-nuage/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-07-03+..+2017-07-16%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-openshift PRs merged]: https://github.com/ManageIQ/manageiq-providers-openshift/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-07-03+..+2017-07-16%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-openstack PRs merged]: https://github.com/ManageIQ/manageiq-providers-openstack/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-07-03+..+2017-07-16%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-ovirt PRs merged]: https://github.com/ManageIQ/manageiq-providers-ovirt/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-07-03+..+2017-07-16%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-scvmm PRs merged]: https://github.com/ManageIQ/manageiq-providers-scvmm/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-07-03+..+2017-07-16%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-vmware PRs merged]: https://github.com/ManageIQ/manageiq-providers-vmware/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-07-03+..+2017-07-16%22+sort%3Acreated-desc&utf8=%E2%9C%93
