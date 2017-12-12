---
title: "Last Week in ManageIQ: Wrapping up Bugs"
author: jntullo
date: 2017-12-11
comments: true
published: true
tags: LWIMIQ
---

Welcome to this week's edition of LWIMIQ! It's beginning to look a lot like the holiday season, and we sure have been as busy as :santa:'s elves with wrapping :gift: up bugs.

[Jillian](https://github.com/jntullo) here to give you a tour of everything that's been happening in our workshop :hammer: this week.

## Improved
A simple update of an error message can go a long way in helping users to understand a problem. This [update](https://github.com/ManageIQ/manageiq/pull/16507) fixes a uniqueness check to return a message that matches what would be expected from a user in the UI. 

It's always nice to have styling improved, and this [PR](https://github.com/ManageIQ/manageiq-ui-classic/pull/2961) updates Capacity & Utilization options to be more consistent with other UIs. The improvements look great! :heart_eyes:

## Fixed
In the Classic UI, Generic Object instances for Ansible Playbook services are now being [displayed](https://github.com/ManageIQ/manageiq-ui-classic/pull/2974).

In the Service UI, angular is no longer being loaded too many times thanks to the removal of an unnecessary [dependency](https://github.com/ManageIQ/manageiq-ui-service/pull/1295).

## New
In the midst of our many bug fixes it's not always easy to find something shiny :sparkles: and new. However, a new `EmbeddedAnsible` plugin was added which handles running AWX, the upstream of Ansible Tower that is distributed through a collection of containers rather than rpms. The rest of the details can be seen [here](https://github.com/ManageIQ/manageiq/pull/16205).  

## Deletions
The workshop saw a lot of :scissors: in action this week! 

This week's :scissors: :trophy: goes to [PR 16590](https://github.com/ManageIQ/manageiq/pull/16590) with a removal of 14,300 LOC, which deletes unnecessary i18n files.

All .yaml files related to the no longer used Ontap controllers were [deleted](https://github.com/ManageIQ/manageiq-ui-classic/pull/2967) in the Classic UI. 

In the API, all remaining decorator references were [removed](https://github.com/ManageIQ/manageiq-api/pull/235) as that information can now be accessed through attributes. 

## Wrapping up
That's it for this edition of LWIMIQ! Much like :santa:'s workshop, our work is never done so be sure to check back next week to see what else we've accomplished! And as always, we welcome your contributions. Feel free to stop by any of our [repositories](https://github.com/ManageIQ) to take a look at open issues to get started! 
