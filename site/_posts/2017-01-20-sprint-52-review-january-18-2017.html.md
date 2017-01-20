---
title: Sprint 52 review - January 18, 2017
author: cybette
date: 2017-01-20 21:37:04 UTC
tags: sprints
comments: true
published: true
---

This sprint review marked the end of the first [2-week Sprint](/blog/2017/01/schedule-change-3-week-sprints-to-2-week-sprints/), which we are trying out and will adjust as needed. As mentioned [previously](/blog/2017/01/sprint-51-review-january-4-2017/), we are splitting repos as we chip away at the ManageIQ monolith and progress it into a platform. Keep up to date with the details in the [Developers category of Talk forum](http://talk.manageiq.org/c/developers).

With the shorter sprints and repo spread, PR count is decreasing in the [main ManageIQ repo](https://github.com/manageiq/manageiq) as expected. However, over the 2 weeks there were 128 pull requests in main, 95 PRs in [`integration_tests`](https://github.com/manageiq/integration_tests), and 71 PRs in [`manageiq-ui-classic`](https://github.com/manageiq/manageiq-ui-classic). Considering the [remaining repos](https://github.com/manageiq) in addition to the top 3, we are on par with the velocity of [past sprints](/blog/tags/sprints/).

The theme of Sprint 52 revolves around integrating Ansible into ManageIQ. Service Design work was done for running Playbooks, and functionality has been added to the AnsibleTowerClient gem in Automate. Work is in progress for embedding Ansible on appliances to run Playbooks in job templates directly. To prepare for Ansible integration, the Services List has been redesigned, and the `Automate` tab is moved as a sub-menu under a new tab called `Automation`. There will be other tabs coming under `Automation` in the future.

QE team is looking at Ansible stories for the Fine release and investigating vSphere 6.5 support, in addition to many automation and optimization tasks. Documentation for Euwe API v2.3.0 has been merged and pushed to the [website](/docs/api). Support for sorting by virtual attributes via API, as supported by SQL, is now available. For example, `GET /api/vms?sort_by=host_name&order=desc`

There's a significant bug fix in Central Admin to ensure that the data encapsulated within a provision request gets encrypted with the right encryption key, so it can be decrypted when the request arrives at the remote region (from global). Amazon took the lead in the number of PRs in Providers, with the separation of AWS storage functionality into specific storage manager, much like what was done to OpenStack storage recently.

More bug fixes occurred in Classic UI, with some of them analogous to small enhancements, such as the ability to add/remove Network Router Interfaces, and to enable provisioning of instances from Providers view. Keeping up with Angular changes, some cleaning up was done to get into 1.6+ as we get ready for Angular 2.0. You can see other UI enhancements with screenshots in the [Sprint 52 review video](https://www.youtube.com/watch?v=eVuhBZ53SP0).

<iframe width="560" height="315" src="https://www.youtube.com/embed/eVuhBZ53SP0" frameborder="0" allowfullscreen></iframe>

For specific sections of the review meeting, here are the respective timestamps:

* Sprint Statistics (Oleg Barenboim) - [0:53](https://youtu.be/eVuhBZ53SP0?t=53)
* Community Update (Carol Chen) - [3:49](https://youtu.be/eVuhBZ53SP0?t=229)
* Classic UI (Dan Clarizio) - [6:43](https://youtu.be/eVuhBZ53SP0?t=403)
* Service UI (Chris Kacerguis) - [10:46](https://youtu.be/eVuhBZ53SP0?t=646)
* Providers (Greg Blomquist) - [12:23](https://youtu.be/eVuhBZ53SP0?t=743)
* Automate (Greg McCullough) - [14:40](https://youtu.be/eVuhBZ53SP0?t=880)
* Platform (Gregg Tanzillo) - [16:35](https://youtu.be/eVuhBZ53SP0?t=995)
* API (Alberto Bellotti) - [20:04](https://youtu.be/eVuhBZ53SP0?t=1204)
* Quality Engineering (Dave Johnson) - [23:10](https://youtu.be/eVuhBZ53SP0?t=1390)
* Discussion -[25:56](https://youtu.be/eVuhBZ53SP0?t=1556)

Get a closer look at the work done this sprint with the following “Last Week in ManageIQ” posts:

* [Blog about all the things](/blog/2017/01/blog-about-all-the-things/) - by [Drew Bomhof](https://github.com/syncrou) 
* [Destroy the Monolith](/blog/2017/01/destroy-the-monolith/) - by [Marcel Hild](https://github.com/durandom/)
* And here's a [Last Year in ManageIQ](/blog/2017/01/year-in-review-2016/) summary - by [Carol Chen](https://twitter.com/cybette)

Coming up, Sprint 53 review will be on February 1, 2017 @ [7:30 PST/10:30 EST/15:30 GMT](http://www.timeanddate.com/worldclock/fixedtime.html?msg=ManageIQ+Sprint+53+review&iso=20170201T1530). Join in the ManageIQ Sprint meeting via [Bluejeans](https://bluejeans.com/5927041376/) and import the [ManageIQ community calendar](https://calendar.google.com/calendar/embed?src=contact%40manageiq.org) to be notified about this and future Sprint reviews.

Finally, if you're attending [DevConf.CZ](https://devconf.cz/) in Brno, we will have a ManageIQ booth there. Come say hi and get some ManageIQ goodies!

### [Sprint 52 Slide deck](http://www.slideshare.net/ManageIQ/sprint-52)

<iframe src="//www.slideshare.net/slideshow/embed_code/key/ciHbcFzsqMnQhx" width="510" height="420" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

### [Changelog](https://github.com/ManageIQ/manageiq/blob/master/CHANGELOG.md)

#### Added

- Automate
  - Move MiqAeEngine components into the appropriate directory in preparation for extracting the Automate engine into its own repository ([#13406](https://github.com/ManageIQ/manageiq/pull/13406))
  - Automate Retry with Server Affinity ([#13363](https://github.com/ManageIQ/manageiq/pull/13363))
  - Service Model: Added container components for service model ([#12863](https://github.com/ManageIQ/manageiq/pull/12863))
  - Services: Add automate engine support for array elements containing text values ([#11667](https://github.com/ManageIQ/manageiq/pull/11667))
  - See also [manageiq-content repository](https://github.com/ManageIQ/manageiq-content).

- Platform
  - Reporting: Add option for container performance reports ([#11904](https://github.com/ManageIQ/manageiq/pull/11904))
  - Chargeback: Charge SCVMM's vm only until it is retired. ([#13451](https://github.com/ManageIQ/manageiq/pull/13451))
  - New class for determining the availability of embedded ansible ([#13435](https://github.com/ManageIQ/manageiq/pull/13435)).
  - See also [manageiq-appliance repository](https://github.com/ManageIQ/manageiq-appliance).

- Providers
  - Force unique endpoint hostname only for same type ([#12912](https://github.com/ManageIQ/manageiq/pull/12912))
  - Containers: Add alerts on container nodes ([#13323](https://github.com/ManageIQ/manageiq/pull/13323))
  - VMware Infrastructure: Validate CPU and Memory Hot-Plug settings in reconfigure ([#12275](https://github.com/ManageIQ/manageiq/pull/12275))
  - See also [manageiq-providers-azure repository](https://github.com/ManageIQ/manageiq-providers-azure).
  - See also [manageiq-providers-amazon repository](https://github.com/ManageIQ/manageiq-providers-amazon).

- REST API
  - Copy orchestration template ([#13053](https://github.com/ManageIQ/manageiq/pull/13053))
  - Expose Request Workflow class name ([#13441](https://github.com/ManageIQ/manageiq/pull/13441))
  - Sort on sql friendly virtual attributes ([#13409](https://github.com/ManageIQ/manageiq/pull/13409))
  - Expose allowed tags for a request workflow ([#13379](https://github.com/ManageIQ/manageiq/pull/13379))

- Services UI
  - See [manageiq-ui-service repository](https://github.com/ManageIQ/manageiq-ui-service).

- User Interface (Classic)
  - Add edit functionality for generic object UI ([#11815](https://github.com/ManageIQ/manageiq/pull/11815))
  - See also [manageiq-ui-classic repository](https://github.com/ManageIQ/manageiq-ui-classic).

#### Changed

- Platform
  - Add list of providers to RBAC on catalog items ([#13395](https://github.com/ManageIQ/manageiq/pull/13395))

- Providers
  - Amazon: Move amazon settings to ManageIQ/manageiq-providers-amazon ([#13192](https://github.com/ManageIQ/manageiq/pull/13192))

#### Fixed

Notable fixes include:

- Automate
  - Increment the ae_state_retries when on_exit sets retry ([#13339](https://github.com/ManageIQ/manageiq/pull/13339))

- Platform
  - Chargeback: Charge only for past hours ([#13134](https://github.com/ManageIQ/manageiq/pull/13134))
  - Replication: Expose a method for encrypting using a remote v2_key ([#13083](https://github.com/ManageIQ/manageiq/pull/13083))

- Providers
  - OpenStack Cloud Network Router:  Raw commands are wrapped in raw prefixed methods ([#13072](https://github.com/ManageIQ/manageiq/pull/13072))
  - OpenStack Infra: Ssh keypair validation fixes ([#13445](https://github.com/ManageIQ/manageiq/pull/13445))

