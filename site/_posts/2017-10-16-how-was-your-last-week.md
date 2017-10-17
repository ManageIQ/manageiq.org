---
title: "Last Week in ManageIQ: How was your last week ?"
author: lpichler
date: 2017-10-16
comments: true
published: true
tags: LWIMIQ
---

Hi all!

It's me [Libor][lpichler]. I am from Brno, Czech Republic. In this blog entry you can see last week in ManageIQ from developer's point of view
because I decided to ask my colleagues in Brno how was their last week in ManageIQ and I heard lot of interesting things! 

---
**Hi [Ladas][lsmola],
how was your last week ?**

Good, I was working primarily on [tests][aws_test] for AWS.
We did targeted refresh for Amazon Web Services and we need lot of tests.

**How did you test it?**

We are using events for targeted refresh and there is lot of types(more than 100) of events (like a start/stop vm,..)
I need to cover it by tests. I am using recorded VCR of real events.

**What is 'targeted refresh'?**

You can now refresh only one virtual machine.

**Any other work?**

Targeted refresh for containers and we are using data of events for the refresh.

**Is it beneficial?**

Yes, definitely. Without events, you can miss situation that container has been started and stopped (in short time) 
between 2 refreshes and usage of events could handle this situation.

**When you remove container, is it removed from database?**

No. We disconnect it and it means that container is archived.

Thanks Ladas! 

---

**Hi [Zita][znemecko],
how was your last week in ManageIQ ?**

I was working on custom buttons as I added before and I was finishing some last things like a renaming and fixing.
Also I was adding new ones related to users, tenants and container nodes.

**Nice. What else? I heard about that your open source contribution is not only about the code.**

Yes. Me and [MartinH][himdel] are teaching students on some university in Brno. Last week we had a lesson where we teach them about git and
creating pull requests.

**How it is related to open source?**

We are showing them our open source project and we are apprising them with for example with code reviews. We are trying 
to show them more practical view on open source development. Most likely some of them will became contributors of ManageIQ :)

Very good, thanks Zita! 

---

**Hi [MartinM][Hyperkid123], tell me something about yourself first.**

I am working in UI team and I am intern.

**How was your last week in ManageIQ ?**

I was working on topology graphs.

**What did you do with them?**

I was converting them from SVG to CANVAS. Also I am encapsulating them to standalone angular component.

**Is it good ?**

Yes, certainly. You can have one angular component instead of some angular controller. You can also test it nicely.

**Will it change also visual page ?**

Yes, look on it:

![New Topology](/assets/images/blog/new-topology.png)

Thanks Martin, good news! 

---

**Hi [David][skateman],
how was your last week ?**

I did some fixes for our trees. After the conversion to Angular some regressions appeared.

**It is nice that we are using angular components more and more.**

Yes I was also creating tests for angular components as well. Y'know, tests in javascript.

**Do you like it?**

No.

**:D**

**What else ?**

I was preparing a demo for [Open Source Summit Europe][summit].

**What will be demo about?**

We will show ManageIQ to the attendees in a containerized environment.

**How ?**

We have an oVirt cluster on a set of Intel NUC boxes up and running now I'm deploying some VMs to run OpenShift. 
ManageIQ will be running as a container.

![NUC with ManageIQ](/assets/images/blog/nuc.jpg)

Very good. Thanks David!

---

**Hi [MartinP][martinpovolny],
how was your last week ?**

I was mostly doing PR reviews and merging PRs.

**Can you highlight on some of them ?**

Yes. [Aparna][Aparna] did lot of work on generic objects UI.

[Milan][Milan] was simplifying i18 strings. It will help the translators.

[MartinH][himdel] did lot of toolbar button send checked items clean up.

Thanks Martin for answering also!

---

Hopefully, you had also exciting last week as we have had. 
But if no, you can always took any of our [issues](https://github.com/ManageIQ/manageiq/issues)
and create PR !

:)


[lpichler]: https://github.com/lpichler
[lsmola]: https://github.com/Ladas
[aws_test]: https://github.com/ManageIQ/manageiq-providers-amazon/pull/312
[znemecko]: https://github.com/ZitaNemeckova
[himdel]: https://github.com/himdel
[Hyperkid123]: https://github.com/Hyperkid123
[skateman]: https://github.com/skateman
[summit]: http://events.linuxfoundation.org/events/open-source-summit-europe
[martinpovolny]: https://github.com/martinpovolny
[Aparna]: https://github.com/AparnaKarve
[Milan]: https://github.com/mzazrivec
