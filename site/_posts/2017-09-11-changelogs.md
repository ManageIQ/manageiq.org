---
title: "Last Week in ManageIQ: Why Changelogs - Cause all the Cool Kids Do It"
author: jprause
date: 2017-09-12
comments: true
published: true
tags: LWIMIQ
---

Hi all,...[John Prause](https://github.com/jprause) here. I'm usually the one behind-the-scenes, but I thought I'd take a shot at writing one of these, so here goes...

First, some statistics about the blog entries for Last Week in ManageIQ:
  - The [first blog entry](http://manageiq.org/blog/2016/07/last-week-in-manageiq-faster-reports-cloud-networks-and-more/) was on July 26, 2016
  - We’ve had 54 blog posts
  - 25 distinct authors
  - Four authors have written 5 blog entries each
  - We’ve had 22 Sprint Reviews since the first blog entry
  - Each blog submission is peer-reviewed by 4-5 other prior bloggers
  - We’ve also had a [video blog](http://manageiq.org/blog/2017/08/limericks-week-in-miq/) submission
  - Did you know that YOU can also submit a blog entry,..after all, we are open source

Usually these blog entries review the PRs from last week. However, I’d like to talk about an important aspect of our [ManageIQ repos](https://github.com/ManageIQ/),..and that is, changelogs. According to [keepachangelog.com][keepachangelog], “A changelog is a file which contains a curated, chronologically ordered list of notable changes for each version of a project.”

Here at ManageIQ we follow the guiding principles and format as described at [keepachangelog.com][keepachangelog]. This is no easy task and takes a concerted effort,...but the end result is meant to help you, the community user of ManageIQ.

Let’s take a look at the [ManageIQ repo](https://github.com/ManageIQ/manageiq)’s [changelog][miqchangelog] and see what’s there. The first three lines come directly from the standards described at [keepachangelog.com][keepachangelog]

The next line says this: "Unreleased - as of Sprint 67 ending 2017-08-21"
At the end of each [Sprint Review](https://youtu.be/yJRDT3m63z0), a PR is submitted that has updates for the end of sprint, in this case, work done in Sprint 67.

Taking a look back at the [changelog][miqchangelog], we see under the Sprint 67 header, a list of work that was Added, Changed, and Fixed. Under the Added sub-heading we see that the work is further broken down by team (or function). In this case; Platform, Providers, Reporting, REST API, and Services.

In each breakdown, we find the actual PRs that comprise the work done over the past 2-week Sprint period. As an example, under Added/Platform, you’ll find [PR15819][nickpr]

An important (and highly stressed) component to the PR's description is that it should be user-readable and not developer-speak. [PR15819][nickpr]’s description says: “Don't use secure sessions in containers”. A clear description is needed because you, as the community user, shouldn’t have to drill down into the PR to try and understand what is actually going on.

([Squirrel Moment](https://youtu.be/SSUXXzN26zg)) Let me take a minute to showcase the [fine](http://manageiq.org/blog/2016/11/announce_f_name/) (no pun intended) work of our development team. If you take a look at [PR15819][nickpr], you’ll see we use multiple labels, have multiple reviewers, and use Sprint markers to define which sprint this enhancement came into.

Now back to our [changelog][miqchangelog]. Further work is done on the changelogs once we have a release of ManageIQ,...such as the recent [Fine-3 release](http://manageiq.org/blog/2017/08/Announcing-Fine-3/). Once a release is announced, we go back into the changelog and now add a header for the Fine-3 release, as well as define which fixes are Released.

I do have a caveat. If you review our [repos](https://github.com/ManageIQ/), you'll find that most do not have a CHANGELOG.md file as just described. "But John, you just said...",...I know, I know,...bear with us, we're on a journey to get our changelogs up to snuff.

There’s really a lot more to say about this subject,..however, you can read all about it at,..you guessed it, [keepachangelog.com][keepachangelog]

I hope this helped and until next time!

[keepachangelog]: http://keepachangelog.com/en/1.0.0/
[nickpr]: https://github.com/ManageIQ/manageiq/pull/15819
[miqchangelog]: https://github.com/ManageIQ/manageiq/blob/d0b9e45a1d3e9f132b301027ad6f343bd28af75d/CHANGELOG.md
