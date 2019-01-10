---
title: "ManageIQ Provider Operations with Ansible - XLAB leads the way"
author: cybette
date: 2019-01-09
comments: true
published: true
tags: collaboration tutorials
---

[Happy 2019](https://www.xlab.si/happy2019/)! We kick off this year with a great feature on collaboration.

In ManageIQ we introduced a model for adding provider features using [Ansible](https://www.ansible.com). Our friends at [XLAB](https://xlab.si) were the first to work with this new technology enablement integrating some cool operations for the [Nuage](http://www.nuagenetworks.net) SDN provider. In this endeavour they used Ansible to implement the provider's CRUD operations through a set of Ansible roles that are available on [Galaxy](https://galaxy.ansible.com/xlab_si). To support these new operations they also created new UI forms using [React.js](https://reactjs.org). These forms are completely tailored to the specific needs of this provider.

Because XLAB was implementing all of these in parallel to the ongoing work by the ManageIQ core team, there was no documentation readily available, just very lively [Gitter chats](https://gitter.im/ManageIQ/manageiq). Further supporting and contributing to the community, they published a series of blog posts detailing the steps necessary to use these powerful new features of ManageIQ, including how to invoke an Ansible playbook upon receiving an event from the provider.

The following three blog posts highlight the essence of the approaches they took. I think these are wonderful resources for anyone trying to get started with provider operations adopting the new model.

## [Implementing ManageIQ Provider Operations with Ansible](https://tech.xlab.si/posts/nuage-ansible-operations/)

The first post introduces you to the method of adding ManageIQ provider operations using Ansible playbooks and roles. It is based on a real-world example and shows the code that will be part of the CloudForms release.

## [Dynamic UI for ManageIQ Provider Operations](https://tech.xlab.si/posts/nuage-react-component/)

This second post describes how mind-blowingly powerful it is to implement frontend for provider operations using React Components. These live in a provider codebase and are totally independent of the ManageIQ UI. You'll learn about this new era of ManageIQ frontend where you can define your own UIs without affecting the core.

## [Ansible Playbook as an Event Callback in CloudForms](https://tech.xlab.si/posts/nuage-ansible-in-automate/)

The last post in the series shows how easy it is to run Ansible playbooks triggered by events that are routed through the ManageIQ Automate engine. This post focuses on acquiring the data required by the playbook to actually invoke the operation against the correct inventory item. These data include the event payload and provider's credentials. To show you the complete process, it includes a video with a step-by-step tutorial.

Enjoy the read! You may contact XLAB at sddc&#64;xlab.si if you have any questions. Or as they like to say... **Get IT done.**