---
title: Sprint 53 review - February 1, 2017
author: cybette
date: 2017-02-03
tags: sprints
comments: true
published: true
---

As we move on to our second [2-week Sprint](/blog/2017/01/schedule-change-3-week-sprints-to-2-week-sprints/), we find 146 pull requests merged in the [main ManageIQ repo](https://github.com/manageiq/manageiq), with enhancements and bugs taking up 2/3 of the pie. Further breakdown shows 39 PRs in the providers category, 21 in API, 20 in core and 12 in UI, and we expect the number of remaining UI PRs to go down to zero with the recent [repo split](https://github.com/manageiq/manageiq-ui-classic). Across all the repos, which includes 77 repos under the ManageIQ umbrella, and 14 manageiq-* ones, there were 432 pull requests in total.

There was a lot of work done with the Amazon provider in this Sprint, as XLab made tons of updates to set the foundations for managing EBS and S3 services from AWS. New Service Models in Automate have been created for Amazon Block Storage Manager. Hot on Amazon's heels is Ansible, with enhancements added in Classic UI; Ansible Playbook integration and Ansible Tower Client Gem updates in Automate; as well as added methods for initialization and configuration, http redirects through Apache, and new role with failover for embedded Ansible.

Graph Refresh for providers is implemented to deal with slow inventory collection and memory hog during refreshes. The aim is to make it easy to implement for provider authors. An example run on 77k Amazon Public Images show a second refresh taking only 200s, down from 1537s with the old refresh methods! A final note on providers is the separation of VMware provider repo from the core, which is significant as VMware has some of the oldest code in the ManageIQ codebase.

Several new APIs were added, including the ability to create/query Alert Actions, exposing Alert Statuses, creating/querying/deleting Snapshots on VMs, and supporting bulk tag assignments for VMs and services (earlier you could only assign multiple tags to a single resource, not multiple resources). For Chargeback, there was a fix for a rounding issue in rate adjustment, and there's now ability to extract chargeable field from VMs to make Chargeback easier to maintain.

On the UI front, while the Classic UI team was busy fixing glaring UI bugs and refactoring TreeBuilder and buttons, they also spent almost 11% of their time on PR reviews. Tenant admin wasn't properly secured previously, but now it can't create groups in other tenants, which is the expected behaviour. There's a new summary screens setting with dashboard option, and container topology limits will allow for quicker initial display and make topology more usable. In Service UI, the pages for Services List/Services Details/Orders are now auto-polling so there's no need to constantly hit refresh for updates.

To hear more nitty gritty nerdy details, check out the [Sprint 53 review video](https://www.youtube.com/watch?v=xQEHAEvA5ZE).

<iframe width="560" height="315" src="https://www.youtube.com/embed/xQEHAEvA5ZE" frameborder="0" allowfullscreen></iframe>

For specific sections of the review meeting, here are the respective timestamps:

* Sprint Statistics (Oleg Barenboim) - [0:48](https://youtu.be/xQEHAEvA5ZE?t=48)
* Community Update (Carol Chen) - [3:36](https://youtu.be/xQEHAEvA5ZE?t=216)
* Classic UI (Dan Clarizio) - [9:11](https://youtu.be/xQEHAEvA5ZE?t=551)
* Service UI (Chris Kacerguis) - [14:47](https://youtu.be/xQEHAEvA5ZE?t=887)
* Providers (Greg Blomquist) - [16:55](https://youtu.be/xQEHAEvA5ZE?t=1015)
* Automate (Greg McCullough) - [25:59](https://youtu.be/xQEHAEvA5ZE?t=1559)
* Platform (Gregg Tanzillo) - [29:18](https://youtu.be/xQEHAEvA5ZE?t=1758)
* API (Alberto Bellotti) - [33:04](https://youtu.be/xQEHAEvA5ZE?t=1984)
* Discussion -[38:26](https://youtu.be/xQEHAEvA5ZE?t=2306)

Delve into some specific PRs with these 2 installments of “Last Week in ManageIQ”:

* [The last will be the first!](/blog/2017/01/last-week-in-manageiq-last-will-be-first/) - by [Hilda Stastna](https://github.com/hstastna) 
* [Keeping up with the conferences](/blog/2017/01/keeping-up-with-the-conferences/) - by [Dávid Halász](https://github.com/skateman)

Next Sprint 54 review will be on February 15, 2017 @ 7:30 PST/10:30 EST/15:30 GMT. Join in the ManageIQ Sprint meeting via [Bluejeans](https://bluejeans.com/5927041376/) and import the [ManageIQ community calendar](https://calendar.google.com/calendar/embed?src=contact%40manageiq.org) to be notified about this and future Sprint reviews.

Before you go, check out some [moments](https://twitter.com/i/moments/826409590543773696) from the ManageIQ team at [DevConf.CZ](https://devconf.cz/) in Brno over the past weekend, and see you at [FOSDEM](https://fosdem.org/2017/) if you're in Brussels this weekend!

### [Sprint 53 Slide deck](https://www.slideshare.net/ManageIQ/sprint-53)

<iframe src="//www.slideshare.net/slideshow/embed_code/key/npjZjkLf8Od7v0" width="510" height="420" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

### [Changelog](https://github.com/ManageIQ/manageiq/blob/master/CHANGELOG.md)

#### Added

- Automate
  - Add 'delete' to generic object configuration dropdown ([#13541](https://github.com/ManageIQ/manageiq/pull/13541))
  - Automate Model: Add Amazon block storage automation models ([#13458](https://github.com/ManageIQ/manageiq/pull/13458))
  - Orchestration Services: create_catalog_item to ServiceTemplateOrchestration ([#13628](https://github.com/ManageIQ/manageiq/pull/13628))
  - Add create_catalog_item class method to ServiceTemplate ([#13589](https://github.com/ManageIQ/manageiq/pull/13589))
  - Save playbook service template ([#13600](https://github.com/ManageIQ/manageiq/pull/13600))
  - Allow adding disks to vm provision via api and automation ([#13318](https://github.com/ManageIQ/manageiq/pull/13318))
  - See also [manageiq-content repository](https://github.com/ManageIQ/manageiq-content).

- Platform
  - Chargeback: Introduce Vm/Chargeback tab backend ([#13687](https://github.com/ManageIQ/manageiq/pull/13687))
  - Add methods for configuring and starting Ansible inside ([#13584](https://github.com/ManageIQ/manageiq/pull/13584))
  - See also [manageiq-appliance repository](https://github.com/ManageIQ/manageiq-appliance).

- Providers
  - Ansible Tower
    - Event Catcher ([#13423](https://github.com/ManageIQ/manageiq/pull/13423))
    - Migrate AnsibleTower ConfigurationManager to AutomationManager ([#13630](https://github.com/ManageIQ/manageiq/pull/13630))
  - Containers
    - Instantiate Container Template ([#10737](https://github.com/ManageIQ/manageiq/pull/10737))
    - Collect node custom attributes from hawkular during refresh ([#12924](https://github.com/ManageIQ/manageiq/pull/12924))
  - See also [manageiq-providers-azure changelog](https://github.com/ManageIQ/manageiq-providers-azure/pull/29).
  - See also [manageiq-providers-amazon changelog](https://github.com/ManageIQ/manageiq-providers-amazon/pull/124).

- REST API
  - API collection OPTIONS Enhancement to expose list of supported subcollections ([#13681](https://github.com/ManageIQ/manageiq/pull/13681))
  - API Enhancement to support filtering on id attributes by compressed id's ([#13645](https://github.com/ManageIQ/manageiq/pull/13645))
  - Adds remove_approver_resource to ServiceRequestController. ([#13596](https://github.com/ManageIQ/manageiq/pull/13596))
  - Add OPTIONS method to Clusters and Hosts ([#13574](https://github.com/ManageIQ/manageiq/pull/13574))
  - VMs/Snapshots API CRD ([#13552](https://github.com/ManageIQ/manageiq/pull/13552))
  - Add alert actions api ([#13325](https://github.com/ManageIQ/manageiq/pull/13325))

- Storage
  - Add Amazon EC2 block storage manager EMS ([#13539](https://github.com/ManageIQ/manageiq/pull/13539))

- Services UI
  - See [manageiq-ui-service repository](https://github.com/ManageIQ/manageiq-ui-service).

- User Interface (Classic)
  - See [manageiq-ui-classic changelog](https://github.com/ManageIQ/manageiq-ui-classic/pull/276).

#### Changed

- Automate
  - Look for resources in the same region as the selected template during provisioning. ([#13045](https://github.com/ManageIQ/manageiq/pull/13045))

- Providers
  - Red Hat Virtualization Manager: Save host for a VM after migration ([#13511](https://github.com/ManageIQ/manageiq/pull/13511))

- Storage
  - Rename Amazon EBS storage manager ([#13569](https://github.com/ManageIQ/manageiq/pull/13569))

#### Fixed

Notable fixes include:

- Automate
  - Allow a service power state to correctly handle nil actions ([#13232](https://github.com/ManageIQ/manageiq/pull/13232))

- Platform
  - Tenant admin should not be able to create groups in other tenants. ([#13483](https://github.com/ManageIQ/manageiq/pull/13483))
  - Chargeback: Fix rate adjustment rounding bug ([#13331](https://github.com/ManageIQ/manageiq/pull/13331))

- Providers
  - Console: Added missing parameter when requesting OpenStack remote console ([#13558](https://github.com/ManageIQ/manageiq/pull/13558))

