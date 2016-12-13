---
title: "Last Week in ManageIQ: Provider generator, pglogical upgrades, and Chen primes!"
author: chrisarcand
date: 2016-12-13 00:05:10
comments: true
published: true
tags: LWIMIQ
---

[Chris](https://twitter.com/chrisarcand) here, welcoming you to another edition
of *Last Week in ManageIQ*! It's a balmy 0° here in Minnesota, USA - that's
about -18° Celsius, according to local authorities. With the wind chill making
it -20° (-29°C), I'm thinking a look back at all the great work done on
ManageIQ for the past week is just what we need to keep warm on this fine
winter day!

## Featured

There were [107 pull requests merged to master][PRs merged last week] last week! 107 is the 28th prime number.
The next prime is 109, meaning that 107 is called a [Chen prime](https://en.wikipedia.org/wiki/Chen_prime).
Super cool, right? Almost as super cool as 0°! If I haven't scared you off yet,
you can join the 45 contributors that made [297 commits][Commits merged last week] by
checking out the [issues tracker](https://github.com/manageiq/manageiq/issues).

## Improved

### [pglogical Upgrade](https://github.com/ManageIQ/manageiq/pull/13070)
pglogical had released many versions after the one we were currently using, and
these new versions contain many bug fixes as well as the ability to fire
triggers on replicated rows and to cleanly update a node data source name.
However, there was a serious trigger bug that had to be resolved first. Slated
back in July, [Nick](https://github.com/carbonin) has now been able to make the
proper changes to be compatible and move us up to pglogical 1.2.1!

### [Faster UI response on failed Git imports](https://github.com/ManageIQ/manageiq/pull/12964)
It was found out that if whatever service in a Git import was down it would take an exceptionally long time
for the UI to timeout and report that. Apache would eventually respond with a 502 proxy error after several minutes.
[Erik](https://github.com/eclarizio) fixed this by removing the bottleneck, giving the client a task to check back
on instead!

## Fixed

### [Authentication retry regression fixed](https://github.com/ManageIQ/manageiq/pull/13026)
There was a slight regression following the recently merged authentication feature that retries authentication checks
if the error is generic and unrelated to missing/invalid credentials (unreachable, etc) when running SmartState Analysis.
[Joe](https://github.com/jrafanie) tracked it down and found the foul option that wasn't in the right place!

### [Fixed save button for VM retirement date](https://github.com/ManageIQ/manageiq/pull/12343)
The save button for VMs would not be clickable when you set a retirement date of the current day or tomorrow.
Fixed! Thanks to [Laura](https://github.com/lgalis) you can now retire whenever you want! ;)

## New

### [Load Balancers API](https://github.com/ManageIQ/manageiq/pull/13067)
You can now retrieve load balancer information from the REST API, brought to you by [Jillian](https://github.com/jntullo)!

### [New Provider generator](https://github.com/ManageIQ/manageiq/pull/12209)
[Marcel](https://github.com/durandom) added a new Rails generator for providers! This will allow
developers to easily create an empty scaffolding with everything you need to begin work on adding a new
pluggable provider for ManageIQ. Just `rails generate provider YourProvider` and away you go!

## Deleted

### [Removed unneeded _perf_chart_flash_layout](https://github.com/ManageIQ/manageiq/pull/12989)
Funny enough, as [Milan](https://github.com/mzazrivec) pointed out, we no longer have flash charts in the application.

### [Removed some outdated CSS](https://github.com/ManageIQ/manageiq/pull/12998)
As part of some work with updating the expression editor toolbar styling, [Eric](https://github.com/epwinchell) had
the pleasure of throwing out some old, unused CSS. Spring cleaning in December!

## Wrapping up

As always, there are more changes than we've covered here. Check out the [full PR list][PRs merged last week] for details.
That's about it for *Last Week in ManageIQ*! Stay warm out there!

[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-12-05+..+2016-12-11%22+sort%3Acreated-desc&utf8=%E2%9C%93
[Commits merged last week]: https://github.com/manageiq/manageiq/compare/master@%7B2016-12-05%7D...@%7B2016-12-11%7D
