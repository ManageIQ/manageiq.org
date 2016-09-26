---
title: "Last Week in ManageIQ: Bootstrap Tree is Here"
date: 2016-09-12
author: zita
tags: LWIMIQ
comments: true
published: true
---

Brno office sends its regards once again. I, [Zita](https://github.com/ZitaNemeckova) will tell you more about last week's news in ManageIQ codebase :)

## Stats

Last week, 48 contributors got [115 PRs][PRs merged last week] with [359 commits][Commits merged last week] merged to the master branch. And I will tell you more about the most interesting ones (from my point of view).

Anyone can be a ManageIQ contributor, it's really easy :) . You just pick an issue from the [issue tracker](https://github.com/ManageIQ/manageiq/issues) and make a PR. 


## Improved
If you ever wondered why trees are looking way better this week than they did before, it's thanks to [David](https://github.com/skateman) and his [Replaced dynatree with a modified version of bootstrap-treeview](https://github.com/ManageIQ/manageiq/pull/10767) PR that he worked on lately.
As they can grow to sequoia-like height sometimes, their performance must be top-notch. [Keenan](https://github.com/kbrock) is making sure they are as fast as they can be with [TreeBuilder use settings not config](https://github.com/ManageIQ/manageiq/pull/11138)
and [Tree builder misc performance fixes](https://github.com/ManageIQ/manageiq/pull/11139). And more PRs are coming soon. 

In the past, you had to set ports one by one but [Joe S](https://github.com/selmanj) made an improvement [Use a range of port numbers instead of a single port for load balancers](https://github.com/ManageIQ/manageiq/pull/10804) that allows you to use a range to set all the ports at once from now on. Isn't it neat?

## Fixed
Last week, you saw how i18n is done correctly, this week [Joe R](https://github.com/jrafanie) shows in his numerous PRs [here](https://github.com/ManageIQ/manageiq/pull/11079), [here](https://github.com/ManageIQ/manageiq/pull/11077), [here](https://github.com/ManageIQ/manageiq/pull/11074) and [here](https://github.com/ManageIQ/manageiq/pull/11071) 
how to use interpolation correctly so that Rubocop is happy and can give you a cookie.

[Simon](https://github.com/isimluk) fixed a problem with trailing nonsense in an URL with the PR [API should return http:404 when URL has trailing garbage](https://github.com/ManageIQ/manageiq/pull/11058). So now you just get a nice 404 if you have some unwanted leftovers in your URL.

## New
From now on, ManageIQ has a new notification drawer done by [Simon](https://github.com/isimluk) and [Jeffrey](https://github.com/jeff-phillips-18). The first one provided backend [API for Notification Drawer](https://github.com/ManageIQ/manageiq/pull/10696) after hours of head scratching and the second made all that visible in the UI [Add Notifications Drawer and Toast Notifications List](https://github.com/ManageIQ/manageiq/pull/10955) (check it to see how it looks). 

Topology graph has a new feature from [Jiri](https://github.com/Jiri-Kremser). Now you can see middleware messaging entities as well thanks to the PR [Displaying middleware messaging entities in the topology graph](https://github.com/ManageIQ/manageiq/pull/10892).

Another provider-related new feature is the OpenShift Deployment Wizard (bunch of new windows) added by [Daniel](https://github.com/dkorn) in the PR [OpenShift Deployment Wizard](https://github.com/ManageIQ/manageiq/pull/7620). Deployment is now easier and more user friendly.

Cockpit had been on [MartinP](https://github.com/martinpovolny)'s mind lately. He brought a new API to connect ManageIQ with it, in the PR [Add cockpit support to the API](https://github.com/ManageIQ/manageiq/pull/10871).

[Alberto](https://github.com/abellotti) created a new class MiqAeBrowser in the PR [Adding the MiqAeBrowser](https://github.com/ManageIQ/manageiq/pull/9586) that adds an enhancement to Automate model. It brings arbitrary depth tree search of the Automate mode, supports serialized objects to include `fqname`, `domain_fqname` and `klass` and more.  
 
## Deleted
[Joe R](https://github.com/jrafanie) shared his love for deleting (in this case commenting out) bad code with the PR [Fix unreachable code by removing it or commenting it out](https://github.com/ManageIQ/manageiq/pull/11110). It's always nice to delete unreachable code unless 
you make a mistake and it crashes (personal experience).
 
[Tim](https://github.com/imtayadeway) didn't delete much in his PR [Remove "typed_target" from API update paths](https://github.com/ManageIQ/manageiq/pull/11034) but nicely renamed some methods and used `super`. The functionality is the same but code is way better looking. A great example how to code better.

As we moved from dynatree to bootstrap treeview, [Happy Martin](https://github.com/himdel) got rid of some old dynatree pictures in the PR [Remove remaining dynatree images](https://github.com/ManageIQ/manageiq/pull/11042) and [David](https://github.com/skateman) hid his removal of dynatree related code in his "too big for one commit" PR [Replaced dynatree with a modified version of bootstrap-treeview](https://github.com/ManageIQ/manageiq/pull/10767). 

## Wrapping up

I'm sure that I didn't talk about all the PRs that deserved to be mentioned this week. You can check them all out [here][PRs merged last week]. It was nice to be your guide this week :) See you next time. 

[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?utf8=✓&q=is%3Apr%20is%3Amerged%20base%3Amaster%20merged%3A%222016-09-05%20..%202016-09-11%22%20sort%3Acreated-desc%20
[Commits merged last week]: https://github.com/manageiq/manageiq/compare/master@%7B2016-09-05%7D...@%7B2016-09-11%7D
