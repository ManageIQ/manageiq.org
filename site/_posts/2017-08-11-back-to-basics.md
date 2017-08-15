---
title: "Last Week in ManageIQ: Back to Basics"
author: jntullo
date: 2017-08-15
comments: true
published: true
tags: LWIMIQ
---

Hello there! It's [Jillian](https://github.com/jntullo) again, here with the latest happenings the last *two* weeks in ManageIQ. 
I probably cannot top last week's [edition](http://manageiq.org/blog/2017/08/limericks-week-in-miq/), so I've decided to
bring it back to basics for this one. Read on to see what's been happening in our world over the past two weeks. 

## Featured

If you're users of or contributors to the API, you may be interested to hear that the API now has its own repository!
Head on over to its new location [here](https://github.com/ManageIQ/manageiq-api) and check out the [talk](http://talk.manageiq.org/t/proposed-split-repo-manageiq-api/2587/3) 
article for more information.

## Improved

### Zone Selection
Zone selection has been improved in the UI to show only [zones in the current region](https://github.com/ManageIQ/manageiq-ui-classic/pull/1769), not all zones. 

### Update UI without Database Connection
The task of updating the UI did not need a database connection to execute, but was still failing without one. An [update to that task](https://github.com/ManageIQ/manageiq-ui-classic/pull/1887)
will allow `rake update:ui` to run without a database connection. 

## Fixed

### Removed Assumptions from Tests 
Making assumptions in tests can lead to sporadic failures. By removing the assumption that the region [is not 99](https://github.com/ManageIQ/manageiq/pull/15731), we improve our test reliability. 

### Seeding Timeout
Seeding can take longer than the default 10 minute timeout, which will cause failure of the database to populate and the app to run. A temporary variable
will give the app enough time to initially seed the database and avoid this problem. You can check out that [PR](https://github.com/ManageIQ/manageiq/pull/15595) here.

## New

### Metric Rollups at the Service Level
This [enhancement](https://github.com/ManageIQ/manageiq/pull/15695) brings metric rollups to the service level. These rollups are for both
hourly and daily intervals, and calculate the metric information about the VMs belonging to that service.

### Generic Object Bells and Whistles
Quick search, advanced search, download data, and GTL were added to the generic objects list view in the classic UI. Head on over 
[here](https://github.com/ManageIQ/manageiq-ui-classic/pull/1788) to check out the details and view some great screenshots about this new enhancement.

## Deleted

### 31,494 LOC :scissors:
This may be considered cheating as it's not a complete deletion, but this [PR](https://github.com/ManageIQ/manageiq/pull/15682) removed
31,494 lines of code. Sure, they were added back to the new [manageiq-api repository](https://github.com/ManageIQ/manageiq-api), but it's still an impressive :scissors: feat!

### Almost nothing
From tens of thousands of lines deleted, to 0, [this](https://github.com/ManageIQ/manageiq-ui-classic/pull/1820) still counts! It's great to clean things up
and remove unnecessary files.

### Style Removals
There were also some style removals, some for the [nav](https://github.com/ManageIQ/manageiq-ui-classic/pull/1803) and some others [here](https://github.com/ManageIQ/manageiq-ui-classic/pull/1802).

## Wrapping up

That's all for this (two) week edition of Last Week in ManageIQ! As always, we welcome any and all contributions! Head on over to our [organization](https://github.com/manageiq) to
view all of our repos, see what we're up to, and find issues that you can help out with!
