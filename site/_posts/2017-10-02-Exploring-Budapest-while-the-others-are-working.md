---
title: "Last Week in ManageIQ: Exploring Budapest while the others are working"
author: skateman
date: 2017-10-02
comments: true
published: true
tags: LWIMIQ
---

Hello everyone, my name is [Dávid Halász](https://github.com/skateman) and I'd like to guide you through the changes we made in the last week.

## Featured

During the weekend [Roman](https://github.com/romanblanco), [Julian](https://github.com/juliancheal) and myself were attending at [EuRuKo 2017](https://www.euruko2017.org/) in Budapest. It is a beautiful city where you can among others eat [halászlé](https://en.wikipedia.org/wiki/Fisherman%27s_soup) (not named after me) and see the [Halászbástya](https://en.wikipedia.org/wiki/Fisherman%27s_Bastion) (also not named after me).

![Budapest landscape](/assets/images/blog/budapest_landscape.jpg)

We've heard a lot of interesting presentations and also met with [Yukihiro Matsumoto](https://github.com/matz), the creator of the Ruby language.

![Matz and ManageIQ](/assets/images/blog/miq_matz.jpg)

While we were at the conference, the others kept improving ManageIQ and merged more than a hundred PRs. As I wasn't there I couldn't follow all the changes, but now I have an opportunity to check them out while picking the most important ones for this post.

## Improved

While [Ladas](https://github.com/ladas) improved how we [save metrics](https://github.com/ManageIQ/manageiq/pull/15976) and [Tim](https://github.com/imtayadeway) added [event streams](https://github.com/ManageIQ/manageiq/pull/16021) as a new product feature we were exploring the Square of Heroes.

![The Square of Heroes](/assets/images/blog/heroes_square.jpg)

## Fixed

Back in the day, the *Service UI* was called *Self Service* and we missed some places were it should've been renamed. Thanks to [Allen](https://github.com/AllenBW) now it is [fixed and consistent](https://github.com/ManageIQ/manageiq-ui-service/pull/1030) across the repository. As we moved our GTL code to Angular, the policy simulation screen got broken and did not display [quadicons](http://manageiq.org/docs/guides/ui/quadicons) but thanks to [Milan](https://github.com/mzazrivec) this is now [fixed](https://github.com/ManageIQ/manageiq-ui-classic/pull/2034). In the meantime we explored the square around the Matthias Church.

![The Matthias Church](/assets/images/blog/matthias_church.jpg)

## New

While we listened to a talk about failures and why it's bad that ruby is not slow enough, [Chris](https://github.com/chalettu) added the ability to [disable custom buttons](https://github.com/ManageIQ/manageiq-ui-service/pull/1012) in the SUI and [Moti](https://github.com/masayag) added support for [publishing a VM](https://github.com/ManageIQ/manageiq/pull/15981) by oVirt.

![Failures talk](/assets/images/blog/ruby_slow.jpg)

## Deleted

Keeping commented code that we don't plan to use is a perfect victim for deletion, thanks to [Brandon](https://github.com/bdunne) a lot of these comments are now [gone](https://github.com/ManageIQ/manageiq/pull/16033), some of them [were from 2010](https://github.com/ManageIQ/manageiq/pull/16032). Meanwhile we were being entertained by references to the Dunkirk movie in a talk about scalability.

![Scalability talk](/assets/images/blog/dunkirk_scalability.jpg)

## Wrapping up

The changes above are just a few from the many that happened around the project, feel free to check out our [GitHub organization](https://github.com/manageiq) page for more details.

![Buda Castle](/assets/images/blog/buda_castle.jpg)

Each year EuRuKo is organized in a different European city that is being chosen by the attendees of the previous conference. We are very happy that the next year it will be in [Vienna](https://twitter.com/euruko/status/914183910514405376) that is just an hour's ride from our office in Brno. Here I would like to say thank you to the organizers and the speakers, it was an amazing event!

*All images above by [Dávid Halász](https://github.com/skateman) licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)*
