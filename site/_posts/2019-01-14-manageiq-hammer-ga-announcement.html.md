---
title: "It’s ManageIQ Hammer GA time!"
author: cybette
date: 2019-01-14
tags: releases announcements
comments: true
published: true
---

[![ManageIQ Hammer release](/assets/images/blog/Hammer_GA_release.png)](/assets/images/blog/Hammer_GA_release.png)

After hammering away at a slew of bugs and features, we are proud to present you the newly moulded **ManageIQ Hammer release**! This eighth release by the ManageIQ team and community is named after Norwegian chess grandmaster [Jon Ludvig Hammer](https://en.wikipedia.org/wiki/Jon_Ludvig_Hammer).

Since the [ManageIQ Gaprindashvili GA](/blog/2018/01/manageiq-gaprindashvili-ga-announcement/), we’ve had 25 [sprints](https://www.youtube.com/watch?v=i9DTZ63EWak&list=PLQAAGwo9CYO-SEH9SW7IEwDF6-IzlB_mx) comprising a total of 8137 pull requests across all the [ManageIQ repositories](https://github.com/manageiq/), averaging 163 PRs per week. The [branching of Hammer](http://talk.manageiq.org/t/hammer-time/3806) occurred in [Sprint 95](https://www.slideshare.net/ManageIQ/sprint-95), and we continue [I-release](/blog/2018/07/announce_i_name/) work on master.

Let’s take a look at some of the highlights of the Hammer release.

## Ansible Enhancements

We have introduced automation with [Ansible](https://github.com/ansible/ansible) a couple of releases back. Since then we continue to improve the integration with Ansible and expand on its capabilities. In this release we added support for [Ansible Tower](https://github.com/ManageIQ/manageiq-providers-ansible_tower) Workflows (Ansible Tower is based on the [AWX project](https://github.com/ansible/awx)). Workflows let you run several jobs (playbooks) sequentially with condition checks, so you can do things like recover from an error state or rollback certain changes. ManageIQ has an additional inventory type called Workflow Template, and adding the external Ansible Tower provider will automatically discover its existing Workflows.

From a Workflow, you can now create a Service Dialog, which automatically populates the dialog fields with its parameters. Tower workflows are also available as Service Catalog items. Under the “Job” tab for a service based on the Workflow, you will see the output of the Tower job, which brings feature parity with the Embedded Ansible.

Speaking of the Embedded Ansible, most of the changes are in the backend (and thus may not be user visible), including the update to the latest Ansible version 2.7.4. The `manageiq-automate` and `manageiq-vmdb` roles are provided with the default ManageIQ content without the need to fetch them separately from Ansible Galaxy.

We can now get a history of Custom button events (where custom buttons are supported) to show which button has been clicked and when, as well as what playbook has been run against the current object. This is a work in progress so keep a lookout for more features!

## New Providers on the Block

First we have a new networks provider for [Nuage](https://github.com/ManageIQ/manageiq-providers-nuage), which provides Software-defined networking (SDN). This integration gives the ability to manage Nuage’s SDN services from ManageIQ. You can perform CRUD operations (making use of Ansible) on network, router, subnet, security groups and IPs. In addition, you can run Ansible playbooks based on events. Inventory includes Layer 3 and Layer 2 domains. Graph and Targeted refreshes are triggered for various events and networks topology view is also available.

Next we have a brand new physical infrastructure provider for [Redfish](https://github.com/ManageIQ/manageiq-providers-redfish), which will allow managing and provisioning bare metal in a similar way we manage virtual machines in ManageIQ. It incorporates a RESTful API so ManageIQ can interact directly for inventory, power and LED operations, as well as provisioning. While the functionality is sparse for now as it’s being developed, being built on open industry standards it will potentially work with all major whitebox OEMs that support the [DMTF Redfish standard](https://www.dmtf.org/standards/redfish).

For the other not so new, but still very cool physical provider, there are several improvements made to [Lenovo XClarity](https://github.com/ManageIQ/manageiq-providers-lenovo). Previously, we had management of physical servers. In this release, we added inventory and management for physical chassis, storage, rack, and switch. For example, you can find out which physical switch the physical server network ports are connected to, and which switch ports are on the switches. The topology view will be able to display all these connections, and you can execute Ansible playbooks against these physical resources.

## Virtual to Virtual Transformations

From physical infrastructures, let’s _switch_ our attention to virtual ones. Specifically, virtual-to-virtual (V2V) transformations, which is the process of importing virtual machines from one virtualization platform to another. Leveraging the automation workflow in ManageIQ, large scale VM migration can be carried out between providers such as from VMware to oVirt and OpenStack (currently supported).

By connecting ManageIQ to the source and target providers (let’s say VMware and oVirt), and with the new “Migration” option in the Compute menu, you will be able to create infrastructure mappings and migration plans with a step-by-step wizard. The mappings define how the source environment (clusters, datastores, networks) should be mapped to the target, while the plans collate the VMs to be migrated and let you schedule a time for the migration. The UI provides the view to the progress of the migrations, allowing you to drill down to the status and detailed logs of individual VMs.

## Overall Tool Optimization

In addition to new features, we are constantly making improvements and fixing issues in ManageIQ to make it a more robust and efficient Hammer. Performance enhancements include higher speeds for Graph and Targeted provider refreshes. More dashboards with useful information in more places, better configurability with multi-appliance configuration sharing, and security updates such as failed-login tracking all contribute to bettering the user experience.

There is so much more changes and updates from Gaprindashvili to Hammer than I can cover here, but if you wish to dive further into the nitty-gritty details, take a look at the [changelog](https://github.com/ManageIQ/manageiq/blob/hammer/CHANGELOG.md). We’re very thankful to all the contributors in the ManageIQ team and community partners for making the release possible!

Release images for ManageIQ are now available to [download](/download/). Visit the ManageIQ [Community page](/community/) to find out how to get involved in the project, and where you can connect with us. Join our [discussion forum](http://talk.manageiq.org/) if you have questions. [Documentation](/docs/) and other resources can be found on the [ManageIQ site](/) as well. Thanks for your continued support!
