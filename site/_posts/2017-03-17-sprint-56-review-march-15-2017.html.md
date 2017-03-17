---
title: Sprint 56 review - March 15, 2017
author: cybette
date: 2017-03-17
tags: sprints
comments: true
published: true
---

Greetings from [FOSSASIA 2017](http://2017.fossasia.org/) in Singapore! It's exciting to see the growth of the open source movement in Asia and I hope to share more about ManageIQ with everyone I meet here. However, since I'm bustling about at this activity-filled event, I'll have to make this post shorter than usual.

In Sprint 56 we merged 151 pull requests in the [main repo](https://github.com/manageiq/manageiq), of which 64 are enhancements. The repo with the second highest number of PRs is [manageiq-ui-classic](https://github.com/manageiq/manageiq-ui-classic) with 138. When we look at the big picture across [all ManageIQ repos](https://github.com/manageiq), there's a steady increase in the total number of PRs sprint-on-sprint. Previously we were getting these kinds of numbers for 3-week Sprints, and now in 2 weeks!

![PRs Merged per Sprint](/assets/images/blog/Sprint 56_total_PRs_merged_history_graph.png)

Now that you have the Sprint statistics, I'll leave you with the Sprint [video](https://www.youtube.com/watch?v=NnQs9Mbw3DM), [slides](https://www.slideshare.net/ManageIQ/sprint-56), and [LWIMIQ posts](http://manageiq.org/blog/tags/LWIMIQ/) to appreciate the work that went in and the rewards reaped over the past 2 weeks. Enjoy!

<iframe width="560" height="315" src="https://www.youtube.com/embed/NnQs9Mbw3DM" frameborder="0" allowfullscreen></iframe>

<iframe src="//www.slideshare.net/slideshow/embed_code/key/dwttWsIjCqd85g" width="510" height="420" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

* [Deletions and Dragons](/blog/2017/03/deletions-and-dragons/) - by [Drew Uhlmann](https://github.com/d-m-u) 
* [March-ing ahead with the embedded Ansible integration](/blog/2017/03/marching-ahead-embedded-ansible/) - by [Laura Galis](https://github.com/lgalis)

Sprint 57 review will be on March 29, 2017 @ [7:30 PST/10:30 EST/14:30 GMT](https://www.timeanddate.com/worldclock/fixedtime.html?msg=ManageIQ+Sprint+57+review&iso=20170329T1430) (note summer time in parts of the world), in the usual [Bluejeans channel](https://bluejeans.com/5927041376/). So see you then!

### [Changelog](https://github.com/ManageIQ/manageiq/blob/master/CHANGELOG.md)

#### Added

- Automate
  - Alerts: Pass metadata from an EmsEvent to an alert [(#14136)](https://github.com/ManageIQ/manageiq/pull/14136)
  - Ansible Tower
    - Require EmbeddedAnsible playbook to create playbook service [(#14226)](https://github.com/ManageIQ/manageiq/pull/14226)
    - Add relationships between Ansible job and its playbook [(#14144)](https://github.com/ManageIQ/manageiq/pull/14144)
    - Associate job with credentials [(#14113)](https://github.com/ManageIQ/manageiq/pull/14113)
    - Save newly created dialog_id in options [(#14254)](https://github.com/ManageIQ/manageiq/pull/14254)
    - Collect more attributes for Ansible Tower job [(#14076)](https://github.com/ManageIQ/manageiq/pull/14076)
  - Orchestration
    - Add Picture to Orchestration Template [(#14201)](https://github.com/ManageIQ/manageiq/pull/14201)
  - Service Model
    - Add ae service model for S3 CloudObjectStoreContainer [(#14164)](https://github.com/ManageIQ/manageiq/pull/14164)
    - Add ae service model for S3 CloudObjectStoreObject [(#14189)](https://github.com/ManageIQ/manageiq/pull/14189)
  - Services
    - Add orchestration_stacks to ServiceAnsiblePlaybook [(#14248)](https://github.com/ManageIQ/manageiq/pull/14248)
    - Update catalog item without config_options [(#14147)](https://github.com/ManageIQ/manageiq/pull/14147)
    - Set the initiator from the workflow/request [(#14070)](https://github.com/ManageIQ/manageiq/pull/14070)

- Platform
  - Add remote servers to rake evm:status_full [(#14107)](https://github.com/ManageIQ/manageiq/pull/14107)
  - Ansible Tower
    - Move embedded ansible worker thread up to start_runner [(#14256)](https://github.com/ManageIQ/manageiq/pull/14256)
    - Run #authentication_check after the embedded ansible service starts [(#14235)](https://github.com/ManageIQ/manageiq/pull/14235)
    - Rely on 10 minute starting_timeout instead of a heartbeating thread [(#14053)](https://github.com/ManageIQ/manageiq/pull/14053)
  - Authentication: Ensure user name is set even when common LDAP attributes are missing. [(#14142)](https://github.com/ManageIQ/manageiq/pull/14142)
  - Chargeback: Add tenant scoping for resources of performance reports in RBAC [(#14095)](https://github.com/ManageIQ/manageiq/pull/14095)
  - RBAC: Add RBAC for rss feeds [(#14041)](https://github.com/ManageIQ/manageiq/pull/14041)
  - Reporting: Add archived Container Groups [(#13810)](https://github.com/ManageIQ/manageiq/pull/13810)

- Providers
  - Create a CustomAttribute for VmOrTemplate labels. [(#14202)](https://github.com/ManageIQ/manageiq/pull/14202)
  - Add `has_many` association for `physical_servers` [(#14086)](https://github.com/ManageIQ/manageiq/pull/14086)
  - Ansible Tower
    - Refresh to pick up scm options for Tower Project [(#14220)](https://github.com/ManageIQ/manageiq/pull/14220)
    - Refresh to pick up extra attributes of Ansible Credentials [(#14106)](https://github.com/ManageIQ/manageiq/pull/14106)
    - Adding require_nested for missing ansible objects [(#14278)](https://github.com/ManageIQ/manageiq/pull/14278)
    - Add EmbeddedAnsible workers to WorkerManagement [(#14234)](https://github.com/ManageIQ/manageiq/pull/14234)
  - Cloud Providers
    - Allow cloud volume to provide a list of volumes for attach [(#14058)](https://github.com/ManageIQ/manageiq/pull/14058)
    - Add relationship between VM and ResourceGroup. [(#14000)](https://github.com/ManageIQ/manageiq/pull/14000)
    - Support operation `create` on CloudObjectStoreContainer [(#14269)](https://github.com/ManageIQ/manageiq/pull/14269)
  - Middleware: Be able to use tls when connecting to Hawkular [(#14054)](https://github.com/ManageIQ/manageiq/pull/14054)
  - Pluggable: Ems event groups - allow provider settings (deeper_merge edition) [(#14177)](https://github.com/ManageIQ/manageiq/pull/14177)
  - Red Hat Virtualization Manager
    - Always pass the URL path to the oVirt SDK [(#14159)](https://github.com/ManageIQ/manageiq/pull/14159)
    - Set 'https' as the default protocol when using oVirt SDK [(#14157)](https://github.com/ManageIQ/manageiq/pull/14157)

- REST API
  - Add Alert Definitions (MiqAlert) REST API support [(#13967)](https://github.com/ManageIQ/manageiq/pull/13967)
  - Enhance service edit to accept attribute references  [(#14124)](https://github.com/ManageIQ/manageiq/pull/14124)
  - Delete service templates via POST [(#14112)](https://github.com/ManageIQ/manageiq/pull/14112)
  - Delete services via POST [(#14111)](https://github.com/ManageIQ/manageiq/pull/14111)
  - Delete templates via POST [(#14110)](https://github.com/ManageIQ/manageiq/pull/14110)
  - Exposing regions as a primary collection /api/regions [(#14109)](https://github.com/ManageIQ/manageiq/pull/14109)
  - Add authentications sub collection to ConfigurationScriptPayload  [(#14002)](https://github.com/ManageIQ/manageiq/pull/14002)
  - Improve error handling on destroy action [(#14098)](https://github.com/ManageIQ/manageiq/pull/14098)

- User Interface (Classic)
  - Changes for Embedded Ansible models [(#14199)](https://github.com/ManageIQ/manageiq/pull/14199)
  - Add missing fields to Middleware views [(#14115)](https://github.com/ManageIQ/manageiq/pull/14115)

#### Changed

- Automate
  - Switched to the latest version of `ansible_tower_client` gem [(#14117)](https://github.com/ManageIQ/manageiq/pull/14117)

- Performance
  - Speed up widget generation [(#14224)](https://github.com/ManageIQ/manageiq/pull/14224)
  - Fix ordering by VMs in NetworkManagers list [(#14092)](https://github.com/ManageIQ/manageiq/pull/14092)

- Platform
  - Allow regex for MiqExpression::Field which contains numbers in associations [(#14229)](https://github.com/ManageIQ/manageiq/pull/14229)
  - Move the call to reload ntp settings to the server only [(#14208)](https://github.com/ManageIQ/manageiq/pull/14208)
  - Ansible Tower: Use http_port extra variables instead of nginx ones [(#14204)](https://github.com/ManageIQ/manageiq/pull/14204)
  - Fix ordering by VMs in NetworkManagers list [(#14092)](https://github.com/ManageIQ/manageiq/pull/14092)
  - Configure apache balancer with up to 10 members at startup [(#14007)](https://github.com/ManageIQ/manageiq/pull/14007)

- Providers
  - Ansible event catcher - mark event_monitor_runnning when there are no events at startup [(#13903)](https://github.com/ManageIQ/manageiq/pull/13903)
  - Virtual Infrastructure: Deprecate callers to Address in Host [(#14138)](https://github.com/ManageIQ/manageiq/pull/14138)
  - Set timeout for inventory refresh calls [(#14245)](https://github.com/ManageIQ/manageiq/pull/14245)
  - OpenStack
    - Add openstack cloud tenant events [(#14052)](https://github.com/ManageIQ/manageiq/pull/14052)
    - Set the raw power state when starting Openstack instance [(#14122)](https://github.com/ManageIQ/manageiq/pull/14122)

#### Fixed

- Automate
  - Fix for Service Dialog not saving default value <None> for drop down or radio button [(#14240)](https://github.com/ManageIQ/manageiq/pull/14240)
  - Avoid calling $evm.backtrace over DRb to prevent DRb-level mutex locks [(#14239)](https://github.com/ManageIQ/manageiq/pull/14239)

- Platform
  - Do not truncate(255) message attribute in miq_tasks table [(#14105)](https://github.com/ManageIQ/manageiq/pull/14105)
  - Fix "Multiple Parents Found" issue when moving a relationship. [(#14060)](https://github.com/ManageIQ/manageiq/pull/14060)

- Providers
  - Microsoft Sesrvice Control Virtualization Manager: - Enable VM reset functionality [(#14123)](https://github.com/ManageIQ/manageiq/pull/14123)
  - Red Hat Virtualization Manager: Set timeout for inventory refresh calls [(#14245)](https://github.com/ManageIQ/manageiq/pull/14245)

- User Interface
  - Added missing second level menu keys for Storage menu [(#14145)](https://github.com/ManageIQ/manageiq/pull/14145)

