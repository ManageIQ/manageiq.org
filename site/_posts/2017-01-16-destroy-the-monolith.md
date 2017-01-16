---
title: "Last Week in ManageIQ: Destroy the Monolith"
author: durandom
date: 2017-01-16 09:24:51 +01:00
comments: true
published: true
tags: LWIMIQ
---

[Moin](https://en.wikipedia.org/wiki/Moin), [durandom](https://github.com/durandom/) from the providers team here, 
guiding you through the vast construction site of [ManageIQ](http://manageiq.org/).

Last week we had [60 PRs][PRs merged last week] merged in manageiq core.
Not counting all the [related repos](https://github.com/ManageIQ?utf8=%E2%9C%93&q=&type=source), 
which we continue to carve out of our beloved Majestic Monolith. 

You have to destroy to create.

## Featured
It was a small step for [Zita](https://github.com/ZitaNemeckova) to 
[rename](https://github.com/ManageIQ/manageiq-ui-classic/pull/150) 'Automate' to 'Automation' in the
UI, but it might be a giant leap for ManageIQ.

Stay true to the game: [Tim](https://github.com/imtayadeway) and [Sam](https://github.com/mansam) thought that
"Staying true to the game" should apply to tests as well and pushed our specs closer to reality. Quoting them: 
[the output ... was nonsense](https://github.com/ManageIQ/manageiq/pull/13410) and 
[Add ... so that tests match reality](https://github.com/ManageIQ/manageiq/pull/13413)

That generic object in automate finally got edible, ehm, editable. Yummy, [Erik](https://github.com/eclarizio)! 
Click your way through these 100% organic, ehm, angularized forms and edit your generic objects.

Consistency is key. Sometimes it is just the small things like accessing all data types as 
[lowercase](https://github.com/ManageIQ/manageiq/pull/13440) keys in automate.
Way to go, [Madhu](https://github.com/mkanoor)

## Community contributions
It is always nice to see community contributions. [Joe](https://github.com/selmanj) from Google added
[proxy options](https://github.com/ManageIQ/manageiq/pull/13459) to the Google Cloud Engine provider. 

Speaking of community, [Gregor](https://github.com/gberginc) from [XLAB](https://github.com/xlab-si) refactored 
[storage managers](https://github.com/ManageIQ/manageiq/pull/13384) to mixins to make use of them in the 
Amazon provider.
Watch out for some nice things to come.

## Excavation Sites
To make it easier to [override gem](https://github.com/ManageIQ/manageiq/pull/13418) dependencies for development
[Marcel](https://github.com/durandom) introduced a helper method to spice up your Gemfile.dev.rb. 
Read about it [here](http://talk.manageiq.org/t/new-override-gem-method/2015)

Want settings? Go get some! [Yuri](https://github.com/yrudman) extracted so many 
[hidden settings](https://github.com/ManageIQ/manageiq/pull/13284) from the code and made them accessible 
via settings.yml - Now we just need to document them.

[Ladislav](https://github.com/Ladas) has been knee-deep in 
[provider refresh](https://github.com/ManageIQ/manageiq/pull/13337). 
But naming remains hard, so he moved from DTO to Inventory. Stay tuned for some refreshing updates.
Btw, that PR is soooo [1337](https://en.wikipedia.org/wiki/Leet). 

Some more extraction around the corner. In preparation of moving virtual attributes out of the core and into a gem, 
[VirtualTotalMixin](https://github.com/ManageIQ/manageiq/pull/13433) had to go. 
Break it apart, [Keenan](https://github.com/kbrock)

## Wrapping up

That's it for this week. As usual, you can take your mining gear, put on your hard hat and move over to the
[mouth of the cavern](https://github.com/ManageIQ/manageiq/issues) and go digging for some hidden gems.


[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?utf8=%E2%9C%93&q=is%3Apr%20is%3Amerged%20base%3Amaster%20merged%3A%222017-01-09%20..%202017-01-15%22%20sort%3Acreated-desc%20
