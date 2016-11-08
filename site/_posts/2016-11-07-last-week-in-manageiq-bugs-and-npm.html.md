---
title: Last week in ManageIQ - Bugs and NPM
author: himdel
date: 2016-11-07
comments: true
published: true
tags: LWIMIQ
---

[Martin](https://github.com/himdel) here, bringing you this week's edition of Last Week in ManageIQ.


## Featured

Since the last edition, we've merged 114 [pull requests](https://github.com/ManageIQ/manageiq/pulls?utf8=%E2%9C%93&q=is%3Apr%20is%3Amerged%20base%3Amaster%20merged%3A%222016-10-29%20..%202016-11-06%22%20sort%3Acreated-desc%20) in the `manageiq` repo, 56 of which were labeled `bug`, 18 `enhancement`, 16 `technical debt` and 13 `refactoring`. As always, almost half was in the UI, totalling 48 `ui` pull requests.

In the recently renamed `manageiq-ui-service` repo, we've had 8 [pull requests](https://github.com/ManageIQ/manageiq-ui-service/pulls?utf8=%E2%9C%93&q=is%3Apr%20is%3Amerged%20base%3Amaster%20merged%3A%222016-10-29%20..%202016-11-06%22%20sort%3Acreated-desc%20), and there are surely more in our other repos.

There are also many [open issues] you can try your skills on, because who doesn't want to be [famous](https://github.com/ManageIQ/manageiq/graphs/contributors)? And, as always, we're ready to help on [gitter].


## Improved

As a sign of things to come, [Allen](https://github.com/AllenBW) has finished moving our Service UI from Bower to npm (actually, Yarn, we're so modern!) ([#296](https://github.com/ManageIQ/manageiq-ui-service/pull/296)), ManageIQ itself will follow shortly.

[Martin P](https://github.com/martinpovolny) has deduplicated our `tree_select` and `accordion_select` methods ([#12320](https://github.com/ManageIQ/manageiq/pull/12320)), making it easier to make bigger changes to trees, and getting rid of about 40 lines in the process. While deduplicating, he also looked into `x_show` ([#12313](https://github.com/ManageIQ/manageiq/pull/12313)), and apparently, he's also [removed "some code"](https://github.com/ManageIQ/manageiq/pull/12314), that's it :).

[Zahi](https://github.com/zakiva) has added advanced search capability to Containers ([#12303](https://github.com/ManageIQ/manageiq/pull/12303)), bringing Containers a bit closer to Infra & Cloud, feature-wise.


## Fixed

[Eric H](https://github.com/hayesr) has fixed a *weird* bug, where `Kernel.const_get` would return the wrong class for toolbars. See for yourself ([#12451](https://github.com/ManageIQ/manageiq/pull/12451)) ;).

The (Self) Service UI repo got renamed, and the URL it lives on has changed from `/self_service` to `/ui/service`. [Allen](https://github.com/AllenBW) and [Satoe](https://github.com/simaishi) have been fixing the fallout, updating apache config ([#12311](https://github.com/ManageIQ/manageiq/pull/12311)), and updating the Dockerfile ([#12263](https://github.com/ManageIQ/manageiq/pull/12263)).


## New

[Libor](https://github.com/lpichler) has made it possible to do daily chargeback, ([#12351](https://github.com/ManageIQ/manageiq/pull/12351)), following up on his earlier work fixing hourly, weekly and monthly.

From the OpenStack land, [Gilles](https://github.com/gildub) has been adding support for provisioning security groups ([#11758](https://github.com/ManageIQ/manageiq/pull/11758)) and floating IPs ([#11819](https://github.com/ManageIQ/manageiq/pull/11819)), with pull requests to support these in the UI coming up shortly.

In RHEV land, [Tomas](https://github.com/jelkosz) has implemented migrating VMs ([#11366](https://github.com/ManageIQ/manageiq/pull/11366)).

And in our API, [Alon](https://github.com/alongoldboim) has added a `MiqPolicy` collection making it possible to CRUD policies ([#11505](https://github.com/ManageIQ/manageiq/pull/11505)), and [Brandon](https://github.com/bdunne) has made it possible to approve or deny requests via the API ([#12258](https://github.com/ManageIQ/manageiq/pull/12258)).


## Deleted

[Tim](https://github.com/imtayadeway) has been busy deleting stuff last week, deleting some unused factories ([#12359](https://github.com/ManageIQ/manageiq/pull/12359), [#12419](https://github.com/ManageIQ/manageiq/pull/12419) and [#12423](https://github.com/ManageIQ/manageiq/pull/12423)), hooray!

[Beni](https://github.com/cben) has also been destroying some dead code ([#12415](https://github.com/ManageIQ/manageiq/pull/12415)).

[Eric W](https://github.com/epwinchell) has also removed our custom jQuery UI theme ([#12335](https://github.com/ManageIQ/manageiq/pull/12335)), which was very likely the very last bundled external dependency, fingers crossed everybody :).


## Wrapping up

Well, that's all folks! See you next week, same place (which BTW got updated since the last time, hope you noticed :)).


[open issues]: https://github.com/ManageIQ/manageiq/issues
[contributors]: https://github.com/ManageIQ/manageiq/graphs/contributors
[MiQ PRs]: https://github.com/ManageIQ/manageiq/pulls?utf8=%E2%9C%93&q=is%3Apr%20is%3Amerged%20base%3Amaster%20merged%3A%222016-10-29%20..%202016-11-06%22%20sort%3Acreated-desc%20
[SUI PRs]: https://github.com/ManageIQ/manageiq-ui-service/pulls?utf8=%E2%9C%93&q=is%3Apr%20is%3Amerged%20base%3Amaster%20merged%3A%222016-10-29%20..%202016-11-06%22%20sort%3Acreated-desc%20
[commits]: https://github.com/manageiq/manageiq/compare/master@%7B2016-10-29%7D...@%7B2016-11-06%7D
[gitter]: https://gitter.im/ManageIQ/manageiq
