---
title: Sprint 49 review - November 16, 2016
author: cybette
date: 2016-11-18 22:18:11 UTC
tags: sprints
comments: true
published: true
---

Welcome to the Sprint 49 review recap. The [Euwe release candidate](/blog/2016/10/Announcing-Euwe-Release-Candidate/) has been running its course, waiting for the next release to take over soon. Stay tuned!

The theme of this sprint is bug fixing. Of the 354 pull requests merged to the main [ManageIQ repo](https://github.com/ManageIQ/manageiq), more than half were fixing and patching stuff. As we're in stabilization mode with the Euwe GA in sight, this is only natural. However we still managed 54 enhancement PRs, and backported 162 to Euwe branch. Combined with 118 PRs from integration_tests, and another 120 from Service UI, the website, and various providers etc., we amassed 592 PRs altogether from [the different repos](https://github.com/manageiq)!

Let's take a look at some of the things that were fixed:

* Chargeback: during the last sprint, we added the weekly/monthly rates for 'per time' types but missed the daily ones, now daily rates have been reinstated
* Central Admin: squashed a bug where the ServiceOrder was not created on the remote region and it prevented service template provisioning from working end to end; VM reconfigure is also fixed to have proper routing to remote regions
* Automate: key/pair attributes fixed to match Simulation for Automate scheduling work done in the previous sprint
* Git Automate: now repos without the domain directory can be supported; plus refresh cleanup on the contents and references where new branches and tags were not getting fetched
* UI: cleanup of Charting/Topology/Toolbar buttons, as many of these pieces were replaced
* UI: fixed regression from VM tree changes - a performance enhancement piece from last sprint by hiding VMs/instances from explorer trees by default, which caused some issues as the code was dependent on the tree selection of VMs
* I18N: getting the missing translations localized
* Hawkular: professional bug buster with 18 of the 19 PRs towards fixes, including 3 blockers
* QE: lots of bug fixing means keeping busy with lots of bug verifications

Nonetheless, there's always room for improvements, and here are some highlights:

* Amazon: moved Cloud manager refresh to new DTO (data transfer object) method thus increasing the saving efficiency
* RHEV: piggybacking on the work - targeted refresh when provisioning - from previous sprint, time taken for provisioning a new VM to a large environment reduced from 17 min to 1 min
* RHEV: added live migration of VM, and the ability to import VMs from VMware to RHEV (also an API enhancement)
* VMware vCloud: XLAB team implemented the feature where credentials for vCloud events can now be added in the UI instead of using the rails console, improving the user experience
* Performance: there's a shiny new manageiq-performance gem for automating and collecting of metrics with initial focus on UI performance; its emphasis is on being modular and configurable so as to unify the toolchain for everyone (QE, performance team, developers, support)

An in-depth presentation of the new performance gem, along with the rest of the Sprint review meeting is [here in the video](https://www.youtube.com/watch?v=Y4dU1fmRgX4).

<iframe width="560" height="315" src="https://www.youtube.com/embed/Y4dU1fmRgX4" frameborder="0" allowfullscreen></iframe>

For specific sections of the review meeting, here are the respective timestamps:

* Sprint Statistics (Oleg Barenboim) - [0:51](https://youtu.be/Y4dU1fmRgX4?t=51)
* Community Update (Carol Chen) - [3:50](https://youtu.be/Y4dU1fmRgX4?t=230)
* Classic UI (Dan Clarizio) - [8:54](https://youtu.be/Y4dU1fmRgX4?t=534)
* Service UI (Chris Kacerguis) - [12:24](https://youtu.be/Y4dU1fmRgX4?t=744)
* Providers (Adam Grare) - [13:23](https://youtu.be/Y4dU1fmRgX4?t=803)
* Automate (Greg McCullough) - [17:28](https://youtu.be/Y4dU1fmRgX4?t=1048)
* Platform (Gregg Tanzillo) - [22:00](https://youtu.be/Y4dU1fmRgX4?t=1320)
* API (Alberto Bellotti) - [25:54](https://youtu.be/Y4dU1fmRgX4?t=1554)
* Performance (Dennis Metzger) - [30:14](https://youtu.be/Y4dU1fmRgX4?t=1814)
* Quality Engineering (Dave Johnson) - [47:26](https://youtu.be/Y4dU1fmRgX4?t=2846)
* Discussion - [50:27](https://youtu.be/Y4dU1fmRgX4?t=3027)

Delve into some specific PRs with these 3 installments of “Last Week in ManageIQ”:

* [Euwe stabilization](/blog/2016/10/lwimiq-euwe-stabilization/) - by [Bronagh Sorota](https://github.com/bronaghs) 
* [Bugs and NPM](/blog/2016/11/last-week-in-manageiq-bugs-and-npm/) - by [Martin Hradil](https://github.com/himdel)
* [Azure provider is moved to gem](/blog/2016/11/last-week-in-manageiq-azure-provider-is-moved-to-gem/) - by [ZitaNemeckova](https://github.com/ZitaNemeckova)

We're planning to have ManageIQ presence at a couple of events early next year, [DevConf.CZ](https://devconf.cz/) Jan 27-29 in Brno and [FOSDEM](https://fosdem.org/2017/) Feb 4-5 in Brussels. More details will be shared as they are confirmed.

The [voting](http://talk.manageiq.org/t/voting-on-name-of-f-release/1881) on the name for ManageIQ F-release is concluding as I write this. I hope you got your votes in! The "winner" will be announced shortly. Join us every 3 weeks in the ManageIQ Sprint review via [Bluejeans](https://bluejeans.com/5927041376/). Sprint 50 review will be on December 7, 2016 @ [7:30 PST/10:30 EST/15:30 GMT](http://www.timeanddate.com/worldclock/fixedtime.html?msg=ManageIQ+Sprint+50+review&iso=20161207T1530). You can import the [ManageIQ community calendar](https://calendar.google.com/calendar/embed?src=contact%40manageiq.org) to be notified about this and future Sprint reviews.

### [Slide deck](http://www.slideshare.net/ManageIQ/sprint-49-review)

<iframe src="//www.slideshare.net/slideshow/embed_code/key/GpmZdNJvfTmxtq" width="510" height="420" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

### [Changelog](https://github.com/ManageIQ/manageiq/blob/master/CHANGELOG.md)

#### Added

- Automate
  - Git Support: Support automate model git repositories without domain directory
  - Notification: Add global and tenant notification audiences
  - Service Model
    - Expose ems_events to Vm service model
    - Expose a group's filters.
    - Expose authentication_key in EMS service model
  - Provisioning
    - Set zone when deliver a service template provision task
    - Create a request per region for VM reconfigure
  - Services
    - Expose service power state
- Platform
  - High Availabilty: Raise event when failover successful
  - Chargeback: Add daily to chargeback rate for 'per time' types
  - Replication: Add logging when the replication set is altered
  - Logging: Add configurable number of saved logfile rotations
- Providers
  - Containers UI: Label based Auto-Tagging UI
  - Middleware (Hawkular)
    - Add support to overwrite an existing deployment
  - Networks
    - Nuage: UI for Network elements
    - Add Network Topology button for the Load Balancer class
  - Red Hat Enterprise Virtualization Manager
    - Enable VM reconfigure disks for supported rhevm version
    - Migrate support
  - VMware vCloud: Event monitoring
- REST API
  - Add IDs to Dialog Content
  - Actions support
  - Conditions support
  - Support for /api/requests approve and deny actions
  - Service Dialogs Copy API
  - MiqPolicies support
  - Service Request Delete
- SmartState: Support analysis of VMs residing on NFS41 datastores
  
#### Changed
 
- Performance
  - For resource_pools only bring back usable Resource Pools
  - Prune VM Tree folders first, so nodes can be properly prune and tree nodes can then be collapsed
  - Remove full refresh from provisioning flow
- Platform
  - Chargeback: Simplify Chargeback rates editor to only show relevant parameters
- Providers
  - RHEVM: Make C&U Metrics Database a mandatory field for Validation

#### Fixed

Notable fixes include:

- Automate
  - Services: Set default value of param visible to true for all field types
  - Git Domains for Automate: Ensure a response when git repository does not contain domains
- Platform
  - Increase worker memory thresholds to avoid frequent restarts.
  - Perform RBAC user filter check on requested ids before allowing request
- Providers
  - Fix targeted refresh of a VM without its host clearing all folder relationships
  - OpenStack Cloud
    - Add logs for network and subnet CRUD
    - UI: Add missing toolbar options for cloud tenants and host aggregates
    - UI: Add missing add/remove hosts actions to host aggregate UI
  - RHVM: Pass storage domains collection in disks RHV api request
- User Interface
  - Internationalization: i18n support in pdf reports
  - Fix custom logo issue in header
  - Routing Error for reload on infrastructure networking
  - Add Advanced Search to Containers explorer
  - Fall-"back" to VMRC desktop client if no NPAPI plugin is available
  - Displays a more informative message on datasource deletion.
  - Display Advanced Search in Configuration management
  - Allow the retirement date to be cleared
  - Default Filters can be saved or reset

