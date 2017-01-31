---
title: "Last Week in ManageIQ: Keeping up with the conferences"
author: skateman
date: 2017-01-30
comments: true
published: true
tags: LWIMIQ
---

Hi, I am [Dávid](https://github.com/skateman) from the ManageIQ UI team. I will be your guide in this quick recap of what happened in the last week on our premises.

## Featured
During the weekend, we were promoting ManageIQ on [DevConf.cz](http://devconf.cz), an amazing conference held in Brno, Czech Republic. Mooli Tayer from the container management team gave a really interesting talk about [automating a datacenter using ManageIQ and Ansible](https://www.youtube.com/watch?v=oK8l_u_kHC8). To learn more, check out our [twitter feed](https://twitter.com/manageiq) and look for the [#DevConfCZ](https://twitter.com/search?q=%23devconfcz%20manageiq) hashtag.

Even if some of us were busy with organizing the conference, we were able to merge 124 PRs into 6 repositories. We are still getting used to the new split repositories, so there are plenty of PRs ensuring that everything works well among these repos.

## Improved

[Eric Winchell](https://github.com/epwinchell) is responsible for creating more and more vector graphics in the UI. His plan is to use fonticons where we don't need more than one color and SVG files where colors are necessary. His [last merged PR](https://github.com/ManageIQ/manageiq-ui-classic/pull/249) gets rid of references to PNG files in trees related to Automation and Policies. Hopefully when we are fully converted across the whole UI, we can get rid of hundreds of unused PNG files.

Ansible is great and we would like to have better integration with our automation. [James](https://github.com/jameswnl) is one of the people working on this very hard. By [migrating](https://github.com/ManageIQ/manageiq/pull/13630) the `ConfigurationManager` of Ansible Tower to the new `AutomationManager` we are one step closer in achieving this goal.

## Fixed

As we are trying to move the VMware provider to its new repo, some paths in requiring helpers weren't adjusted properly. Thanks to [Adam](https://github.com/agrare) this is now [fixed and working](https://github.com/ManageIQ/manageiq-providers-vmware/pull/2). These things are expected consequences of the moving, but they can be found and fixed quickly.

We are proudly using [Sauce Labs](https://saucelabs.com/) for continuous integration of our Service UI. This feature can be enabled for a fork of the repository by turning on Travis tests. However, if you forgot your Sauce Labs credentials, the tests would run and fail. Thanks to [Chris Hale](https://github.com/chalettu) this is now [fixed](https://github.com/ManageIQ/manageiq-ui-service/pull/460).

## New

Collecting metrics is useful, but storing them in an SQL database is not always *The Right Way*&trade;. [Jason](https://github.com/Fryguy) introduced a new model called [ActiveMetrics](https://github.com/ManageIQ/manageiq/pull/13436) that is similar to `ActiveRecord` but it has adapters to databases tuned for collecting metrics in a high frequency.

We introduced the new dashboard type summary screens a few months ago. These are giving you a better overview of a given entity by showing **more charts** and less tables. Thanks to [Zita](https://github.com/ZitaNemeckova) now you have a [configuration option in the UI](https://github.com/ManageIQ/manageiq-ui-classic/pull/141) to set the dashboards as the default view across the UI.

## Deleted

[Brandon](https://github.com/bdunne) found out that some constants were not used anywhere. These were connected with Automation at some point, but no longer used, so it was safe to [get rid of them](https://github.com/ManageIQ/manageiq/pull/13665).

[Milan](https://github.com/mzazrivec) is making our internationalization support better and better, which means that we can delete more legacy code used to maintain compatibility. A good example of this is the use of `PostponedTranslation` which is no longer required in `UiConstants` so [it has been deleted](https://github.com/ManageIQ/manageiq-ui-classic/pull/241).

## Wrapping up
This was a quick overview of what have we done last week, but feel free to check out the complete list for each repository. If you want to meet us in person, we will be attending [FOSDEM](https://fosdem.org/2017/) this weekend in Brussels, Belgium. Search for the people in ManageIQ T-shirts!
