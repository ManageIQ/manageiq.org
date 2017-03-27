---
title: "Last Week in ManageIQ: Pontificatory Requestiveous - PR"
author: syncrou
date: 2017-03-28 09:00:00 -04:00
comments: true
published: true
tags: LWIMIQ
---

Hi, [Dr. Drew Syncrounious](https://github.com/syncrou) here to talk with you about an important new solution just released into 
[master](https://github.com/manageiq/manageiq). Known scientifically as Pontificatory Requestiveous, for us in the industry, it is affectionately called:

[PR](https://help.github.com/articles/about-pull-requests/).

A few questions

Do you struggle with [memory loss](http://stackoverflow.com/questions/23281331/how-to-clean-up-allocated-memory-in-c)?

Overly terse [variable names](https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js)?

The inability to [read](http://everything2.com/title/Perl+Line+Noise) [anything](https://en.wikipedia.org/wiki/Obfuscation_(software))?

Today I'd like to ask for a few minutes of your time to talk about [PR][manageiq PRs merged].

## Everything is Perfect

Before taking PR make sure that you are healthy enough to consume [58 main ingredients][manageiq PRs merged],
[some number of html ingredients][manageiq-ui-classic PRs merged], or [more numbers of ajax ingredients][manageiq-ui-service PRs merged].

You also need the ability to consume 
[amazon numbers][manageiq-providers-amazon PRs merged] and
[azure numbers][manageiq-providers-azure PRs merged] and
[vmware numbers][manageiq-providers-vmware PRs merged].

We all think that no one else [struggles](https://github.com/ManageIQ/manageiq/issues) in these areas. Knowing about the power of PR can help you 
build your part of this [solution](https://github.com/manageiq). 

Acknowledging your lack of PR is the first step to knowing you need it.

Below I'd like to highlight testimonials taken from some real life PR users. **

## All Things that Appeared Bad now Appear Good

### [Add retire_now to Embedded Ansible job.](https://github.com/ManageIQ/manageiq/pull/14479) 
[Tina](https://github.com/tinaafitz): Before PR, I had to manually retire an Ansible Service. Now after taking a steady dosage,
I can simply call `retire_now` and the job is retired!

### [Create initial tower objects when we start the worker](https://github.com/ManageIQ/manageiq/pull/14283)
[Nick](https://github.com/carbonin): I remember a time when initial Tower objects weren't created! I was so used
to this that I had accepted it as normal behavior. [Bill](https://github.com/ManageIQ/manageiq/pull/14283#pullrequestreview-27581668) and [Jason](https://github.com/ManageIQ/manageiq/pull/14283#pullrequestreview-26387879)
introduced me to PR.  My life is changed! Those Tower objects are now created at startup!

## Some have Noticed Their Zeds Removed

### [Split metric collections into smaller intervals](https://github.com/ManageIQ/manageiq/pull/14332)
[Greg B](https://github.com/blomquisg): Large metric collections.  That's all I remember before I started on PR.
The intervals between `last_perf_capture_on` and `today` were too lengthy.
We all get up every day and make decisions. One day I got up and decided to take PR.
Those smaller metric collections are thanking me, but the real truth. The real truth is that I'm
thanking myself! Thanks PR! Because of you my Bzeds are removed.

### [Fixes tag control multi-value](https://github.com/ManageIQ/manageiq/pull/14382)
[Drew](https://github.com/d-m-u): I have been managing my moderate to severe dropdowns with multi-select functionality.
Sometimes though, I've found that tag control pushes me over the edge. [Greg M](https://github.com/ManageIQ/manageiq/pull/14382#issuecomment-288230058) introduced
me to PR!  EVERYTHING CHANGED!

PR has allowed my tag control the necessary method for multiple items on the same field!
Dropdowns with multi-select functionality are hard.
PR has made that part of my codebase easier to work with.

## Reported Additional Behavior

### [Add missing ui_lookup for Repository](https://github.com/ManageIQ/manageiq/pull/14485)
[Zita](https://github.com/ZitaNemeckova): We all know how missing `::` make our lives difficult. I had
gone through the motions, [WIPped](https://github.com/ManageIQ/manageiq-ui-classic/pull/346) up a fix, but still
found my UI lookups lacking.  PR changed that for me! My classes are found again, but even better, because of PR
my UI lookup is now returning the long lost `Repository (Embedded Provider)`. It brings tears to my eyes just thinking
about it.

### [Account for managed disks](https://github.com/ManageIQ/manageiq-providers-azure/pull/41)
[Dan](https://github.com/djberg96): I've had to address the possibility that my VM does not have a `:vhd` attribute.
It's easy for some to laugh this off, but in my case I was stuck.  Stuck with my VM. Stuck with the fact that Azure is
moving away (AWAY!) from individual `VHD`'s. You laugh, but without my PR I would be lost. [Bronagh](https://github.com/ManageIQ/manageiq-providers-azure/pull/41#pullrequestreview-27851996) opened
my life to PR.  It still isn't perfect, but knowing where to [go](https://docs.microsoft.com/en-us/azure/storage/storage-managed-disks-overview)
for information on managed disks has made all the difference for me.  I know PR can help someone else. It sure helped me.

## An Acceptance that Less is More... Automatic

### [WIP Automate service model auto create](https://github.com/ManageIQ/manageiq/pull/14465)
[Greg M](https://github.com/gmcculloug): Hello, my name is Greg and I'd like to talk to you about my PR experience.
I lived a good life.  Got up, coded up service models, did everything [Oleg](https://github.com/chessbyte) asked.
Everything was great. BUT, something was missing. Something was wrong!

Until PR.

I can honestly say, without PR my life would be 826 lines heavier. My fingers used to type `miq_` without even
thinking about it. Without PR - Automate wouldn't be 'automatic.'

## Side Effects May Include

Do not attempt PR if you don't have a keyboard. When taking PR do not drive or operate heavy machinery unless you have previously pushed. Walking, eating, driving or engaging in other activities just before force pushing without remembering it the next day, have been reported. PR should be taken together with alcohol, although some have reported better results without.
Abnormal behaviors may include agitation, aggressiveness, confusion or hallucinations unless additional persons engage in thumbs up behavior. The temporary inability to type text just before clicking 'new PR' have also been reported. In unPR'd patients, worsening of code patterns including a risk of complete refactoring have been known to occur. Side effects include next-day drowsiness.

** No actors were used in the making of this PR

[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-20+..+2017-03-26%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-20+..+2017-03-26%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-20+..+2017-03-26%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-amazon PRs merged]: https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-20+..+2017-03-26%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-azure PRs merged]: https://github.com/ManageIQ/manageiq-providers-azure/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-20+..+2017-03-26%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-vmware PRs merged]: https://github.com/ManageIQ/manageiq-providers-vmware/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-03-20+..+2017-03-26%22+sort%3Acreated-desc&utf8=%E2%9C%93
