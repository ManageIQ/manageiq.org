---
title: Sprint 50 review - December 7, 2016
author: cybette
date: 2016-12-09 20:08:15 UTC
tags: sprints
comments: true
published: true
---

Hello and welcome to the final sprint review of 2016! During this sprint, we released [RC2 for Euwe](/blog/2016/11/Announcing-Euwe-Release-Candidate-2/) as well as [Darga-5](/blog/2016/12/Announcing-Darga-5/). We are on track for Euwe GA in the upcoming week, after which we'll look forward to fleshing out the [Fine release](/blog/2016/11/announce_f_name/) in 2017.

With US Thanksgiving holidays in the middle of the 3-week sprint, Sprint 50 was a slightly lean turkey sandwich with plenty of bugs squashed in between. The emphasis was on removing blockers for the Euwe release. While it's a smaller number compared to previous sprints, the ManageIQ team still churned out a respectable 311 pull requests in the [main repo](https://github.com/ManageIQ/manageiq) and 470 PRs [overall](https://github.com/manageiq). Percentage of enhancements is tiny as expected, mainly overwhelmed by bug fixes which accounted for 52% the PRs.

Ad hoc metrics have been added for Container Providers, as well as custom attributes table. Together with the containers team, the middleware/Hawkular team implemented a Data Warehouse management, which will pave the way for sharing metrics across different providers. In Automate, you can now use provider name in addition to template name to uniquely identify a template for AnsibleTower, which solves the ambiguity problem when multiple AnsibleTower providers have similarly named job templates.

With bug stomping in full force, the QE team has seen a reduction in total open issues, especially for high-impact ones (20% reduction). There's also a prototype of a defect weighting metric to help with the prioritization of bugs. On the Platform side, upgrading to CentOS 7.3 introduced some serious issues with external authentication, which are now fixed.

Aside from fixing bugs, technical debt and refactoring, there are a couple of forward-looking Fine enhancements. Versioning for API is bumped to 2.4.0-pre, and new designs in the Service UI are being worked on for the Fine release. More new Service UI features include viewing information about a VM (which has been a big request) and support for pagination (resulting in faster page loads).

Check out some of the UI enhancements with eye candy (screenshots) in the [slides](http://www.slideshare.net/ManageIQ/sprint-50-review). There's a demo showing how Storage is now categorized by type (block, object, file share etc.) in the [Sprint 50 review meeting video](https://www.youtube.com/watch?v=9_dBnak7vDY).

<iframe width="560" height="315" src="https://www.youtube.com/embed/9_dBnak7vDY" frameborder="0" allowfullscreen></iframe>

Here's the meeting order and corresponding timestamps for each topic:

* Sprint Statistics (Oleg Barenboim) -[0:53](https://youtu.be/9_dBnak7vDY?t=53)
* Community Update (Carol Chen) -[4:11](https://youtu.be/9_dBnak7vDY?t=251)
* Classic UI (Harpreet Kataria) -[10:02](https://youtu.be/9_dBnak7vDY?t=602)
* Service UI (Chris Kacerguis) -[14:38](https://youtu.be/9_dBnak7vDY?t=878)
* Providers (Greg Blomquist) -[15:44](https://youtu.be/9_dBnak7vDY?t=944)
* Automate (Greg McCullough) -[18:43](https://youtu.be/9_dBnak7vDY?t=1123)
* Platform (Gregg Tanzillo) -[25:20](https://youtu.be/9_dBnak7vDY?t=1520)
* API (Alberto Bellotti) -[27:53](https://youtu.be/9_dBnak7vDY?t=1673)
* Storage (Rich Oliveri) -[29:50](https://youtu.be/9_dBnak7vDY?t=1790)
* Quality Engineering (Dave Johnson) -[35:30](https://youtu.be/9_dBnak7vDY?t=2130)
* Discussion -[38:02](https://youtu.be/9_dBnak7vDY?t=2282)

Get a closer look at some of the work done this sprint with the following “Last Week in ManageIQ” posts:

* [Euwe stabilization continues](/blog/2016/11/last-week-in-manageiq-euwe_stabilization_continues/) - by [Laura Galis](https://github.com/lgalis) 
* [Fixing bugs and fixing bugs](/blog/2016/11/fixing-bugs/) - by [Dávid Halász](https://github.com/skateman)
* [Make Hawkular tenant changeable](/blog/2016/12/last-week-in-manageiq-make-hawkular-tenant-changeable/) - by [Joe VLcek](https://github.com/jvlcek)

Next sprint will be extended by one week due to the Christmas/New Year holidays. So Sprint 51 review will be on January 4, 2017 @ [7:30 PST/10:30 EST/15:30 GMT](http://www.timeanddate.com/worldclock/fixedtime.html?msg=ManageIQ+Sprint+51+review&iso=20170104T1530). Join in the ManageIQ Sprint review via [Bluejeans](https://bluejeans.com/5927041376/). You can import the [ManageIQ community calendar](https://calendar.google.com/calendar/embed?src=contact%40manageiq.org) to be notified about this and future Sprint reviews. See you in 2017!

### [Slide deck](http://www.slideshare.net/ManageIQ/sprint-50-review)

<iframe src="//www.slideshare.net/slideshow/embed_code/key/ylE3b3jhVxwoep" width="510" height="420" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

### [Changelog](https://github.com/ManageIQ/manageiq/blob/master/CHANGELOG.md)

#### Added

- Automate
  - Retirement: Generic service retirement option ([#12619](https://github.com/ManageIQ/manageiq/pull/12619))
  - Service Dialog: Add dynamic dropdown list support for orchestration service dialog ([#12693](https://github.com/ManageIQ/manageiq/pull/12693))
  - Service Model
    - Expose custom_attribute methods to ext_management_system service model. ([#12602](https://github.com/ManageIQ/manageiq/pull/12602))
    - Move snapshot code to Vm in service model. ([#12726](https://github.com/ManageIQ/manageiq/pull/12726))
    - RBAC support for Automate Service Models ([#12369](https://github.com/ManageIQ/manageiq/pull/12369))
    - Add ae_service for google auth_key_pair ([#12973](https://github.com/ManageIQ/manageiq/pull/12973))
    - Expose miq_groups ([#12294](https://github.com/ManageIQ/manageiq/pull/12294))
  - Notifications: Send Notification when retirement starts for Services and VMs ([#12796](https://github.com/ManageIQ/manageiq/pull/12796))

- Platform
  - Reporting: Round of metric values to precision 2 in chargeback reports ([#12629](https://github.com/ManageIQ/manageiq/pull/12629))
  - Allow network manager features for tenant administrator ([#12383](https://github.com/ManageIQ/manageiq/pull/12383))
  - Use settings.yaml for purging records ([#12552](https://github.com/ManageIQ/manageiq/pull/12552))

- Providers
  - Middleware: Add link to Server Group in the summary page of a server ([#12815](https://github.com/ManageIQ/manageiq/pull/12815))
  - Add root password validation regex for Azure dialog ([#12967](https://github.com/ManageIQ/manageiq/pull/12967))

- REST API
  - Add option to hide resources ([#12694](https://github.com/ManageIQ/manageiq/pull/12694))
  - Allow adding custom attributes with sections ([#12913](https://github.com/ManageIQ/manageiq/pull/12913))

- User Interface (Classic)
  - Add Replication excluded tables to the Settings Replication tab ([#12604](https://github.com/ManageIQ/manageiq/pull/12604))
  - Orchestration: Support hash values in dropdown orchestration dialog fields ([#12570](https://github.com/ManageIQ/manageiq/pull/12570))
  - Containers
    - Provider policies ([#11002](https://github.com/ManageIQ/manageiq/pull/11002))
    - Custom attributes table on Container Node ([#12832](https://github.com/ManageIQ/manageiq/pull/12832))
  - OpenStack: Add human readable names of private and public openstack cloud networks ([#12855](https://github.com/ManageIQ/manageiq/pull/12855))
  - Add settings key to disable console proxy ([#12675](https://github.com/ManageIQ/manageiq/pull/12675))
  - Separate Storage Managers By Type ([#12399](https://github.com/ManageIQ/manageiq/pull/12399))
  - Launch an URL returned by an automate button ([#10118](https://github.com/ManageIQ/manageiq/pull/10118))
  
#### Changed
 
- Performance
  - DTO refresh optimization for saves ([#12679](https://github.com/ManageIQ/manageiq/pull/12679))
  - Purge remaining records using single query ([#12560](https://github.com/ManageIQ/manageiq/pull/12560))
  - Use `Settings` API over `VMDB::Config.new` for speed improvements for `VmOrTemplate::RightSizing`  ([#12751](https://github.com/ManageIQ/manageiq/pull/12751))
  - Don't queue ntp reload on newly created zones ([#12974](https://github.com/ManageIQ/manageiq/pull/12974))

- Platform
  - LDAP: Allow apostrophes in email address ([#12729](https://github.com/ManageIQ/manageiq/pull/12729))
  - Increase the web socket worker's pool size  ([#12800](https://github.com/ManageIQ/manageiq/pull/12800))
  - Drop currency column when editing chargeback rates ([#12834](https://github.com/ManageIQ/manageiq/pull/12834))

- REST API: Updating API versioning to 2.4.0-pre ([#12890](https://github.com/ManageIQ/manageiq/pull/12890))

- Service UI
  - Hid  power status and buttons in the SUI Services list view until more performant [manageiq-ui-service #368](https://github.com/ManageIQ/manageiq-ui-service/pull/368)
  - Add power status and buttons to the Service detail page [ManageIQ/manageiq-ui-service #330](https://github.com/ManageIQ/manageiq-ui-service/pull/330)

- SmartState analysis
  - Containers deletion: Separate the pod deletion and skip it if no pod was created before ([#12750](https://github.com/ManageIQ/manageiq/pull/12750))

- User Interface
  - Reports: Better names for policy event sample reports  ([#12934](https://github.com/ManageIQ/manageiq/pull/12934))

#### Fixed

Notable fixes include:

- Automate
  - Automate Provisioned Notifications - Use Automate notifications instead of event notifications ([#12424](https://github.com/ManageIQ/manageiq/pull/12424))
  - Provisioning
    - Fix auto-placement for hosts without a datastore that can hold the new VM ([#12931](https://github.com/ManageIQ/manageiq/pull/12931))
    - Support provider name & template name to uniquely identify a template ([#11669](https://github.com/ManageIQ/manageiq/pull/11669))
  - Git Domains: Delete the repo directory for Git based domains ([#12539](https://github.com/ManageIQ/manageiq/pull/12539))

- Platform
  - Authentication
    - Support a separate auth URL for external authentication ([#12697](https://github.com/ManageIQ/manageiq/pull/12697))
    - Remove the FQDN from group names for ext authentication ([#12752](https://github.com/ManageIQ/manageiq/pull/12752))
  - Fix Audit Log to record settings/values when creating new user ([#12786](https://github.com/ManageIQ/manageiq/pull/12786))
  - Fix issue where local settings files were ignoredFix issue where local settings files were ignored ([#12821](https://github.com/ManageIQ/manageiq/pull/12821))

- Providers
  - RHVM
    - Require a description when creating Snapshot ([#12637](https://github.com/ManageIQ/manageiq/pull/12637))
    - Update cluster when modified ([#12927](https://github.com/ManageIQ/manageiq/pull/12927))
  - Openstack: Remove port_security_enabled from attributes passed to network create ([#12736](https://github.com/ManageIQ/manageiq/pull/12736))
  - Fetch disk info when a vm removed ([#12788](https://github.com/ManageIQ/manageiq/pull/12788))

- User Interface
  - Prevent service dialog refreshing every time a dropdown item is selected ([#12718](https://github.com/ManageIQ/manageiq/pull/12718))
  - Fix angular controller for Network Router Network Router ([#12707](https://github.com/ManageIQ/manageiq/pull/12707)) and Cloud Subnet ([#12706](https://github.com/ManageIQ/manageiq/pull/12706))
  - Ansible: Add configuration_scripts to the list of trees with advanced search ([#12704](https://github.com/ManageIQ/manageiq/pull/12704))
  - RBAC: Add Storage Product Features for Adding Roles ([#12701](https://github.com/ManageIQ/manageiq/pull/12701))
  - Remove confirmation when opening the HTML5 vnc/spice console. ([#12673](https://github.com/ManageIQ/manageiq/pull/12673))
  - Set categories correctly for policy timelines ([#12664](https://github.com/ManageIQ/manageiq/pull/12664))
  - Display name of a chosen filter in Infrastructure Providers ([#12307](https://github.com/ManageIQ/manageiq/pull/12307))
  - Only enable git import submit button when a branch or tag is selected ([#12753](https://github.com/ManageIQ/manageiq/pull/12753))
  - Send notifications only when user is authorized to see the referenced object ([#12771](https://github.com/ManageIQ/manageiq/pull/12771))
  - Add tags to objects in list view in Cloud Tenant ([#12833](https://github.com/ManageIQ/manageiq/pull/12833))
  - Set start date explicitly only when changing schedule interval ([#12816](https://github.com/ManageIQ/manageiq/pull/12816))
  - Display parent tenant only when it is allowed by RBAC ([#12848](https://github.com/ManageIQ/manageiq/pull/12848))
  - Fix position of chart menu in C&U when clicking close to right edge ([#12922](https://github.com/ManageIQ/manageiq/pull/12922))
  - Fix missing Smart State Analysis button on Cloud Instances list view ([#12559](https://github.com/ManageIQ/manageiq/pull/12559))

