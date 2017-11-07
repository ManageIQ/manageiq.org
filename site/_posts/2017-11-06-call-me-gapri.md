---
title: "Last Week in ManageIQ: Please call me Gapri if it helps you relax"
author: Roman Blanco
date: 2017-11-07
comments: true
published: true
tags: LWIMIQ
---

Wohoo! It's here again! All the features we were working on over the truly _Fine_ summer, are now released in new version, **Gaprindashvili**.

[Roman](https://github.com/romanblanco) from UI team here, with my second LWIMIQ article. Lets see what happened last week.

## Improved

There is no week where we wouldn't improve at least a small thing :)
Last week [Bill](https://github.com/bzwei) has improved [Ansible playbook logging](https://github.com/ManageIQ/manageiq/pull/16333), [Piotr](https://github.com/pkliczewski) has [made the Host trigger refresh after being removed](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/127) and [Shmuel](https://github.com/smelamud) has [extended dialog to select VM by tag](https://github.com/ManageIQ/manageiq-providers-ovirt/pull/115)

## Fixed

With new features may also unfortunately come bugs. Last week [Adam](https://github.com/agrare) has helped ManageIQ to be less buggy by [fixing SCVMM credential validation](https://github.com/ManageIQ/manageiq-ui-classic/pull/2575), [David](https://github.com/skateman) updated GTL lists to [use custom pictures](https://github.com/ManageIQ/manageiq-ui-classic/pull/2573) and [Drew](https://github.com/d-m-u) fixed [Custom buttons with subclasses](https://github.com/ManageIQ/manageiq/pull/16378)

## New

One of the features that you can find in **Gaprindashvili** are new [metering reports](https://github.com/ManageIQ/manageiq/pull/16342) that [Libor](https://github.com/lpichler) was working on. [Karel](https://github.com/karelhala) has [enabled compliance check for Middleware server](https://github.com/ManageIQ/manageiq/pull/16376) and [Adam](https://github.com/agrare) made it possible to [login with console authentication](https://github.com/ManageIQ/manageiq-providers-vmware/pull/125) for VMware providers.

## Deleted

As much important as adding and improving new features is also removing the unused and duplicated code.
Last week, [Brandon](https://github.com/bdunne) has found and [removed duplications in Aggregation mixin](https://github.com/ManageIQ/manageiq/pull/16368) and [Harpreet](https://github.com/h-kataria) has fixed button groups by [removing unneeded attribute](https://github.com/ManageIQ/manageiq-ui-classic/pull/2630) from toolbar definition.

## Wrapping up

So this was basically yet another awesome week in ManageIQ-land :wink:
Don't forget to be awesome and happy! See you next time.

[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-10-30+..+2017-11-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-10-30+..+2017-11-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-10-30+..+2017-11-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-amazon PRs merged]: https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-10-30+..+2017-11-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-ansible_tower PRs merged]: https://github.com/ManageIQ/manageiq-providers-ansible_tower/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-10-30+..+2017-11-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-foreman PRs merged]: https://github.com/ManageIQ/manageiq-providers-foreman/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-10-30+..+2017-11-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-google PRs merged]: https://github.com/ManageIQ/manageiq-providers-google/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-10-30+..+2017-11-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-hawkular PRs merged]: https://github.com/ManageIQ/manageiq-providers-hawkular/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-10-30+..+2017-11-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-lenovo PRs merged]: https://github.com/ManageIQ/manageiq-providers-lenovo/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-10-30+..+2017-11-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-kubernetes PRs merged]: https://github.com/ManageIQ/manageiq-providers-kubernetes/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-10-30+..+2017-11-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-nuage PRs merged]: https://github.com/ManageIQ/manageiq-providers-nuage/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-10-30+..+2017-11-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-openshift PRs merged]: https://github.com/ManageIQ/manageiq-providers-openshift/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-10-30+..+2017-11-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-openstack PRs merged]: https://github.com/ManageIQ/manageiq-providers-openstack/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-10-30+..+2017-11-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-ovirt PRs merged]: https://github.com/ManageIQ/manageiq-providers-ovirt/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-10-30+..+2017-11-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-scvmm PRs merged]: https://github.com/ManageIQ/manageiq-providers-scvmm/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-10-30+..+2017-11-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-vmware PRs merged]: https://github.com/ManageIQ/manageiq-providers-vmware/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-10-30+..+2017-11-05%22+sort%3Acreated-desc&utf8=%E2%9C%93
