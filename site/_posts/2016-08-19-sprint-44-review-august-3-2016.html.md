---
title: Sprint 44 review - August 3, 2016
author: cybette
date: 2016-08-19 14:00:00 UTC
tags: sprints
comments: true
published: true
---

There is a ManageIQ Sprint review every 3 weeks, and everyone in the community is welcome to participate. To join our Sprint review meeting, please use this [Bluejeans link](https://bluejeans.com/5927041376/).

Sprint 44 is a normal 3 week sprint ending August 1, 2016. There were 345 pull requests consisting of a typical and good mix of enhancements and bugs. We're gaining some momentum with this being the second best sprint in terms of PRs merged. One of the highlights in the manageiq\_docs repo is the upstreaming of all the CloudForms documentation. Everyone can now contribute to the ManageIQ docs upstream, and the downstream docs will be built off of that.

Several nice surprises on the providers side: Google added support for metrics collection, which is a huge milestone in making Google Cloud a first class citizen in ManageIQ; a team of Nuage developers with their first merged PR adding inventory support and modeling for Nuage cloud networking; and XLAB has been working with us to add support for VMware vCloud provider authentication and inventory collection (including vApps). Many thanks to the contributing partners!

Quality Engineering joins the sprint demo for the first time. In addition, there are lots more interesting developments in the sprint, you can dive into the details with us in the [following video](https://www.youtube.com/watch?v=Fb9RiS3nj9c), which also includes a demo on C3 charts interactivity.

<iframe width="560" height="315" src="https://www.youtube.com/embed/Fb9RiS3nj9c" frameborder="0" allowfullscreen></iframe>

If you'd like to check out a particular section of the review meeting, here are the respective timestamps:

* Sprint Statistics (Oleg Barenboim) - 1:04
* Community Update (Carol Chen) - 4:55
* Providers (Greg Blomquist) - 6:58
* User Interface (Dan Clarizio) - 14:12
* Platform (Gregg Tanzillo) - 21:25
* REST API (Alberto Bellotti) - 28:04
* Automate (Greg McCullough) - 32:26
* Performance (Dennis Metzger) - 38:11
* Quality Engineering (Dave Johnson) - 39:30
* Discussion - 43:23

As mentioned in the sprint review, the "Last Week in ManageIQ" blog series is off to a good start. The two entries corresponding to Sprint 44, with additional looks at specific PRs merged during this period, are as follows:

* [Faster Reports, Cloud Networks, and more!](http://manageiq.org/blog/2016/07/last-week-in-manageiq-faster-reports-cloud-networks-and-more/) - by [Tim Wade](https://twitter.com/imtayadeway)
* [Saying Goodbye to rubyrep](http://manageiq.org/blog/2016/08/last-week-in-manageiq-saying-goodbye-to-rubyrep/) - by [Drew Bomhof](https://github.com/syncrou)

### [Slide deck](http://www.slideshare.net/ManageIQ/sprint-44-review):

<iframe src="//www.slideshare.net/slideshow/embed_code/key/KVtlIpuZIZyTMb" width="510" height="420" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> 

### [Changelog](http://manageiq.org/community/changelog/):

#### Added

* Automate
  - Simulation: RBAC filtering applied to Object Attributes
  - Service Provisioning: Exposed number_of_vms when building the provision request for a service
  - Service Dialogs: Support for “visible” flag for dynamic fields
  - Expose Compliance and ComplianceDetail models
  - New associations on VmOrTemplate and Host models:
    - `expose :compliances`
    - `expose :last_compliance`
  - New Service Models
    - Compliance: `expose :compliance_details`
    - ComplianceDetail: `expose :compliance`, `expose :miq_policy`
  - Generic Object: Service models created for GenericObject and GenericObjectDefinition
* Platform
  - PostgreSQL High Availability
    - Added [repmgr](http://repmgr.org/)  to support automatic failover
    - Maintain list of active standby database servers
    - Added [pg-dsn_parser](https://github.com/ManageIQ/pg-dsn_parser) for converting DSN to a hash
  - Tenancy: Added parent_id to CloudTenant as prerequisite for mapping OpenStack tenants to ManageIQ tenants
  - Watermark reports updated to be based on max of daily max value instead of max of average value
  - Nice values added to worker processes
* Providers
  - Google Compute Engine: Metrics
  - Hawkular
    - Operations: Add Deployment, Start/stop deployment
    - Performance reports for datasources
    - Collect more metrics for datasource
  - Kubernetes: Cross-linking with OpenStack instances
  - Microsoft Azure: Support floating IPs during provisioning
  - Nuage: Inventory of Managed Cloud Subnets
  - Red Hat Enterprise Virtualization: v4 API
  - VMware vSphere: Storage Profiles modeling and inventory
  - VMware vCloud: Initial PRs for modeling and inventory
* REST API
  - Support for arbitrary resource paths
  - Work started on [ManageIQ API Client](https://github.com/ManageIQ/manageiq-api-client)
  - Support for Arbitration Profiles
  - Support for Cloud Networks queries
  - Support for Arbitration Settings
  - Updated /api/users to support edits of user settings
* User Interface
  - Both UIs updated to latest PatternFly and Angular PatternFly
  - Self Service UI language selections separated from Operations UI
  - Internationalization
    - Virtual Columns
    - Toolbars
    - Removed string interpolation (for better localization)
    - Changed to use gettext’s pluralization
  - Ansible Tower Jobs moved to the Configuration tab (from Clouds/Stacks)
  - Interactivity added to C3 charts on C&U screens  
  
#### Changed

* Automate
  - Simulation: Updated defaults
    - Entry-point: `/System/Process/Request` (Previous value of “Automation”)
    - Execute Method: Enabled
  - Infrastructure Provision: Updated memory values for VM provisioning dialogs to 1, 2, 4, 8, 12, 16, 32 GB
* Performance: Reduced the time and memory required to schedule Capacity and Utilization data collection.
* Platform: Expression refactoring and cleanup with relative dates and times
* Providers: Hawkular
  - Upgrade of Hawkular gem to 2.3.0
  - Skip unreachable middleware providers when reporting
  - Add re-checking authentication status functionality/button
* User Interface
  - Converted to TreeBuilder - Snapshot, Policy, Policy RSOP, C&U Build Datastores and Clusters/Hosts, Automate Results
  - CodeMirror version updated (used for text/yaml editors)

#### Removed

* Platform
  - Removed rubyrep
  - Removed hourly checking of log growth and rotation if > 1gb
* User Interface: Explorer Presenter RJS removal