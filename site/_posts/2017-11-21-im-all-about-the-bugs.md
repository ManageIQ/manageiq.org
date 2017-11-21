---
title: "Last Week in ManageIQ: Because you know I'm all about the bugs"
author: juliancheal
date: 2017-11-21
comments: true
published: true
tags: LWIMIQ
---

It's that time of year again what with; Thanksgiving, Black Friday deals, and many other seasonal holidays around the corner. On everyone's mind though before we get to all that are… …bugs. Lots and lots of bugs. Well more specifically bug fixes. With the Gaprindashvili release just around the corner, the team is busy busy, fixing bugs and making the bestest release of ManageIQ yet.

This issue of Last Week in ManageIQ is brought to you this week by [Julian](http://juliancheal.co.uk). And along for the ride this week are [37 pull requests merged][manageiq PRs merged] in ManageIQ core [45 pull requests merged][manageiq-ui-classic PRs merged] in the UI-Classic, and many more in our plethora of repositories.

## Featured

This weeks feature is what we're all eagerly waiting for, servers at the ready! If you want to try out a beta of Gaprindashvili point your browser to [here](http://manageiq.org/blog/2017/11/Announcing-Gaprindashvili-Beta1/) for `Gaprindashvili-1-Beta1` which you can download for your platform of choice.

## Improved

Like a fine wine, or whisky ManageIQ has improved greatly over time. One of those such improvements is being able to see if a host is in maintenance mode. This was a two part improvement, one in the backend code in [core](https://github.com/ManageIQ/manageiq/pull/16464) the second in the [UI](https://github.com/ManageIQ/manageiq-ui-classic/pull/2717) so one can see that a host is or is not in maintenance mode.

## Fixed

'Tis the season for some bug fixes, fa-la-la-la-la, la-la-la-la.
With this being bug fixing season, there are so many wonderful fixed bugs to choose from. For example naming is hard as we all know, so now by sorting the order of Amazon's queue names, this [fix](https://github.com/ManageIQ/manageiq-providers-amazon/pull/361) should help improve the Amazon workers this holiday season.

Azure too got a [fix](https://github.com/ManageIQ/manageiq-providers-azure/pull/165) this week ending the tyranny of bugs including not being able to start or stop an Azure VM.

## New

Not so many new things this week what with it being bug fixing season. Did I mention that `Gaprindashvili-1-Beta1` is [out](http://manageiq.org/blog/2017/11/Announcing-Gaprindashvili-Beta1/)

## Wrapping up

So there we have it, the team are working hard fixing bugs so you and your team can have a happy holiday season, knowing that ManageIQ Gaprindashvili release will be the bestest version yet. However that doesn't mean you too can't join in the fun. So head on over to [Github](https://github.com/ManageIQ/) clone of of our repositories and submit a bug fix of your own.


[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-11-13+..+2017-11-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-11-13+..+2017-11-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-11-13+..+2017-11-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-amazon PRs merged]: https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-11-13+..+2017-11-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-ansible_tower PRs merged]: https://github.com/ManageIQ/manageiq-providers-ansible_tower/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-11-13+..+2017-11-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-foreman PRs merged]: https://github.com/ManageIQ/manageiq-providers-foreman/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-11-13+..+2017-11-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-google PRs merged]: https://github.com/ManageIQ/manageiq-providers-google/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-11-13+..+2017-11-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-hawkular PRs merged]: https://github.com/ManageIQ/manageiq-providers-hawkular/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-11-13+..+2017-11-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-lenovo PRs merged]: https://github.com/ManageIQ/manageiq-providers-lenovo/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-11-13+..+2017-11-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-kubernetes PRs merged]: https://github.com/ManageIQ/manageiq-providers-kubernetes/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-11-13+..+2017-11-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-nuage PRs merged]: https://github.com/ManageIQ/manageiq-providers-nuage/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-11-13+..+2017-11-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-openshift PRs merged]: https://github.com/ManageIQ/manageiq-providers-openshift/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-11-13+..+2017-11-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-openstack PRs merged]: https://github.com/ManageIQ/manageiq-providers-openstack/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-11-13+..+2017-11-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-ovirt PRs merged]: https://github.com/ManageIQ/manageiq-providers-ovirt/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-11-13+..+2017-11-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-scvmm PRs merged]: https://github.com/ManageIQ/manageiq-providers-scvmm/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-11-13+..+2017-11-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-vmware PRs merged]: https://github.com/ManageIQ/manageiq-providers-vmware/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-11-13+..+2017-11-19%22+sort%3Acreated-desc&utf8=%E2%9C%93
