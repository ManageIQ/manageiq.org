---
title: "Last Week in ManageIQ: API refactor, Observables and more!"
date: 2016-09-05
author: himdel
tags: LWIMIQ
comments: true
published: true
---

Greetings from sunny Brno, [Happy Martin](https://github.com/himdel) here, from the UI team :).


## Stats

Last week, we merged [112 PRs into master][PRs merged last week], consisting of [298 commits][Commits merged last week] made by 49 people! Growing strong...

As always, everybody is welcome to contribute, see our [issue tracker](https://github.com/ManageIQ/manageiq/issues).


## Improved

### [Convert API collections to individual controllers](https://github.com/ManageIQ/manageiq/pull/10941)

[Tim Wade](https://github.com/imtayadeway) has done an impressive amount of work refactoring our REST API code, [converting collections to individual controllers](https://github.com/ManageIQ/manageiq/pull/10890), [moving the entrypoint to ApiController](https://github.com/ManageIQ/manageiq/pull/10880), [changing the namespace](https://github.com/ManageIQ/manageiq/pull/10823) and [removing custom routing](https://github.com/ManageIQ/manageiq/pull/10993), which may make it much easier to expand the API to manage *all* the things, REST style :).

### [Add missing gettext](https://github.com/ManageIQ/manageiq/pull/10935)
[Milan Zazrivec](https://github.com/mzazrivec) is pushing forward with our i18n efforts, this week by adding missing gettext, *and* [restoring internationalization functionality in toolbars](https://github.com/ManageIQ/manageiq/pull/10787). If you want him to keep his sanity, please go through our [i18n guidelines](https://github.com/ManageIQ/guides/blob/master/i18n.md) at least once a week, before bedtime.

### [For Middleware Server operations use Rx.js Observables for communication](https://github.com/ManageIQ/manageiq/pull/10687)
[Mike Thompson](https://github.com/mtho11) has been working in middleware code, this time to use [RxJs Observables](https://github.com/Reactive-Extensions/RxJS/blob/master/doc/api/core/observable.md) to talk to the toolbar, progress! :)


## Fixed

### [Fix dev reload issues when Vmdb::Settings.reload! is called](https://github.com/ManageIQ/manageiq/pull/10988)
[Jason Frey](https://github.com/Fryguy) and [Chris Arcand](https://github.com/chrisarcand) have been busy in fixing-the-fix-to-fix-the-fix-land - this time to fix some reload issues and test failures after the recent changes to Vmdb::Settings. First, we [skipped the failures](https://github.com/ManageIQ/manageiq/pull/10841), [actually skipped the failures](https://github.com/ManageIQ/manageiq/pull/10857), then [fixed the failures](https://github.com/ManageIQ/manageiq/pull/10886) and the reload error in devel mode. Developers everywhere, rejoice!

### [Check the request format before setting the redirection after the login page](https://github.com/ManageIQ/manageiq/pull/10702)
[Yaacov Zamir](https://github.com/yaacov) has done a small but important fix to prevent an annoying routing error, when the user gets redirected to the login screen from a POST action. 1 error less, `NaN` to go!

### [Force jasmine-core 2.4.1 instead of 2.5](https://github.com/ManageIQ/manageiq/pull/10898)
Last week [jasmine 2.5](https://github.com/jasmine/jasmine) also came out, making all our javascript tests fail because of an overly optimistic version constraint. Fixed shortly after by [yours truly](https://github.com/himdel), *cough* shameless plug *cough*.

### [Fix enabling of toolbar components if item is selected in automate explorer](https://github.com/ManageIQ/manageiq/pull/10827)
[Karel Hála](https://github.com/karelhala) had recently [converted our toolbars to angular](https://github.com/ManageIQ/manageiq/pull/9753) and now he's fixing the odd places where that didn't quite work out, this time in Automate. Thanks for touching that :).

### [Add missing policy buttons to Network Manager Relationship pages](https://github.com/ManageIQ/manageiq/pull/10584)
One of our newest colleagues, [Hilda Šťastná](https://github.com/hstastna) has added a Policy toolbar button to all the places that should have it but didn't. More tags for everyone :cookie:!


## New

### [Archived: Scope for not archived nor orphaned](https://github.com/ManageIQ/manageiq/pull/10920)
[Keenan Brock](https://github.com/kbrock), our DB guru, has found an *old* TODO and has actually TODONE. (TODID?)
Now, we have a scope for non-archived, non-orphaned VMs.

### [Authentication token for initiation web sockets](https://github.com/ManageIQ/manageiq/pull/10874)
[Šimon Lukašík](https://github.com/isimluk) has been working on making the websocket have its own authentication token, with some [prior TokenManager changes](https://github.com/ManageIQ/manageiq/pull/10808). This being done, we should be well on the way towards asynchronous notifications via websockets, wheee.

### [API - add backend version info](https://github.com/ManageIQ/manageiq/pull/10848)
People really seem to like our About dialog, so we're bringing it to the Self-Service UI too. Just a small change from yours truly, adding some necessary info to the API entrypoint.


## Deleted

### [Remove process_tasks methods from provider classes](https://github.com/ManageIQ/manageiq/pull/10985)
[Nick Carboni](https://github.com/carbonin) has found some more dead code, this time `process_tasks` in a couple of provider classes .. aaand it's gone, never to be seen again :).

### [Remove old "admintable" class table styling](https://github.com/ManageIQ/manageiq/pull/10921)
[Eric Winchell](https://github.com/epwinchell) has been working on multiple old styling cleanups - [admintable class](https://github.com/ManageIQ/manageiq/pull/10921), [tagstable class](https://github.com/ManageIQ/manageiq/pull/10881), [form buttons](https://github.com/ManageIQ/manageiq/pull/10878) and [checkboxes](https://github.com/ManageIQ/manageiq/pull/10876). Good riddance.

### [Removed unused report tree partials](https://github.com/ManageIQ/manageiq/pull/10790)
[David Halász](https://github.com/skateman) has also found a couple of unused tree partials during his bootstrap tree work - and he promptly dispatched them to `/dev/null`.


## Wrapping up

Of course I missed most of the boring PRs doing some actual work, but feel free to check all of them out [here][PRs merged last week]. And stay tuned for even more exciting news next week :).


[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?utf8=%E2%9C%93&q=is%3Apr%20is%3Amerged%20base%3Amaster%20merged%3A%222016-08-29%20..%202016-09-04%22%20sort%3Acreated-desc%20
[Commits merged last week]: https://github.com/manageiq/manageiq/compare/master@%7B2016-08-29%7D...@%7B2016-09-04%7D
