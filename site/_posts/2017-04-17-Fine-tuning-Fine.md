---
title: "Last Week in ManageIQ: And Finally . . . Fine-tuning Fine"
author: AparnaKarve
date: 2017-04-18
comments: true
published: true
tags: LWIMIQ
---
## And Finally . . . Fine-tuning **`Fine`**

After a long and cold winter, we are thankful that spring is finally here! In some parts of the world, the cherry blossoms are spectacular. The birds are happily chirping. A **`Fine`** season (get it?) indeed is one that brings with it a glimmer of sunshine and all around goodness.

Did I just say a **`"Fine"`** season?? 
Well, that surely does ring a bell and a good segue to talk about our upcoming **`Fine`** Release at ManageIQ.

Intro-wise, my name is [Aparna](https://github.com/AparnaKarve) from the ManageIQ UI team. I am delighted at the opportunity to talk about the **`Fine`** Release as a team.

In case you did not know, we base our Release names after some of the really  well known Chess Grandmasters. Chess Grandmasters, by definition, are the Crème De La Crème, and the "IQ" in ManageIQ, well, is all about the IQ. If we are who we associate with, then we surely are in exalted company.

The Chess Grandmaster name that we have chosen for our upcoming F-Release is [The American Chess Grandmaster, Reuben Fine](https://en.wikipedia.org/wiki/Reuben_Fine).

Now let's take a look at some of the **`Finer`** details.

As **`Fine`** has been tailored mostly for the Ansible Provider, we had many Ansible related PRs. 
So, what is all this **`Fine-tuning`** really about? Well, it's the BUGS! ...Bugs of course.

Said bugs have been the focus nearly all of last week. In addition to the bug resolutions, there also are some refactorings and enhancements.

With the growing number of repositories being split, it's practically impossible to cover all repositories in this article, So...

I'll do my best to bring you some of the **`Fine`** highlights of the repositories that I monitor.


## Some Fine 'Finishing' Touches

- [Laura Galis](https://github.com/lgalis) fixed the PDF download issue for Ansible Tower Job Templates in https://github.com/ManageIQ/manageiq-ui-classic/pull/523

- [Martin Hradil](https://github.com/himdel) and [I](https://github.com/AparnaKarve) fixed some synching issues in the Ansible Credential form in 

   https://github.com/ManageIQ/manageiq-ui-classic/pull/860
 
   https://github.com/ManageIQ/manageiq-ui-classic/pull/1017

- [Jillian Tullo](https://github.com/jntullo) worked on a new API endpoint for refreshing Configuration Script Sources
https://github.com/ManageIQ/manageiq/pull/14714

- [Marcel Hild](https://github.com/durandom) worked on the targeted refresh for Ansible configuration_script_source in 
https://github.com/ManageIQ/manageiq/pull/14711

- [James Wong](https://github.com/jameswnl) added the Notification for the Ansible Tower credential CUD operations in https://github.com/ManageIQ/manageiq/pull/14625

- [Milan Zázrivec](https://github.com/mzazrivec) added Embedded Ansible refresh for Ansible Credentials and Repositories in https://github.com/ManageIQ/manageiq-ui-classic/pull/934


## Some Fine 'Spring-Cleaning'

 We DO love our Spring-cleaning PRs. What say you [Joe Rafaniello](https://github.com/jrafanie)? 


- https://github.com/ManageIQ/manageiq/pull/14633/files, courtesy, [Federico Simoncelli](https://github.com/simon3z)

- https://github.com/ManageIQ/manageiq/pull/14598/files, courtesy, [Jozef Zigmund](https://github.com/jzigmund)

- https://github.com/ManageIQ/manageiq/pull/14515/files, courtesy, [Nimrod Shneor](https://github.com/nimrodshn)

- https://github.com/ManageIQ/manageiq/pull/14766/files, courtesy, [Tzu-Mainn Chen](https://github.com/tzumainn)

## Some Fine 'House-Keeping'

- https://github.com/ManageIQ/manageiq-ui-service/pull/659, Updates Yarn -- courtesy, [Chris Hale](https://github.com/chalettu)

- https://github.com/ManageIQ/manageiq-ui-classic/pull/1019, Updates Patternfly -- courtesy, [Dávid Halász](https://github.com/skateman)

- https://github.com/ManageIQ/manageiq/pull/14692, Updates some Request Factories -- courtesy, [Tim Wade](https://github.com/imtayadeway)

## Other Noteworthy PRs

- Thanks [Allen Wight](https://github.com/ManageIQ/manageiq-ui-service/pull/664) for showing all kinds of notifications! https://github.com/ManageIQ/manageiq-ui-service/pull/664
 
- Thanks, [Alberto Bellotti](https://github.com/abellotti)! https://github.com/ManageIQ/manageiq/pull/14690
 
 - Thanks, [Joshua Langholtz](https://github.com/jjlangholtz)!  https://github.com/ManageIQ/manageiq-ui-service/pull/669


## The Fine 'Finesse'

Simplicity coupled with performance is what transforms the PR to the 'Finesse' level - With that in mind, thanks [Šimon Lukašík](https://github.com/isimluk) for https://github.com/ManageIQ/manageiq/pull/14712 & https://github.com/ManageIQ/manageiq/pull/14721.


## Globalizing Fine

Folks all around the world would appreciate **`Fine`** even more if it was localized in a language of their preference.  We currently support Simplified Chinese, Japanese, French, German, Spanish just to name a few. 

Thanks, [Milan](https://github.com/mzazrivec) for taking the lead in this project and making the whole process so seamless to us.
 - https://github.com/ManageIQ/manageiq/pull/14750
 - https://github.com/ManageIQ/manageiq-ui-classic/pull/1023
 - https://github.com/ManageIQ/manageiq-ui-service/pull/670
 
 
## In Closing...

This is an exciting time in the ManageIQ community as we rapidly approach the **`Fine Finish Line`**. 

To summarize: As spring transforms the landscape and lifts our spirits, so do all of the  **`Fine`** PRs that will make this the most memorable and impactful spring release! Thank you.
