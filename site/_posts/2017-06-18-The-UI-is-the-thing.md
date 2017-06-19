---
title: "Last Week in ManageIQ: The UI is the thing"
author: djberg96
date: 2017-06-20
comments: true
published: true
tags: LWIMIQ
---

Hi all! [Daniel Berger](https://github.com/djberg96) here again from the Providers team. This is my second Last Week in ManageIQ post, where I try to distill the week's highlights of ManageIQ development into a nice, digestable format.

## Featured

This past week saw [42 PR's][manageiq PRs merged] merged into ManageIQ core.

Our provider repositories were rather quiet last week, so both the Classic UI and Service UI teams "picked up the slack" as it were, with [31 PR's][manageiq-ui-classic PRs merged] merged for the Classic UI and [6 PR's][manageiq-ui-service PRs merged] merged for the Service UI.

## Improved

The Classic UI saw several improvements. Some highlights include:

[Policy event assignment styling](https://github.com/ManageIQ/manageiq-ui-classic/pull/1543)

[Sane default port for Lenovo](https://github.com/ManageIQ/manageiq-ui-classic/pull/1531)

[Show last refresh time](https://github.com/ManageIQ/manageiq-ui-classic/pull/1518)

[Support physical infrastructure policies in the UI](https://github.com/ManageIQ/manageiq-ui-classic/pull/1504)

## Fixed

Among other bug fixes, there were about a dozen bugs or so that were fixed for the Classic UI last week. Some highlights include:

[Titles and labels for Openstack hosts and clusters](https://github.com/ManageIQ/manageiq-ui-classic/pull/1560)

[Ansible now allows the git protocol as valid input](https://github.com/ManageIQ/manageiq-ui-classic/pull/1557)

[Quadicon styling for VM's fixed](https://github.com/ManageIQ/manageiq-ui-classic/pull/1537)

[Cancel button button enabled for custom form](https://github.com/ManageIQ/manageiq-ui-classic/pull/1520)

[Middleware providers link fixed](https://github.com/ManageIQ/manageiq-ui-classic/pull/1492)

Meanwhile on the backend there were several fixes as well. Among others we saw:

[Logging and IPv6](https://github.com/ManageIQ/manageiq/pull/15344)

[Fix for orchestrated destroy](https://github.com/ManageIQ/manageiq/pull/15339)

## Deleted

We continue to chip away at gems-pending as we move its contents into their own gems:

[Remove psych dependency](https://github.com/ManageIQ/manageiq/pull/15344)

[Remove vmdb-logger from appliance console](https://github.com/ManageIQ/manageiq-gems-pending/pull/206)

## Wrapping up

That's it for this week. If you would like to get involved, head over to our [Current Issues](https://github.com/ManageIQ/manageiq/issues) and take a gander.

[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-12+..+2017-06-18%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-12+..+2017-06-18%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-12+..+2017-06-18%22+sort%3Acreated-desc&utf8=%E2%9C%93
