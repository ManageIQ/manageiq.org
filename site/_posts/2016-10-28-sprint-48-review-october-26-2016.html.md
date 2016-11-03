---
title: Sprint 48 review - October 26, 2016
author: cybette
date: 2016-10-28 20:20:00 UTC
tags: sprints
comments: true
published: true
---

Welcome to the Sprint 48 review recap! This was the sprint for the [Euwe Beta](http://manageiq.org/blog/2016/10/Announcing-Euwe-Beta-Release/) release, with the just announced [Euwe release candidate](http://manageiq.org/blog/2016/10/Announcing-Euwe-Release-Candidate/) hot on its heels.

In this sprint we had 404 pull requests merged in the main [ManageIQ repo](https://github.com/ManageIQ/manageiq), a big chunk consisting of bug fixes. 266 PRs were backported to the Euwe branch that we are focusing on stabilizing, and this will continue to the next sprint. Across the repos, with plenty of work going into the [new website](http://manageiq.org/) [(source)](https://github.com/ManageIQ/manageiq.org), a lot of clean-up and new features in <del>Self</del> [Service UI](https://github.com/ManageIQ/manageiq-ui-service), as well as a [new repo to podify](https://github.com/ManageIQ/manageiq-pods) the ManageIQ project for Kubernetes/Openshift, we accomplished a total of 693 PRs in 3 weeks!

To start off, there is a new arrival [Lenovo](https://github.com/ManageIQ/manageiq-providers-lenovo), which is a physical infrastructure provider. This is a brand new provider type for ManageIQ, so we are just getting started and laying the foundation work for now. However, this promises more cool stuff to look forward to, building towards the full stack picture.

On the Chargeback front, there's major rework of the calculations, with reinstated weekly and monthly rates. The Service UI now supports showing Chargeback report data, and you can enable custom attributes for those reports as well.

Further enhancements include scheduling Automate Tasks via the rails console, and several notable API support for central admin work. Cinder backup/restore has been added to OpenStack and Automate. Also take note that we are no longer appending "_" to the VM name in service provisioning as the underscore is an invalid character for some providers.

You will notice numerous screenshots in the slides showcasing work done on the Classic UI, such as creating/updating/deleting Cloud Networks and OpenStack Cloud Tenants (previously only view and tag were supported). There are new topology views for Cloud Manager and Infrastructure providers. Finally, you can find demos on proxying the VNC or SPICE connection, hiding VMs and instances in explorer trees (for improving performance), and the added OpenStack features along with the rest of the Sprint review meeting [here in the video](https://www.youtube.com/watch?v=wD6dqm9hSRM).

<iframe width="560" height="315" src="https://www.youtube.com/embed/wD6dqm9hSRM" frameborder="0" allowfullscreen></iframe>

For specific sections of the review meeting, here are the respective timestamps:

* Sprint Statistics (Jason Frey) - [0:52](https://youtu.be/wD6dqm9hSRM?t=52)
* Classic UI (Harpreet Kataria) - [3:37](https://youtu.be/wD6dqm9hSRM?t=217)
* Service UI (Chris Kacerguis) - [23:43](https://youtu.be/wD6dqm9hSRM?t=1423)
* Providers (Greg Blomquist) - [24:42](https://youtu.be/wD6dqm9hSRM?t=1482)
* Automate (Greg McCullough) - [31:43](https://youtu.be/wD6dqm9hSRM?t=1903)
* Platform (Gregg Tanzillo) - [43:54](https://youtu.be/wD6dqm9hSRM?t=2634)
* API (Alberto Bellotti) - [51:44](https://youtu.be/wD6dqm9hSRM?t=3104)
* Quality Engineering (Pete Savage) - [55:35](https://youtu.be/wD6dqm9hSRM?t=3335)
* Discussion - [57:53](https://youtu.be/wD6dqm9hSRM?t=3473)

Get a closer look at some of the work done this sprint with the following "Last Week in ManageIQ" posts:

* [Hacktoberfest, Faster Trees, and Chargeback Reports!](http://manageiq.org/blog/2016/10/lwimiq-hacktoberfest-faster-trees-chargeback-reports/) - by [Tim Wade](https://twitter.com/imtayadeway) 
* [Conversations lead to merges!](http://manageiq.org/blog/2016/10/last-week-in-manageiq-conversations-lead-to-merges/) - by [Drew Bomhof](https://twitter.com/syncrou)
* [Exceptions, Logs, and Ternary Operators!](http://manageiq.org/blog/2016/10/lwimiq-exceptions-logs-ternary/) - by [Jillian Tullo](https://github.com/jntullo)

While getting closer to the Euwe GA, we are also embarking on the F-release on master. These are exciting times! Don't miss out on the excitement by joining us every 3 weeks in the ManageIQ Sprint review via [Bluejeans](https://bluejeans.com/5927041376/). Sprint 49 review will be on November 16, 2016 @ [7:30am PST/10:30am EST/15:30 GMT](http://www.timeanddate.com/worldclock/fixedtime.html?msg=ManageIQ+Sprint+49+review&iso=20161116T1530). You can import the [ManageIQ community calendar](https://calendar.google.com/calendar/embed?src=contact%40manageiq.org) to be notified about this and future Sprint reviews.

### [Slide deck](http://www.slideshare.net/ManageIQ/sprint-48-review)

<iframe src="//www.slideshare.net/slideshow/embed_code/key/A9MiYmAgdgOwap" width="510" height="420" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

### [Changelog](http://manageiq.org/community/changelog/)

#### Added

- Automate
  - Reset domain priorities at startup and restore
  - Set default entry points for non-generic catalog items
  - Model: Schema change for Cloud Orchestration Retirement class
  - Automation method that will choose VDC networks available in the given
cloud provider
  - Provisioning
    - Show shared networks in the OpenStack provisioning dialog
    - Reconnect orchestration stack with its template at post-provisioning
  - Domain Import
    - Rake task to import an Automate Model stored in a  Git Repository
    - Allow for setting up self signed certificate in Import Screen
    - REST API Git refresh and import
    - Route the REST API import call to the correct server with the Git Owner Server role
  - Added Automate $evm.create_notification method
  - Retirement
    - Allow VM's with unknown power state to retire.
    - Allow archived/orphaned VM's to retire
    - Added checks and logging for amazon retirement
  - Service Model
    - Added cinder backup/restore actions
    - RBAC for service models
  - Scheduling Automate Tasks via the rails console
- Platform
  - Configure kerberos to do dns_lookups for external authentication
  - Add additional cloud objects to RBAC filter
  - Chargeback
    - Add Vm Guid to report fields for ChargebackVm reports
    - Enable custom attributes for chargeback reports
    - Add monthly/hourly/weekly in rates for 'per time' types
    - Calculation changes taking into account averages and maximums per selected interval in report(monthly, weekly, daily)
  - Logging: Add the ability to use a different disk for storing log files
  - Tenancy: Introduce service for sharing resources across tenants
- Providers
  - Allow Vm to show floating and fixed ip addresses
  - Containers
    - Persist Container Templates
    - UI: Add Container Templates
  - Google Compute Engine: Support for parsing Google health checks during refresh
  - OpenStack
    - Cloud
      - UI: Cloud volume backup
      - CRUD for OpenStack Cloud tenants
      - Enable Image Snapshots
      - CRUD for OpenStack Host Aggregates
    - Infra
      - Enable node start and stop
      - Node destroy deletes node from Ironic
      - Add Ironic Controls
      - Set boot image for registered hosts
  - Storage: Cinder backup
- REST API
  - Service power operations
  - Add custom attributes to provider
  - Service Dialog Create
  - Support for /api/requests creation and edits
- SmartState: Add /etc/redhat-access-insights/machine-id to the sample VM analysis profile
- User Interface
  - Dashboard view for Infrastructure views
  - Conversion of Middleware Provider form to Angular
  - Add human name for Google & Azure load balancers
  - Ability to get to details of Ansible jobs
  - Add UI for generating authorization keys for remote regions
  - Disable tenant edit from cloud tenant mapping
  - Topology for Cloud Manager
  - Topology for Infra provider
  
#### Changed
 
- Performance
  - Speed up RBAC when no vm in tree in Virtual Machine Explorer
  - Speed-up lookup for min/max storage_used metric
  - Add option to hide VMs in trees
- Platform: Set appliance "system" memory/swap information
- Providers
  - Google Cloud Platform: Use standard health states
  - Microsoft SCVMM: Set  default security protocol to ssl
  - Network: Use RESTful routes

#### Fixed

Notable fixes include:

- Automate
  - Broken ordering ae_domains for a root tenant.
  - Model: Added missing ServiceTemplateProvisionRequest_denied and ServiceTemplateProvisionRequest_pending instances so that Denied Service requests will properly generate emails.
  - Validate user roles against domain edit before allowing copy/edit on any objects under it
  - Provisioning: Stop appending the `_` character as part of the enforced VM naming.
  - Fixed case where user can't add alerts.
  - Fixed issue where alerts don't send SNMP v1 traps
- Platform
  - Chargeback: Fix Group by tag in chargeback report
  - Replication
    - Add repmgr tables to replication excludes
    - Don't consider tables that are always excluded during the schema check
    - Fixed bug in settings/access control where tenants from remote regions
are displayed in the tenant list view and in the tenant selection when adding/editing a group
- Providers
  - Containers: Ability to add a container provider with a port other than 8443
  - Azure: Show 'Memory (MB)' chart for azure instance
- User Interface
  - Enable Provision VMs button via relationships
  - Missing reset button for Job Template Service Dialog
  - Display the number of access control elements based on user permission


