---
title: "Last Week in ManageIQ: Words"
author: himdel
date: 2017-05-16
comments: true
published: true
tags: LWIMIQ
---

So, another week, another LWIMIQ...


## Backend side

On the backend side, [38 PRs](https://github.com/ManageIQ/manageiq/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-08+..+2017-05-14%22+sort%3Acreated-desc&utf8=%E2%9C%93) were merged last week.

Chris has started looking into moving us to Rails 5.1, bumping rspec to 3.6.
https://github.com/ManageIQ/manageiq/pull/15046

Drew made it easier to write specs for code relying on the embedded ansible provider.
https://github.com/ManageIQ/manageiq/pull/15045

Simon was debugging yet another sporadic spec failure.
https://github.com/ManageIQ/manageiq/pull/14923

Libor made Middleware models and MiqRequest work with RBAC.
https://github.com/ManageIQ/manageiq/pull/15011
https://github.com/ManageIQ/manageiq-ui-classic/pull/1214


## UI side

On the UI (classic) side [34 PRs](https://github.com/ManageIQ/manageiq-ui-classic/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-08+..+2017-05-14%22+sort%3Acreated-desc&utf8=%E2%9C%93) were merged last week.

Thanks to Yaacov, Containers now no longer use an explorer screen (the one with a tree on the left) and replaced it with a listnav, adding some default filters in the process.
https://github.com/ManageIQ/manageiq/pull/14893
https://github.com/ManageIQ/manageiq-ui-classic/pull/1204

Speaking of listnavs, Gabriel also added a listnav to the Physical Server screen, for the new physical infrastructure.
Not stopping there, he also added a textual summary link to those, list of groups and a toolbar.
https://github.com/ManageIQ/manageiq-ui-classic/pull/1195
https://github.com/ManageIQ/manageiq-ui-classic/pull/1322
https://github.com/ManageIQ/manageiq-ui-classic/pull/1299
https://github.com/ManageIQ/manageiq-ui-classic/pull/1294

Physical servers were rather popular last week it seems, since Maysa was also working there, adding a hardware info display in the detail screen, and Charlie has added network data to the same screen.
https://github.com/ManageIQ/manageiq-ui-classic/pull/1272
https://github.com/ManageIQ/manageiq-ui-classic/pull/1276

Aparna fixed Ansible credentials password handling when editing.
https://github.com/ManageIQ/manageiq-ui-classic/pull/1227

Eric made PDFs work again after the UI split.
https://github.com/ManageIQ/manageiq-ui-classic/pull/1332
https://github.com/ManageIQ/manageiq/pull/14793

Zita made it possible for container dashboards to display flash messages.
https://github.com/ManageIQ/manageiq-ui-classic/pull/1312

And Martin did a toolbar cleanup, we no longer have to show/hide the toolbar manually from the UI code, the toolbar now autohides when no toolbars are present, and shows up when some are.
https://github.com/ManageIQ/manageiq-ui-classic/pull/1239

We also had a bunch of Mendel University in Brno students convert some Angular controllers to `controllerAs`, as part of their Software Engineering course, thanks! :)
https://github.com/ManageIQ/manageiq-ui-classic/pull/740
https://github.com/ManageIQ/manageiq-ui-classic/pull/719
https://github.com/ManageIQ/manageiq-ui-classic/pull/718


There's also [19 PRs](https://github.com/ManageIQ/manageiq-ui-service/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-08+..+2017-05-14%22+sort%3Acreated-desc&utf8=%E2%9C%93) merged in ui-service, looks like this week was all about specs :).


## Provider side

The list of providers taken out of the main repo has grown to 9, which is too many to cover, but feel free to take a peek:

   * [manageiq-providers-amazon](https://github.com/ManageIQ/manageiq-providers-amazon/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-08+..+2017-05-14%22+sort%3Acreated-desc&utf8=%E2%9C%93)
   * [manageiq-providers-azure](https://github.com/ManageIQ/manageiq-providers-azure/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-08+..+2017-05-14%22+sort%3Acreated-desc&utf8=%E2%9C%93)
   * [manageiq-providers-hawkular](https://github.com/ManageIQ/manageiq-providers-hawkular/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-08+..+2017-05-14%22+sort%3Acreated-desc&utf8=%E2%9C%93)
   * [manageiq-providers-kubernetes](https://github.com/ManageIQ/manageiq-providers-kubernetes/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-08+..+2017-05-14%22+sort%3Acreated-desc&utf8=%E2%9C%93)
   * [manageiq-providers-lenovo](https://github.com/ManageIQ/manageiq-providers-lenovo/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-08+..+2017-05-14%22+sort%3Acreated-desc&utf8=%E2%9C%93)
   * [manageiq-providers-openshift](https://github.com/ManageIQ/manageiq-providers-openshift/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-08+..+2017-05-14%22+sort%3Acreated-desc&utf8=%E2%9C%93)
   * [manageiq-providers-openstack](https://github.com/ManageIQ/manageiq-providers-openstack/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-08+..+2017-05-14%22+sort%3Acreated-desc&utf8=%E2%9C%93)
   * [manageiq-providers-ovirt](https://github.com/ManageIQ/manageiq-providers-ovirt/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-08+..+2017-05-14%22+sort%3Acreated-desc&utf8=%E2%9C%93)
   * [manageiq-providers-vmware](https://github.com/ManageIQ/manageiq-providers-vmware/pulls?q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-08+..+2017-05-14%22+sort%3Acreated-desc&utf8=%E2%9C%93)


## Wrapping up

See? Just words.
