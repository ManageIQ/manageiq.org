---
title: Morphy Release Approach
author: chessbyte
date: 2021-08-23
comments: true
published: true
tags: releases announcements
---

We have been working on a number of interesting features.  Typically, the way these get released is that we cut a release branch from the `master` branch and work on stabilizing it to get to a release.  However, at this time we feel the master branch is a bit too fluid to stabilize just yet.  At the same time, there are a number of new features that are less risky and would provide a benefit to the community via an official release.  So, what we have decided to do is to release them in a different way.

We are working on the Morphy release (named after [Paul Morphy](https://en.wikipedia.org/wiki/Paul_Morphy)).  This entails creating `morphy` branches to build from.  Instead of basing these branches off of `master` (as is usually the case), we will be basing the `morphy` branches off of `lasker` - with the sole exception being new provider repos that have not been released before (thus they do not have a `lasker` branch, but currently only a `master` branch).

As we work towards creating the Morphy branches leading to a release, we needed to come up with a name for the N release - and that will be named after [Miguel Najdorf](https://en.wikipedia.org/wiki/Miguel_Najdorf).  We will adjust the [ManageIQ roadmap](http://manageiq.org/roadmap) accordingly to reflect what gets into Morphy vs Najdorf releases.

Some of the rules we are following for this release are that we will *not* add any SQL Schema migrations and that we will only include those features which we think are low risk and provide value to the community.

Stay tuned for the Morphy Alpha announcement where we will detail what is included in this new release.

For questions or support, [join in on the talk page](https://talk.manageiq.org/).
