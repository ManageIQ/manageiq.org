---
title: "Last Week in ManageIQ: The last will be the first!"
author: hstastna
date: 2017-01-23
tags: LWIMIQ
comments: true
published: true
---

Hi all! [Hilda](https://github.com/hstastna) here. This is my first Last Week in ManageIQ post, and I hope this isn't my last! Below is a review of the last week's changes.

## Featured

As we are getting used to splitting repos, deleting so many lines and preparing for Angular 2 in the UI, there were 97 [PRs] merged last week in manageiq core, more than the week before, containing 217 [commits] by 43 [contributors]. You can choose from our list of [open issues], if you would like to contribute. Any help is appreciated.

On Wednesday, we participated in the sprint review meeting as usual, as this was for the end of Sprint 52 for Monday, January 16th. You can find the recorded video in the [ManageIQ channel](https://www.youtube.com/watch?v=eVuhBZ53SP0). By the way, 52 is quite nice number. 52 = 2^2 x 13, and about two weeks ago, we had Friday 13th :)


## Improved

It looks like that Ansible Tower objects modeling was the most popular or the [most commented] merged PR with 20 files changed. Some deletions and many more new lines represent adding service models for new Ansible models and much more. Let's [check out](https://github.com/ManageIQ/manageiq/pull/13427) great work by [James](https://github.com/jameswnl)!

We also got new Alerts to product features last week. [This work](https://github.com/ManageIQ/manageiq/pull/13357) by [Jeff](https://github.com/jeff-phillips-18) includes, of course, adding Alerts to product features, making alerts section identifiers unique and moving them under Monitor, and also the UI part. There were some model changes for alerts, adding alerts API, adding alert statuses in another PRs by another contributors. We'll see how Alerts are goin' in next weeks in ManageIQ.

[Pull request](https://github.com/ManageIQ/manageiq/pull/12863) by [Ken](https://github.com/kevensen) adds more than 700 lines of code in one commit to add container components for service model. As he has written, "OpenShift (and theoretically other container platforms) objects should be treated as first class citizens in the Automate Service Model in ManageIQ. This will enable customized workflows using these objects."

[Simon](https://github.com/isimluk)'s not last contribution to ManageIQ can be seen for example in his [big PR](https://github.com/ManageIQ/manageiq/pull/13419) regarding chargebacks and backporting lots of stuff to Euwe. 73 commits in this PR is also a nice number, as it is, in our 21st century, the 21st prime number :)


## Fixed

There were, definitely, some bugs and issues fixed last week: 33 in [the manageiq repo] and 17 in our favorite [manageiq-ui-classic], including Euwe and Darga backports.

First, as you know, bin/update had a surprise for all of us representing failing by good_migrations gem. Mr. Migration-repairman, named [Libor](https://github.com/lpichler) came to fix this! His work, containing adding module method for getting class which includes the module, removing dependency on ApplicationRecord and much more, can be seen [here](https://github.com/ManageIQ/manageiq/pull/13450)!

Next, [Beni](https://github.com/cben) fixed [missing icons for provider policies & compliance events](https://github.com/ManageIQ/manageiq-ui-classic/pull/94), and his PR was the most commented PR regarding fixed bugs last week in our main manageiq repository.

There is also [Harpreet](https://github.com/h-kataria)'s nice [fix of button method](https://github.com/ManageIQ/manageiq/pull/13251) to handle tagging button for missing entities in Darga. "Code was throwing an error when tagging button was pressed from list of cloud_volumes thru Cloud provider relationship", she has mentioned. Now tagging screen can load successfully for Cloud Volumes we select.


## Deleted

It's always good to refactor the code and make it better, which includes deleting lots of old stuff. For instance, [David](https://github.com/skateman) made a [nice change](https://github.com/ManageIQ/manageiq-ui-classic/pull/138) in the UI part, where he has added support for icons in 'TreeBuilderAutomateSimulationResults'. There were more lines deleted than added, and that's what we like! :)

[Marcel](https://github.com/durandom) removed more than 200 lines from our main [manageiq repo] in [his PR](https://github.com/ManageIQ/manageiq/pull/13116) and this change was about moving vmware provider to [ManageIQ/manageiq-providers-vmware](https://github.com/ManageIQ/manageiq-providers-vmware).


## Wrapping up
This was just a synopsis of last week in ManageIQ, check out our full list of merged [PRs] for a more complete picture.

Thanks to all for your great work and I wish you a lot of fun and success with ManageIQ!

[PRs]: https://github.com/manageiq/manageiq/pulls?utf8=%E2%9C%93&q=merged%3A2017-01-16..2017-01-22
[commits]: https://github.com/manageiq/manageiq/compare/master@%7B2017-01-16%7D...@%7B2017-01-22%7D
[open issues]: https://github.com/ManageIQ/manageiq/issues
[contributors]: https://github.com/ManageIQ/manageiq/graphs/contributors
[most commented]: https://github.com/ManageIQ/manageiq/pulls?utf8=%E2%9C%93&q=merged%3A2017-01-16..2017-01-22%20sort%3Acomments-desc
[the manageiq repo]: https://github.com/ManageIQ/manageiq/pulls?utf8=%E2%9C%93&q=merged%3A2017-01-16..2017-01-22%20sort%3Acomments-desc%20label%3Abug
[manageiq-ui-classic]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?utf8=%E2%9C%93&q=merged%3A2017-01-16..2017-01-22%20sort%3Acomments-desc%20label%3Abug%20