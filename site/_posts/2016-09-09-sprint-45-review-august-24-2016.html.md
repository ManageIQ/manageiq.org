---
title: Sprint 45 review - August 24, 2016
author: cybette
date: 2016-09-09 13:14:06 UTC
tags: sprints
comments: true
published: true
---

There is a ManageIQ Sprint review every 3 weeks, and everyone in the community is welcome to participate. To join our Sprint review meeting, please use this [Bluejeans link](https://bluejeans.com/5927041376/).

During Sprint 45, 424 PRs were merged, which is more than the previous couple of sprints. There is more focus on enhancements in this sprint and less on stability. For Service Broker that we started work on [2 sprints ago](http://manageiq.org/blog/2016/07/sprint-43-review-july-13-2016/), the Service Designer Blueprint API is 90% done, and you can see a short demo for the Arbitration profiles (collection of pre-defined settings).

On the UI front, toolbars have been completely moved over to Angular, and more components will receive Angular support. Under the hood, Ruby has been upgraded from 2.2.5 to 2.3.1. In the Automate realm, the messsaging for Provisioning has been updated to include a lot more helpful information especially for users. There's also a demo of the added Git Automate support.

As usual, there's a lot of work done on the various providers, but the common thread amongst them in this sprint is that each provider _"had a lot of bug fixes"_. Watch [the video](https://www.youtube.com/watch?v=yt_dU9mb0K4) to enjoy a laugh, as well as to see the demo on vCloud support for VMware.

To round up the sprint, we now have a Vagrant format of the ManageIQ appliance. It is not yet available on the website, but you can download it directly from [releases.manageiq.org](http://releases.manageiq.org/).

<iframe width="560" height="315" src="https://www.youtube.com/embed/yt_dU9mb0K4" frameborder="0" allowfullscreen></iframe>

Here's the order and timestamps of the different topics during the sprint review meeting (Providers switched around with Service Broker due to audio issues):

* Sprint Statistics (Oleg Barenboim) - 0:42
* Service Broker (Chris Kacerguis) - 3:32
* Providers (Greg Blomquist) - 7:22
* User Interface (Dan Clarizio) - 20:43
* Platform (Gregg Tanzillo) - 28:37
* REST API (Alberto Bellotti) - 35:52
* Automate (Greg McCullough) - 39:20
* SmartState (Rich Oliveri) - 49:54
* Performance (Dennis Metzger) - 51:12
* Quality Engineering (Dave Johnson) - 52:04
* Discussion - 54:33

[Darga 3](http://manageiq.org/blog/2016/08/Announcing-Darga-3/) was released on August 22, containing more bug fixes, UI tweaks, and stabilization. A fix for vulnerability [CVE-2016-5383](https://access.redhat.com/security/cve/cve-2016-5383) has also been implemented.

Get a closer look at some of the work done this sprint with the following "Last Week in ManageIQ" posts:

* [VMware catalog parsing, MiqExpression refinement, and more!](http://manageiq.org/blog/2016/08/last-week-in-manageiq/) - by [Chris Arcand](https://twitter.com/chrisarcand)
* [About modal, gettext improvements, refactoring and more!](http://manageiq.org/blog/2016/08/last-week-in-manageiq-about-modal-gettext/) - by [Dávid Halász](https://twitter.com/halaszdavid)
* [The Azure, nice errors, and gems](http://manageiq.org/blog/2016/08/last-week-in-manageiq-the-azure-nice-errors-and-gems/) - by [Julian Cheal](http://juliancheal.co.uk/)

### [Slide deck](http://www.slideshare.net/ManageIQ/sprint-45-review):

<iframe src="//www.slideshare.net/slideshow/embed_code/key/vqWpannOw1JKjT" width="510" height="420" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

### [Changelog](http://manageiq.org/community/changelog/):

#### Added

- Automate
  - Enhanced messaging for provisioning: Displayed elements
    - ManageIQ Server name
    - Name of VM/Service being provisioned
    - Current Automate state machine step
    - Status message
    - Provision Task Message
    - Retry count (when applicable)
  - New method `taggable?` to programmatically determine if a Service Model class or instance is taggable.
  - Generic Objects: Model updates
    - Associations
    - Tagging
    - Service Methods: `add_to_service / remove_from_service`
  - Git Automate support
    - Branch/Tag support
    - Contents are locked and can be copied to other domains for editing
    - Editable properties
      - Enabled/Disabled
      - Priority
      - Removal of Domain
    - Dedicated Server Role to store the repository
- Platform
  - PostgreSQL High Availability
    - Primary/Standby DB config in Appliance Console
    - Database-only appliance config in Appliance Console
    - Failover Monitor
  - Tenancy
    - Groundwork in preparation for supporting multiple entitlements
    - ApplicationHelper#role_allows and User#role_allows? combined and moved to RBAC
    - Post refresh hook to queue mapping of Cloud Tenants
  - Database maintenance scripts added to appliance
- Providers
  - Containers: Models for container deployments
  - Google Compute Engine
    - Preemptible Instances
    - Retirement support
  - Hawkular    
    - Alerts
       - Link miq alerts and hawkular events on the provider
       - Convert ManageIQ alerts/profiles to hawkular group triggers/members of group triggers
       - Sync the provider when ManageIQ alerts and alert profiles are created/updated
   - Added entities: Domains and Server Groups including their visualization in topology
   - Datasource entity now has deletion operation
   - Support more event types for datasource and deployment
   - Cross linking to VMs added to topology
  - Microsoft Azure: Added memory and disk utilization metrics
  - OpenStack
    - Host Aggregates
    - Region Support
  - Red Hat Enterprise Virtualization: Snapshot support
  - VMware vSphere: Storage profiles
- REST API
  - Support for compressed ids in inbound requests
  - CRUD support for Arbitration Rules
- Service Broker
  - Service Designer: Blueprint API is 90% done, edit and publish are still in development
  - Arbitration Profiles
      - Collection of pre-defined settings
      - Work in conjunction with the Arbitration Engine
  - Rules Engine: API completed
- SmartState: Deployed new MiqDiskCache module for use with Microsoft Azure
    - Scan time reduced from &gt;20 minutes to &lt;5 minutes
    - Microsoft Azure backed read requests reduced from &gt;7000 requests to &lt;1000
- User Interface
  - I18n support for UI plugins
  - Arbitration Profiles management for Service Broker
  - Re-check Authentication button added to Provider list views
  - Provisioning button added to the Templates & Images list and summary screens
  - Subtype option added to Generic Catalog Items
  - About modal added to OPS UI
  
#### Changed

- Performance: Page rendering performance
  - Services -&gt; Workloads -&gt; All VMs page load time reduced from 93,770ms to 524ms (99%) with a test of 20,000 VMs
- Platform
  - Upgrade ruby 2.2.5 to 2.3.1
  - Configure Rails web server - Puma or Thin
    - Puma is still the default
    - Planning on adding additional servers

#### Fixes

Notable fixes include:
- Microsoft Azure: Fix proxy for template lookups
- VMware vSphere: Block duplicate events
- REST API
  - Hide internal Tenant Groups from /api/groups
  - Raise 403 Forbidden for deleting read-only groups
  - API Request logging