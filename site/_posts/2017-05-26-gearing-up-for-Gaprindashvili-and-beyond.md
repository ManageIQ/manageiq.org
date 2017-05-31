---
title: "Last Week in ManageIQ: Gearing up for Gaprindashvili and beyond"
author: lgalis
date: 2017-05-30
comments: true
published: true
tags: LWIMIQ
---

Hello everyone, this is [Laura](https://github.com/lgalis), bringing you a new edition of Last Week in ManageIQ!

## Featured

With our Fine release out the door, the team is gearing up for our next release, [Gaprindashvili](http://manageiq.org/blog/2017/04/announce_g_name/), with an eye towards 
design and architectural changes that will improve ManageIQ's performance, stability and scalability.
Watch the recording of our latest sprint review to find out more about this. You can find the recording [right here.](https://www.youtube.com/watch?v=_SpWrRX0nHE&feature=youtu.be) 

The number of ManageIQ repositories has grown, the latest ones to be spun-off are: 
- [manageiq-network_discovery repo](http://talk.manageiq.org/t/repo-extraction-manageiq-network-discovery/2388)
- [manageiq-smartstate repo](http://talk.manageiq.org/t/repo-extraction-manageiq-smartstate/2389)
- [vmware_web_service repo](http://talk.manageiq.org/t/repo-extraction-vmware-web-service/2380)                                                                    


Here are some statistics about the PR activity for all ManageIQs repositories:

 - 59 PRs in the main [manageiq][manageiq PRs merged] repo
 - 47 PRs in [manageiq-ui-classic][manageiq-ui-classic PRs merged] repo
 - 18 PRs in [manaiq-ui-service][manageiq-ui-service PRs merged] repo
 - the rest in the providers' repos: [manageiq-providers-amazon][manageiq-providers-amazon PRs merged], [manageiq-providers-azure][manageiq-providers-azure PRs merged], [manageiq-providers-vmware][manageiq-providers-vmware PRs merged]

## Improved
 
 - After linking the 'miq_servers' and 'miq_tasks' tables [here](https://github.com/ManageIQ/manageiq/pull/14701), to make filtering of Tasks more intuitive after merging the Tasks and Jobs screens, [PR 14679](https://github.com/ManageIQ/manageiq/pull/14679) is replacing the 'Waiting_to_start' value for the state attribute in miq_tasks table with 'Queued'.
 - [PR 15141](https://github.com/ManageIQ/manageiq/pull/15141) Adds a new helper method for unique index columns to inventory collection.
 - [PR 15120](https://github.com/ManageIQ/manageiq/pull/15120) Use the new values in extra_vars to create a new dialog when editing an Ansible playbook service template, instead of waiting for the updated job template which may take some time.
 - [PR 15070](https://github.com/ManageIQ/manageiq/pull/15070) enhances the REST API to allow filtering on region_number for playbooks that belong to a repository.
 
## Fixed

- [PR 1354](https://github.com/ManageIQ/manageiq-ui-classic/pull/1354) - List only playbooks in the current region when creating or updating a Playbook Catalog Item.
- [PR 15124](https://github.com/ManageIQ/manageiq/pull/15124) makes TokenManager#token_ttl callable (evaluated at call time), thus delaying evaluation until call time, which honors updated settings values.
- [PR 15112](https://github.com/ManageIQ/manageiq/pull/15112) Ensures order is qualified by table name for rss feeds.
- [PR 15151](https://github.com/ManageIQ/manageiq/pull/15151) Fixes the REST API to allow users with admin role access to requests.  


## New

- [PR 15123](https://github.com/ManageIQ/manageiq/pull/15123) Allows disabling worker heartbeats for workers that are running in isolation or where communicating via DRB is not possible. This is preliminary work towards eventually allowing the spin up of workers without rake evm:start being done and activating a drb server to handle heartbeating.
- [PR 12506](https://github.com/ManageIQ/manageiq/pull/12506) Adds a cockpit webservice worker that can be enabled for a deployment where users want to use cockpit. 
- [PR 1205](https://github.com/ManageIQ/manageiq-ui-classic/pull/1205) Allows to explicitly disable hawkular in containers.

## Deleted

- The rhn_mirror code, that was a temporary bridge to RPM updates, has been removed.
 from the core repo in [PR 15156](https://github.com/ManageIQ/manageiq/pull/15156) as well as from the classic UI repo in [PR 1381](https://github.com/ManageIQ/manageiq-ui-classic/pull/1381). 
- The last caller of queue_restart_apache has been removed in [PR 15118](https://github.com/ManageIQ/manageiq/pull/15118).

## Wrapping up

This is all for this edition of LWIMIQ, thank you for taking the time to read. 
Please make sure to check out next week's entry, for updates on the ManageIQ happenings. And if you want to get involved, 
we always welcome new contributors.

Have a great, productive week everyone!

[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-15+..+2017-05-21%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-15+..+2017-05-21%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-15+..+2017-05-21%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-amazon PRs merged]: https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-15+..+2017-05-21%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-azure PRs merged]: https://github.com/ManageIQ/manageiq-providers-azure/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-15+..+2017-05-21%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-vmware PRs merged]: https://github.com/ManageIQ/manageiq-providers-vmware/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-05-15+..+2017-05-21%22+sort%3Acreated-desc&utf8=%E2%9C%93
