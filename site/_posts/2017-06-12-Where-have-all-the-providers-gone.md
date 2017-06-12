---
title: "Last Week in ManageIQ: Where have all the Providers gone"
author: durandom
date: 2017-06-12
comments: true
published: true
tags: LWIMIQ
---
:guitar: Before you continue reading, I want you to click [here](https://youtu.be/ZgXNVA9ngx8) to set the mood :metal:

```
Where have all the Providers gone? 
Long time passing 
Where have all the Providers gone? 
Long time ago
Where have all the Providers gone? 
Devs have plucked them every one
When will they ever learn?
When will they ever churn?
```

And it's up to you to match those lads and gals in the audience and on stage to members of the ManageIQ community. :older_man:

That's right, look at [app/models/manageiq/providers](https://github.com/ManageIQ/manageiq/tree/be8613f80d72a2e7f6d256f773141369c6ffb2af/app/models/manageiq/providers)
and be amazed. It's almost empty. Well, except for those base classes and one that has [embedded](https://github.com/ManageIQ/manageiq/tree/be8613f80d72a2e7f6d256f773141369c6ffb2af/app/models/manageiq/providers/embedded_ansible)
itself oh so clever. But as John Striker said: "[You can run, but you can't hide](https://youtu.be/Dpn_DdhVk_w?t=3m10s)"

## Featured

[Gems-Pending](https://github.com/ManageIQ/manageiq-gems-pending) is being emptied, just look at all those [PRs](https://github.com/ManageIQ/manageiq-gems-pending/pulls?utf8=%E2%9C%93&q=is%3Apr%20is%3Amerged%20base%3Amaster%20merged%3A%222017-06-01%20..%202017-06-12%22%20sort%3Acreated-desc%20), can you spot a theme?

[Nuage Provider](https://github.com/ManageIQ/manageiq-providers-nuage) got extracted, [click](https://github.com/ManageIQ/manageiq/pull/15297)

Deleting a Provider got more clever, by waiting for its workers to finish. This should remedy some nasty race conditions, [click](https://github.com/ManageIQ/manageiq/pull/14848)

## Improved

We now log the options for retirement event, [click](https://github.com/ManageIQ/manageiq/pull/15317)

There is a new dialog to be used by container template services, [click](https://github.com/ManageIQ/manageiq/pull/15216)

Resource groups can now be saved during a refresh, [click](https://github.com/ManageIQ/manageiq/pull/15187)

A global `ManageIQ` module gives you .env and .root, like Rails.root, but better, [click](https://github.com/ManageIQ/manageiq/pull/15020)

Physical Servers got a lot of love in the classic-ui and show much more than before, [click](https://github.com/ManageIQ/manageiq-ui-classic/pulls?utf8=%E2%9C%93&q=is%3Apr%20is%3Amerged%20base%3Amaster%20merged%3A%222017-06-05%20..%202017-06-12%22%20sort%3Acreated-desc%20label%3Aenhancement%20physical)


## Fixed

CVE-2017-5946 introduced by an external dependency got fixed by upgrading that dependency, [click](https://github.com/ManageIQ/manageiq/pull/15327)

Ansible playbooks are re-run, if they fail on the first run, [click](https://github.com/ManageIQ/manageiq/pull/15313)

Some metrics seemed to be useless, so we dont calculate them anymore, [click](https://github.com/ManageIQ/manageiq/pull/15260)

## Wrapping up

That's it. Really. Move over, nothing more to see. :wave: Yep, we're out. Roger, Over and, what was his name? Out. Yes. Word!

See you next week. 

[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-05+..+2017-06-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-05+..+2017-06-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-05+..+2017-06-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-amazon PRs merged]: https://github.com/ManageIQ/manageiq-providers-amazon/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-05+..+2017-06-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-ansible_tower PRs merged]: https://github.com/ManageIQ/manageiq-providers-ansible_tower/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-05+..+2017-06-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-azure PRs merged]: https://github.com/ManageIQ/manageiq-providers-azure/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-05+..+2017-06-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-foreman PRs merged]: https://github.com/ManageIQ/manageiq-providers-foreman/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-05+..+2017-06-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-google PRs merged]: https://github.com/ManageIQ/manageiq-providers-google/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-05+..+2017-06-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-hawkular PRs merged]: https://github.com/ManageIQ/manageiq-providers-hawkular/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-05+..+2017-06-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-lenovo PRs merged]: https://github.com/ManageIQ/manageiq-providers-lenovo/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-05+..+2017-06-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-kubernetes PRs merged]: https://github.com/ManageIQ/manageiq-providers-kubernetes/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-05+..+2017-06-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-nuage PRs merged]: https://github.com/ManageIQ/manageiq-providers-nuage/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-05+..+2017-06-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-openshift PRs merged]: https://github.com/ManageIQ/manageiq-providers-openshift/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-05+..+2017-06-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-openstack PRs merged]: https://github.com/ManageIQ/manageiq-providers-openstack/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-05+..+2017-06-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-ovirt PRs merged]: https://github.com/ManageIQ/manageiq-providers-ovirt/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-05+..+2017-06-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-scvmm PRs merged]: https://github.com/ManageIQ/manageiq-providers-scvmm/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-05+..+2017-06-12%22+sort%3Acreated-desc&utf8=%E2%9C%93
[manageiq-providers-vmware PRs merged]: https://github.com/ManageIQ/manageiq-providers-vmware/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222017-06-05+..+2017-06-12%22+sort%3Acreated-desc&utf8=%E2%9C%93

