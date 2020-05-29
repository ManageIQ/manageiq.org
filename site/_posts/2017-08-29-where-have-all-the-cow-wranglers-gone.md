---
title: "Last Week in ManageIQ: Where Have All The Cow Wranglers Gone"
author: allenbw
date: 2017-08-29
comments: true
published: true
tags: LWIMIQ
---
Hi Friends!  [Allen](https://github.com/allenbw) here, with news to share!
Since [we last talked](http://manageiq.org/blog/2017/08/back-to-basics/) much has happened, two weeks of on goings are due for discussion.
A few quick stats before we dig in:
* No new repositories this time around!
* ~ 447 PRs closed across 133 ManageIQ Repos (between 08/07 to 08/21)
* In descending order, the top four repositories by pull request activity:
    * [UI Classic](https://github.com/ManageIQ/manageiq-ui-classic)
    * [ManageIQ](https://github.com/ManageIQ/manageiq)
    * [Integration Tests](https://github.com/ManageIQ/integration_tests)
    * [ManageIQ Docs](https://github.com/ManageIQ/manageiq-documentation)
* Downstream version updated from 4.5 to 4.6 [here](https://github.com/ManageIQ/manageiq-documentation/pull/491)

Okay okay so let's get into it.
## Featured
Oh my! Without a repo fork to feature, lets turn our attention to a hotly discussed and highly welcomed update to the `Container Image` list view.
Now it includes a [`Number of Containers` column](https://github.com/ManageIQ/manageiq/pull/15741). Those little usability features just make all the difference.
## Improved
### Additional Class Methods
It was requested [in ManageIQ/manageiq-api#3](https://github.com/ManageIQ/manageiq-api/pull/3#discussion_r132476373) and fulfilled [by ManageIQ here](https://github.com/ManageIQ/manageiq/pull/15799), a metadata function that should return the description of the data stored in the options field was added!
Cross repo collaboration is the name of our game.
### Operational Alerts Table Documentation
Can not forget da docs!  Operational alerts table docs were improved [here](https://github.com/ManageIQ/manageiq-documentation/pull/486)
### Code Cleanliness
Hot darn, code cleanliness improved! While not in the forefront of most users minds, ensuring code is clean, neat, and standardized is essential to developer sanity!
[We saw quite a bit of cleanup happen in the Classic UI](https://github.com/ManageIQ/manageiq-ui-classic/pull/2022) and [also in the Service UI](https://github.com/ManageIQ/manageiq-ui-service/pull/886).
Welcome improvements indeed.
## Fixed
### Report Generation Identification
Rather than relying on "system" ownership when generating reports, the API now requires [a `userid` of the current user](https://github.com/ManageIQ/manageiq-api/pull/30)
## New
### All TEH Quad Icons
You know the, you love them, the one, the only **QUAD ICONS** now for container providers [here](https://github.com/ManageIQ/manageiq-ui-classic/pull/1950)
### Providers - Lenovo - Support for Additional Power Operations
This [enhancement](https://github.com/ManageIQ/manageiq-providers-lenovo/pull/69) updates provider and spec tests to support additional power operations including:
* Power_restart_node_to_setup
* Power_restart_node_now
* Power_restart_node_controller
* Power_off_node_now

## Deleted
### `spec_helper.rb` Cleanup
Stale code is :no_good: **SO** the aforementioned file was cleaned up [here](https://github.com/ManageIQ/manageiq/pull/15853).
### Widgetastic All Things
Deleted existing `execute_button` in [ManageIq / intergration_tests repo](https://github.com/ManageIQ/integration_tests/) **psych**, [just converted it to widgetastic](https://github.com/ManageIQ/integration_tests/pull/5195).
## Wrapping Up
Ahh well that was refreshing, a nice sip of what's new with MIQ! Only just a sip, as there was far more ongoings than highlighted here.
As always, [we welcome any and all contributions](https://github.com/manageiq) so please do stop by!
See what we are up to, find issues that you can help out with, we look forward to seeing you soon! :bow:
