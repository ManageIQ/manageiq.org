---
title: Last week in ManageIQ - Fixing bugs
author: zita
date: 2017-12-06
comments: true
published: true
tags: LWIMIQ
---

Hi. I, [ZitaNemeckova](https://github.com/ZitaNemeckova) will tell you more about our effort to improve our codebase. It's not only about fixing code but also about cleaning and deleting. If you never used static analysis tool to find dead methods this post is for you.

## Deleted

Let's take a small detour and talk about one of our community activities for a bit. Did you know that part of Brno team is collaborating with Mendel University in Brno on teaching students how to contribute to Open Source? 

Probably not as it's in prototyping phase. Last year students helped with conversion of forms in Angular and wrote some tests in Ruby. This year they started our favorite activity: deleting code. 

It's known that from time to time a method is no longer called but nobody notices so it stays as a zombie that hides among the living code. Haunting the code :ghost:. 

It's easy to run some static analysis tool like [Debride](https://github.com/seattlerb/debride) that can find all those hiding zombies in [Classic UI](https://github.com/ManageIQ/manageiq-ui-classic). But it's so good it also points out methods that are living a bit different life. They are called dynamically :godmode:.
  
Then it's good time to use our 40 students to brute force hunting down zombies amongst 300 possibly dead methods. And they were able to single out 50 zombies to be beheaded in the following weeks.

## Improved

[This PR](https://github.com/ManageIQ/manageiq/pull/16519) consolidates all of the console logic for consistency across UIs and resolves some outstanding issues. 

Assignment mixin was missing support for unassignment of individual tags or objects. [This PR](https://github.com/ManageIQ/manageiq/pull/16401) added it and soon it will be possible to assign or unassign an alert profile via the API.
 
## Fixed

There are too many fixes to mention. Some are small and some are big and complicated. So only few will be mentioned below.

Credential validation in Hawkular provider has been fixed by [this PR](https://github.com/ManageIQ/manageiq-ui-classic/pull/2577). 

[This PR](https://github.com/ManageIQ/manageiq/pull/16518) fixed `virtual_totals` for an object that has a default scope. Before it was not getting applied to the arel query when the `virtual_total` column was being used in the `.select`. 

It's important to think about users and use translatable names for things that are shown in UI like it's done in [this PR](https://github.com/ManageIQ/manageiq/pull/16563).

## Wrapping up

So generally this week was all about fixing bugs and making our code flawless. See you next week :wave:!