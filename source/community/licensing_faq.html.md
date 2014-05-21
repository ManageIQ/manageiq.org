## Licensing and governance FAQ

### What is the license for code contributed to ManageIQ?

We accept code under a dual license, GPL v2 and Apache License v2. This
is commonly known as "dual licensing", since the user then has two
licenses to choose from when the software is distributed.

### How does dual licensing work?

Licensing is the process whereas the holder of the software conveys
rights and responsibilities to the person/entity receiving the software.
Basically, it is the list of conditions on which he (re)distribution of
software is agreed upon.

The only difference between "regular" licensing (that is, software
licensed under a single license) and dual licensing is that the person
receiving the software is free to choose which of the 2 licenses they
are agreeing to. In the case of ManageIQ, we are licensing the software
under ALv2 and GPLv2. As such, the person who downloads or obtains the
code can choose whether they want to abide be the conditions of EITHER
ALv2 or GPLv2.

### Why are we doing it?

In the current implementation of ManageIQ, there are third-party
libraries that are covered under the GPLv2 license. The desire of the
ManageIQ project is that the whole of ManageIQ be available under the
ALv2.

The Free Software Foundation takes the view that the ALv2 license is
incompatible with GPLv2, and it is possible this is the view of the
licensors of the third-party GPLv2 libraries currently in ManageIQ. We
wish to allow for the continued use and development of ManageIQ code
under ALv2 during the time we transition away from the dependency on the
third-party GPLv2 code. The simplest way to do this while addressing the
perceived incompatibility concern is to dual-license ManageIQ as "ALv2
or GPLv2".

### When I contribute code, what are the requirements for contribution?

ManageIQ operates, as do many FOSS projects, under the
license-in-equals-license-out, meaning that all contributed code and
resources must be under the same license as the project to which it is
being donated. As such, while ManageIQ is dual-licensed, all
contributions will also be dual-licensed under the GPLv2 and ALv2. Once
ManageIQ transitions to a single license (ALv2), all contributions
henceforth should be under ALv2 as well. An additional requirement is
that you actually have legal permission to contribute that code to the
project. Please note that copyright assignment is NOT required; you
maintain copyright over your contributions.

### Why am I giving code dual Apache v2/GPL v2, but the resulting images are GPL only?

The resulting images are under GPLv2 since it is much more
straightforward to have the binaries under the GPLv2 for uncomplicated
and unquestionable GPL compliance; we believe this is what the licensors
of the third-party GPLv2 libraries expect us to do. The source code, of
course, remains under both GPLv2 and ALv2.

### What is the license when I download the source code?

Downloaded source is under GPLv2 and ALv2 (dual) except for the single
GPLv2 dependency which currently exists and is in the process of being
replaced. When this is done, ManageIQ will move to a single license
under the ALv2 for all subsequent releases.

### What are the license requirements for ManageIQ modules distributed through the ManageIQ Marketplace?

Extensions to the core ManageIQ marketplace must be licensed under an
OSI approved license if they want to be distributed through the ManageIQ
marketplace.
