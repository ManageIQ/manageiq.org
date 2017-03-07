---
title: Sprint 54 review - February 15, 2017
author: cybette
date: 2017-02-17
tags: sprints
comments: true
published: true
---

Welcome to the Sprint 54 review recap! For this sprint, we had 126 pull requests in the [main ManageIQ repo](https://github.com/manageiq/manageiq), with a good mix of enhancements, bugs, cleanup and more. The [Classic UI](https://github.com/manageiq/manageiq-ui-classic) repo contributed 80 more PRs, with [Integration tests](https://github.com/manageiq/integration_tests) following closely at 77 PRs. Grand total across [all repos](https://github.com/manageiq) is 462. As we keep splitting out repos from the monolith (which is looking less like one every sprint), the majority of the work will be going outside of the main repo.

With plenty of bug fixing, especially on high-impact issues, the QE team has been kept busy with a lot of testing. The incoming issues rate is relatively low, however it is expected to pick up over the next several sprints as the Ansible work comes together. Speaking of Ansible, the existing Ansible Tower UI has been separated from Foreman under Configuration, and moved to the new Automation tab mentioned in [Sprint 52](/blog/2017/01/sprint-52-review-january-18-2017/). Graph Refresher, introduced [last sprint](/blog/2017/02/sprint-53-review-february-1-2017/), is now backing the Ansible refresh. In the Service UI, the Service Details page is updated to include data from Ansible provider.

On the Platform side, there's a check for whether the embedded Ansible is "alive" using the Ansible REST API, to determine if we need to failover. A provider mixin is created to share code between the embedded Ansible and Tower providers. More Ansible Playbook integration is found in Automate, with support for the new Generic Service processing. This Generic Service State Machine is initially for the Ansible Playbooks, and we hope to use it in Control Actions, Orchestration and future integrations. This will make creating a new kind of service or migrating services much simpler, as instead of having to move over a complex structure of classes and namespaces, it is just a single class with methods for Provisioning, Retirement and Reconfigure - making the process generic.

Even though Ansible is killing it across the different categories, Amazon still led the pack in number of PRs for providers. Building on momentum from the previous sprint, XLab made more updates to Amazon Storage Manager. OpenStack's inventory refresh performance has been improved by reducing the orchestration stack resource depth. As for Containers, there are lots of new reports and widgets available, and the container team also helped fix a race condition in `container_live_dashboard_controller`.

Service UI added more endpoints to the Mock API system created last sprint. This lightweight system simulates the ManageIQ backend, so one can develop or test against the API without running the backend. Service Designer and Arbitration Profiles have been completely removed. To enable the same dialog editor in both Classic and Service UIs, the ui-components were updated in Classic UI. The ongoing, repaying tech-debt process saw more images being converted to svg and fonticons (75% done).

Here are some API improvements sprint-to-sprint:
* support for bulk tag assignments for VMs and Services + support for bulk tag *un*assignments for VMs and Services
* ability to delete a single Snapshot + ability to *bulk* delete Snapshots
* Snapshot support for VMs + Snapshot support for Instances

Now let's look at the [Sprint 54 review video](https://www.youtube.com/watch?v=lj6e2xanVII) which includes an [Ansible Service demo](https://youtu.be/lj6e2xanVII?t=1318).

<iframe width="560" height="315" src="https://www.youtube.com/embed/lj6e2xanVII" frameborder="0" allowfullscreen></iframe>

Here’s the meeting order and corresponding timestamps for each topic:

* Sprint Statistics (Oleg Barenboim) - [0:49](https://youtu.be/lj6e2xanVII?t=49)
* Community Update (Carol Chen) - [2:30](https://youtu.be/lj6e2xanVII?t=150)
* Classic UI (Dan Clarizio) - [5:54](https://youtu.be/lj6e2xanVII?t=354)
* Service UI (Chris Kacerguis) - [10:05](https://youtu.be/lj6e2xanVII?t=605)
* Providers (Greg Blomquist) - [11:43](https://youtu.be/lj6e2xanVII?t=703)
* Automate (Greg McCullough) - [16:02](https://youtu.be/lj6e2xanVII?t=962)
* Platform (Gregg Tanzillo) - [25:06](https://youtu.be/lj6e2xanVII?t=1506)
* API (Alberto Bellotti) - [28:43](https://youtu.be/lj6e2xanVII?t=1723)
* Quality Engineering (Dave Johnson) - [33:22](https://youtu.be/lj6e2xanVII?t=2002)
* Discussion -[36:42](https://youtu.be/lj6e2xanVII?t=2202)

Get a closer look at the work done this sprint with the following “Last Week in ManageIQ” posts:

* [API & Ansible & Stuff](/blog/2017/02/ansible-and-api-and-stuff/) - by [Daniel Berger](https://github.com/djberg96) 
* [Love is in the PRs](/blog/2017/02/love-is-in-the-PRs/) - by [Jillian Tullo](https://github.com/jntullo)

Coming up, Sprint 55 review will be on March 1, 2017 @ 7:30 PST/10:30 EST/15:30 GMT. Join in the ManageIQ Sprint meeting via [Bluejeans](https://bluejeans.com/5927041376/) and import the [ManageIQ community calendar](https://calendar.google.com/calendar/embed?src=contact%40manageiq.org) to be notified about this and future Sprint reviews.

Final note: [PyCon Pune](https://pune.pycon.org/) is happening as I write this, and it looks like the ManageIQ team in Pune is having a blast! More upcoming events can be found on the [community page](/community/).

### [Sprint 54 Slide deck](https://www.slideshare.net/ManageIQ/sprint-54)

<iframe src="//www.slideshare.net/slideshow/embed_code/key/vUgrPrm9FxwqpZ" width="510" height="420" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

### [Changelog](https://github.com/ManageIQ/manageiq/blob/master/CHANGELOG.md)

#### Added

- Automate
  - Alerts: Add hide & show alert status actions (backend) [(#13650)](https://github.com/ManageIQ/manageiq/pull/13650)
  - Provisioning
    - Change vLan name to Virtual Network  [(#13747)](https://github.com/ManageIQ/manageiq/pull/13747)
    - Advanced networking placement features and automate exposure for OpenStack  [(#13608)](https://github.com/ManageIQ/manageiq/pull/13608)
    - Add multiple_value option to expose_eligible_resources [(#13853)](https://github.com/ManageIQ/manageiq/pull/13853)
  - Services
    - Add create_catalog_item to ServiceTemplateAnsibleTower  [(#13646)](https://github.com/ManageIQ/manageiq/pull/13646)
    - Tool to create a service dialog for an Ansible playbook [(#13494)](https://github.com/ManageIQ/manageiq/pull/13494)
    - Resource action - Add service_action. [(#13751)](https://github.com/ManageIQ/manageiq/pull/13751)
    - Initial commit for ansible playbook methods and service model. [(#13717)](https://github.com/ManageIQ/manageiq/pull/13717)
  - See also [Manageiq/manageiq-content](https://github.com/ManageIQ/manageiq-content)

- Platform
  - Add View and Modify/Add RBAC features for the Embedded Automation Provider [(#13716)](https://github.com/ManageIQ/manageiq/pull/13716)
  - Reporting: Adding new report and widgets for Containers [(#13055)](https://github.com/ManageIQ/manageiq/pull/13055)
  - See also [Manageiq/manageiq-appliance](https://github.com/ManageIQ/manageiq-appliance)

- Providers
  - Ansible: Refresh inventory [(#13807)](https://github.com/ManageIQ/manageiq/pull/13807)
  - Containers: Add datawarehouse logger [(#13813)](https://github.com/ManageIQ/manageiq/pull/13813)
  - See also [Manageiq/manageiq-providers-amazon](https://github.com/ManageIQ/manageiq-providers-amazon)
  - See also [Manageiq/manageiq-providers-azure](https://github.com/ManageIQ/manageiq-providers-azure)

- REST API
  - Add snapshotting for instances in the API [(#13729)](https://github.com/ManageIQ/manageiq/pull/13729)
  - Bulk unassign tags on services and vms  [(#13712)](https://github.com/ManageIQ/manageiq/pull/13712)
  - Add bulk delete for snapshots API [(#13711)](https://github.com/ManageIQ/manageiq/pull/13711)
  - Improve create picture validation [(#13697)](https://github.com/ManageIQ/manageiq/pull/13697)
  - Configuration Script Sources API [(#13626)](https://github.com/ManageIQ/manageiq/pull/13626)
  - Api enhancement to support optional collection_class parameter [(#13845)](https://github.com/ManageIQ/manageiq/pull/13845)
  - Allows specification for optional multiple identifiers [(#13827)](https://github.com/ManageIQ/manageiq/pull/13827)
  - Add config_info as additional attribute to Service Templates API [(#13842)](https://github.com/ManageIQ/manageiq/pull/13842)

- User Interface (Classic)
  - Added changes to show Catalog Item type in UI [(#13516)](https://github.com/ManageIQ/manageiq/pull/13516)
  - Physical Infrastructure provider (lenovo) changes required for the UI [(#13735)](https://github.com/ManageIQ/manageiq/pull/13735)
  - Adding Physical Infra Providers Menu Item [(#13587)](https://github.com/ManageIQ/manageiq/pull/13587)
  - Added new features for the Ansible UI move to the Automation tab [(#13526)](https://github.com/ManageIQ/manageiq/pull/13526)
  - Added new features for the Ansible UI move to the Automation tab [(#13526)](https://github.com/ManageIQ/manageiq/pull/13526)
  - See also [Manageiq/manageiq-ui-classic changelog](https://github.com/ManageIQ/manageiq-ui-classic/pull/352)

- Service UI
  - See [Manageiq/manageiq-ui-service](https://github.com/ManageIQ/manageiq-ui-service)

#### Changed

- Platform
  - Rename events "ExtManagementSystem Compliance\*" -> "Provider Compliance\*" [(#13388)](https://github.com/ManageIQ/manageiq/pull/13388)
  - Kill workers that don't stop after a configurable time [(#13805)](https://github.com/ManageIQ/manageiq/pull/13805)

#### Fixed

- Providers
  - RHEV Fix Host getting disconnected from Cluster when migrating a VM in  [(#13815)](https://github.com/ManageIQ/manageiq/pull/13815)

- Automate
  - Services
    - Power state for services that do not have an associated service_template [(#13785)](https://github.com/ManageIQ/manageiq/pull/13785)
  - Provisioning
    - Update validation regex to prohibit only numbers for Azure VM provisioning [(#13730)](https://github.com/ManageIQ/manageiq/pull/13730)

- User Interface (Classic)
  - Added missing Automate sub menu key to permissions yml. [(#13819)](https://github.com/ManageIQ/manageiq/pull/13819)

- Platform
  - Chargeback
    - Skip calculation when there is zero consumed hours [(#13723)](https://github.com/ManageIQ/manageiq/pull/13723)
    - Bring currency symbols back to chargeback reports [(#13861)](https://github.com/ManageIQ/manageiq/pull/13861)
  - Add MiqUserRole to RBAC [(#13689)](https://github.com/ManageIQ/manageiq/pull/13689)
  - Fix broken C&U collection [(#13843)](https://github.com/ManageIQ/manageiq/pull/13843)
  - Instead of default(system) assign current user to generating report task [(#13823)](https://github.com/ManageIQ/manageiq/pull/13823)

- Providers
  - Hawkular: Allow adding datawarehouse provider with a port other than 80 [(#13840)](https://github.com/ManageIQ/manageiq/pull/13840)

- REST API
  - Convey a useful message to queue_object_action [(#13710)](https://github.com/ManageIQ/manageiq/pull/13710)
  - Fix load balancers access in API [(#13866)](https://github.com/ManageIQ/manageiq/pull/13866)
  - Fix cloud networks access in API [(#13865)](https://github.com/ManageIQ/manageiq/pull/13865)
  - Fix schedule access in API [(#13864)](https://github.com/ManageIQ/manageiq/pull/13864)

