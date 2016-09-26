---
title: Sprint 46 review - September 14, 2016
author: cybette
date: 2016-09-16 13:00:46 UTC
tags: sprints
comments: true
published: true
---

There is a ManageIQ Sprint review every 3 weeks, and everyone in the community is welcome to participate. To join our Sprint review meeting, please use this [Bluejeans link](https://bluejeans.com/5927041376/).

Even with a long Labour day weekend in between, we sprang another solid iteration with Sprint 46. There were 353 merged pull requests in the main repo - 171 PRs in UI alone - and with integration tests from the QE team, documentation, self service, Amazon provider etc., we had a grand total of 541 PRs across all the repos!

During Sprint 45, we had inventory collection of GCE Preemptible VMs, and now we can provision them with Google's contributions in this sprint. In addition, Joe@Google submitted a PR to allow port ranges for load balancers. Our friends at XLAB put in major effort to enable collection of status of vCloud Orchestration Stacks, as well as all cloud network inventory objects for vCloud.

Microsoft Azure gets a provider-specific logger which makes debugging a whole lot easier, plus a Subscription field to its discovery screen on the UI. In other UI news (which deserves a separate blog post on its own), there were a lot of bug fixes resulting from all the new stuff that are coming in and the code refactoring.

Some work has been done at the back end for supporting the generation of Chargeback for services. At some point, this will be used in SSUI to show the cost of VMs grouped by service. There have been amazing performance enhancements too, for example viewing the VM explorer for current user is now a remarkable 99.5% faster (from 93.8s down to 0.5s)!

The QE team wants to schedule some calls around reviewing test coverage with development and anyone interested. If you'd like to help out, please contact [Dave Johnson](mailto:dajohnso at redhat dot com).

In [this week's video](https://www.youtube.com/watch?v=CpRLwFKoOPY) we have a cool mouseless PostgreSQL High Availability demo, from setting up the DB cluster, running the repmgr daemon, to the failover mechanisms in action. Other demos include Service Designer, Cloud Tenant Mapping, and a sneak peek at the new manageiq.org site.
<iframe width="560" height="315" src="https://www.youtube.com/embed/CpRLwFKoOPY" frameborder="0" allowfullscreen></iframe>

If you'd like to check out a particular section of the review meeting, here are the respective timestamps:

* Sprint Statistics (Oleg Barenboim) - [1:14](https://youtu.be/CpRLwFKoOPY?t=74)
* Community Update (Carol Chen) - [4:07](https://youtu.be/CpRLwFKoOPY?t=247)
* Service Broker (Jillian Tullo) - [9:20](https://youtu.be/CpRLwFKoOPY?t=560)
* Providers (Greg Blomquist) - [14:10](https://youtu.be/CpRLwFKoOPY?t=850)
* User Interface (Dan Clarizio) - [22:08](https://youtu.be/CpRLwFKoOPY?t=1328)
* Platform (Gregg Tanzillo) - [28:21](https://youtu.be/CpRLwFKoOPY?t=1701)
* <del>REST</del> API (Alberto Bellotti) - [47:28](https://youtu.be/CpRLwFKoOPY?t=2848)
* Automate (Greg McCullough) - [52:52](https://youtu.be/CpRLwFKoOPY?t=3172)
* Performance (Dennis Metzger) - [57:17](https://youtu.be/CpRLwFKoOPY?t=3437)
* Quality Engineering (Dave Johnson) - [1:02:30](https://youtu.be/CpRLwFKoOPY?t=3750)
* Discussion - [1:11:20](https://youtu.be/CpRLwFKoOPY?t=4280)

Delve into some specific PRs with these 3 installments of "Last Week in ManageIQ":

* [Speedups, Chargebacks, Toolbars, and more!](http://manageiq.org/blog/2016/08/last-week-in-miq-speedups-chargebacks/) - by [Jillian Tullo](https://github.com/jntullo) 
* [API refactor, Observables and more!](http://manageiq.org/blog/2016/09/last-week-in-manageiq-api-refactor-observables/) - by Happy [Martin Hradil](https://github.com/himdel)
* [Bootstrap Tree is Here](http://manageiq.org/blog/2016/09/last-week-in-manageiq-bootstrap-tree/) - by [Zita Nemeckova](https://github.com/ZitaNemeckova)

We'll be making the E-branch next week in preparation for the beta Euwe release in the upcoming sprint. Sprint 47 review will be on October 5, 2016 @ [7:30am PDT/10:30am EDT/14:30 GMT](http://www.timeanddate.com/worldclock/fixedtime.html?msg=ManageIQ+Sprint+47+review&iso=20161005T1430). You can import the [ManageIQ community calendar](https://calendar.google.com/calendar/embed?src=contact%40manageiq.org) to be notified about this and future Sprint reviews.

### [Slide deck](http://www.slideshare.net/ManageIQ/sprint-46-review):

<iframe src="//www.slideshare.net/slideshow/embed_code/key/cXbN9LqAOd1WR" width="510" height="420" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

### [Changelog](http://manageiq.org/community/changelog/):

#### Added

- Automate
  - Import Rake task `OVERWRITE` argument: Setting  `OVERWRITE=true` removes the target domain prior to import
  - New `extend_retires_on` method: Used by Automate methods to set a retirement date to specified number of days from today, or from a future date.
  - Service model updates
    - MiqAeServiceHardware
    - MiqAeServicePartition
    - MiqAeServiceVolume
- Platform
  - Centralized Administration
    - Server to server authentication
    - Invoke tasks on remote regions
    - Leverage new API client (WIP)
  - Chargeback
    - Support for generating chargeback for services
    - Will be used in Service UI for showing the cost of a service
  - Database Maintenance
    - Hourly reindex: High Churn Tables
    - Periodic full vacuum
    - Configure in appliance console
  - Notification Backend
    - Model for asynchronous notifications
    - Authentication token generation for web sockets
    - API for notification drawer
  - PostgreSQL High Availability
    - DB Cluster - Primary, Standbys
    - Uses [repmgr](http://www.repmgr.org/) (replication)
    - Failover
      - Primary to Standby
      - Appliance connects to new primary DB
  - Tenancy: Mapping Cloud Tenants to ManageIQ Tenants
    - Post refresh hook on OpenStack provider
    - Create provider base tenant under a root tenant
    - Cloud Tenant tree generated under provider base tenant
    - Create / Update / Delete
- Providers
  - Containers
    - Reports: Pods for images per project, Pods per node
    - Deployment wizard
  - Google Compute Engine: Provision Preemptible VMs
  - Hawkular  
    - JMS support (entities, topology)
    - Reports for Transactions (in App servers)
    - Support micro-lifecycle for Middleware-deployments
    - Middleware provider now uses restful routes
  - Microsoft Azure
    - Handle new events: Create Security Group, VM Capture
    - Provider-specific logging
  - Networking
    - Allow port ranges for Load Balancers
    - Load Balancer user interface
  - OpenStack
    - Collect inventory for cloud volume backups
    - Show topology for undercloud
    - Associate/Disassociate Floating IPs
  - Red Hat Enterprise Virtualization
    - Get Host OS version and type
    - Disk Management in VM Reconfigure
  - VMware: Filter Storage by Profile
  - vCloud
    - Collect status of vCloud Orchestration Stacks
    - Add Network Manager
    - Collect networking inventory
- REST API
  - Token manager supports for web sockets
  - Added querying for cockpit support
  - Added support for Bulk queries
  - Added support for UI notification drawer
  - API entrypoint returns details about the appliance via server\_info
  - Blueprint updates now supports removal of the Service Catalog or Service Dialog from a Blueprint
- Service Broker: Service UI (name change from Self Service UI)
  - Renamed due to expanding number of use cases
  - Adding in Arbitration Rules UI
- User Interface
  - Added mandatory Subscription field to Microsoft Azure Discovery screen
  - Added Notifications Drawer and Toast Notifications List
  - Added support for vSphere Distributed Switches
  - Added support to show child/parent relations of Orchestration Stacks
  - Added Middleware Messaging entities to topology chart
  
#### Changed
 
 - Automate: Description for Datastore Reset action now includes list of target domains
- Performance
  - Page rendering
    - Compute -&gt; Infrastructure -&gt; Virtual Machines: 9% faster, 32% fewer rows tested on 3k active vms and 3k archived vms
    - Services -&gt; My Services: 60% faster, 98% fewer queries, 32% fewer db rows returned
  - `Ownershipmixin`
    - Filtering now done in SQL
    - 99.5% faster (93.8s -&gt; 0.5s) testing
      - VMs / All VMs / VMs I Own
      - VMs / All VMs / VMs in My LDAP Group
- User Interface: Dynatree replaced with bootstrap-treeview