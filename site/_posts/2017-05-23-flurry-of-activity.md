---
title: "Last Week in ManageIQ: A Flurry of Activity"
author: jntullo
date: 2017-05-23
comments: true
published: true
tags: LWIMIQ
---

:wave: Hello out there, ManageIQ community! Welcome to another edition of Last Week in ManageIQ hosted by yours truly, :woman_technologist: [Jillian](https://github.com/jntullo) .
As summer approaches it may be getting warm outside, but the ManageIQ repositories are still flurrying :snowflake: with activity as usual. 

## Improved :chart_with_upwards_trend:

### Performance improvements
Improvements were made to ensure that actions are not queued unnecessarily. With this [change](https://github.com/ManageIQ/manageiq/pull/15067), smart-state job dispatching
 will check whether it's needed rather than queuing what will result in a no-op. Destroy actions were [fixed up](https://github.com/ManageIQ/manageiq/pull/15080) similarly. 

### Styling cleanups
It's not only what's on the outside of the UI that counts, and this [PR](https://github.com/ManageIQ/manageiq-ui-classic/pull/1333) cleaned up some code by removing what was no longer needed or was already included elsewhere.
The PR also organizes some .scss files. 

## Fixed :boom:

### Fix definitions in gemspec
Fixes don't have to be big or complicated, as demonstrated [here](https://github.com/ManageIQ/manageiq-providers-azure/pull/70) and [here](https://github.com/ManageIQ/manageiq-providers-vmware/pull/59). A quick 
change from a `.` to a `,` ensures the gemspec searches through the app, config, and lib directories properly.

### Fix default tab error
This PR packed [multiple fixes](https://github.com/ManageIQ/manageiq-ui-classic/pull/1341) onto the new provider form. When Openstack Infra is selected,
it will now show an error indicator on the tab when there is an issue. The PR also ensures that no tabs are visible until a type is selected.

## New :sparkles:

### Custom branding
This [improvement](https://github.com/ManageIQ/manageiq-ui-service/pull/769) brings custom brand support in the SUI to parity with the OPS UI. 

### Delete method for cloud subnet
[Delete methods](https://github.com/ManageIQ/manageiq/pull/15087) for cloud subnets are now exposed in the automate engine thanks to this new addition.

## Deleted :scissors:
### Remove recursive-open-struct
The recursive-open-struct gem was [removed](https://github.com/ManageIQ/manageiq/pull/15096). It was a dependency of kubeclient and openshift_client, but not used by ManageIQ itself. This change allows gems to manage their own dependencies. 

### Remove queue_restart_apache
The no-longer used method queue_restart_apache has officially been [deleted](https://github.com/ManageIQ/manageiq/pull/15118). 

## Wrapping up :gift_heart:
I hope you enjoyed this selection of PRs, but remember there are plenty more where these came from. Head on over to the [ManageIQ organization](https://github.com/manageiq) to view 
the progress being made across all of our repositories. As always, we welcome you to join in on the fun and become a contributor!
