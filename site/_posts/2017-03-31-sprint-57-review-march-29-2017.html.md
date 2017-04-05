---
title: Sprint 57 review - March 29, 2017
author: cybette
date: 2017-03-31
tags: sprints
comments: true
published: true
---

Welcome to Sprint 57 recap. In this sprint we merged a total of 565 pull request [combined](https://github.com/manageiq), almost 10% more than [last sprint's 518](/blog/2017/03/sprint-56-review-march-15-2017/), and well ahead of what we used to achieve with 3-week sprints in 2016! The 180 PRs in the [main repo](https://github.com/ManageIQ/manageiq) is distributed in thirds between enhancements, bugs, and everything else. We are also growing in number of repos, from 103 repos 5 sprints ago, to 108 now. The new repos introduced this sprint are [amazon_ssa_support](https://github.com/ManageIQ/amazon_ssa_support) and [manageiq-ui-scaffold](https://github.com/ManageIQ/manageiq-ui-scaffold). More info on them will come as they get populated.

More repos are planned for extraction over the next couple of sprints, including SQL Schema, several Providers, and Automate Engine. Besides splitting repos in April, you can find ManageIQ in action at events in [Warsaw](https://osec.pl/barcamp/barcamp-kwiecien-2017), [Brno](https://openhousecz.redhat.com), [Amsterdam](https://www.meetup.com/ManageIQ-CloudForms-User-group-Netherlands/events/238409424/) and [Gothenburg](http://foss-north.se). Come by and say hi if you're in the vicinity!

We have been steadily moving towards the Fine release, with branching complete for [14 of the repos](https://github.com/ManageIQ/manageiq-release/blob/master/config/repos.yml). Work is ongoing for the soon-to-be-announced Fine Beta. As such, this is the last sprint to get the bulk of the Fine features in. To help make sense of it all, [Libor](https://github.com/lpichler) and [Dr. Drew](https://github.com/syncrou) have finely selected a number of [moves by Euwe](/blog/2017/03/yet-another-move-by-euwe/) and [Pontificatory Requestiveous](/blog/2017/03/pontificatory-requestiveous/). Make sure to keep up your weekly dose of [“Last Week in ManageIQ”](/blog/tags/LWIMIQ/).

Service UI added several “Behind the Scenes” features, such as the ability to restore snapshots to VMs, and RBAC to all tabs (except Service details). The framework for Reports viewer is in place and we will have the ability to view reports next sprint! Classic UI is front and center with a multitude of enhancements. These are best appreciated through the screenshot collection in the [Sprint 57 Slide deck](https://www.slideshare.net/ManageIQ/sprint-57), with the likes of the updated Ansible Service summary screen and new Filter options for Container Provider ad-hoc metrics. If that's not enough to satiate you, check out the demos of adding/editing/deleting Ansible [Repositories](https://youtu.be/0sXd-ium8w8?t=1074) and [Credentials](https://youtu.be/0sXd-ium8w8?t=1181).

Corresponding CRUD support for configuration script sources and authentications have been added to the API. There's now a unique identifier `href_slug` accessible as a virtual attribute for all resources. Automate methods that list dialog items can also use href_slug to uniquely identify an object. Extra vars being passed to Ansible Playbook can contain these partial hrefs. For Embedded Ansible, you will get a notification when the server starts (which might take a few minutes, so it's nice to be notified). Have a look at the [demo](https://youtu.be/0sXd-ium8w8?t=2120) which uses Ansible Playbook to add a VM to a Service.

Further enhancements include updating the inventory refresh process in Amazon provider to associate AWS tags to ManageIQ tags, which opens the door for using AWS tags in ManageIQ. On the RHEV side, the new oVirt SDK is taken into use. Provider-specific settings are moved from the core repo to the respective provider repos that have been already extracted. Appliance console now displays IPv6 details on summary screen, with a dialog for making IPv6 settings. QE is also in good shape with 80% of feature set for Ansible testing implemented (and the rest awaiting descoping confirmation).

As always, more in-depth details can be found in the [Sprint 57 review video](https://www.youtube.com/watch?v=0sXd-ium8w8) and you can jump to a specific section with the links below.

<iframe width="560" height="315" src="https://www.youtube.com/embed/0sXd-ium8w8" frameborder="0" allowfullscreen></iframe>

* Sprint Statistics (Oleg Barenboim) - [1:41](https://youtu.be/0sXd-ium8w8?t=101)
* Community Update (Carol Chen) - [5:31](https://youtu.be/0sXd-ium8w8?t=331)
* Classic UI (Harpreet Kataria) - [8:40](https://youtu.be/0sXd-ium8w8?t=520)
* Service UI (Chris Kacerguis) - [21:27](https://youtu.be/0sXd-ium8w8?t=1287)
* Providers (Greg Blomquist) - [22:58](https://youtu.be/0sXd-ium8w8?t=1378)
* Automate (Greg McCullough) - [26:59](https://youtu.be/0sXd-ium8w8?t=1619)
* Platform (Tim Wade) - [39:14](https://youtu.be/0sXd-ium8w8?t=2354)
* API (Alberto Bellotti) - [45:08](https://youtu.be/0sXd-ium8w8?t=2708)
* Quality Engineering (Dave Johnson) - [51:47](https://youtu.be/0sXd-ium8w8?t=3107)
* Discussion -[54:40](https://youtu.be/0sXd-ium8w8?t=3280)

The Sprint 58 review will be on April 12, 2017 @ [7:30 PST/10:30 EST/14:30 GMT](https://www.timeanddate.com/worldclock/fixedtime.html?msg=ManageIQ+Sprint+58+review&iso=20170412T1430). Join in the ManageIQ Sprint meeting via [Bluejeans](https://bluejeans.com/5927041376/) and import the [ManageIQ community calendar](https://calendar.google.com/calendar/embed?src=contact%40manageiq.org) to be notified about this and future Sprint reviews!

<iframe src="//www.slideshare.net/slideshow/embed_code/key/xLxY2t3rAbeJi6" width="510" height="420" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> 

### [Changelog](https://github.com/ManageIQ/manageiq/blob/master/CHANGELOG.md)

#### Added

- Automate
  - Expose attach/detach method for volume [(#14289)](https://github.com/ManageIQ/manageiq/pull/14289)
  - Allow passing options when adding a disk in automate. [(#14350)](https://github.com/ManageIQ/manageiq/pull/14350)
  - Services: Add a add_to_service method to Vm [(#14416)](https://github.com/ManageIQ/manageiq/pull/14416)

- Platform
  - Create initial tower objects when we start the worker [(#14283)](https://github.com/ManageIQ/manageiq/pull/14283)
  - Add embedded_ansible to the list of roles that need apache [(#14353)](https://github.com/ManageIQ/manageiq/pull/14353)
  - Introduces CloudTenancyMixin to fix RBAC for cloud_tenant based models [(#13535)](https://github.com/ManageIQ/manageiq/pull/13535)
  - Raise a notification when the embedded ansible server starts [(#14529)](https://github.com/ManageIQ/manageiq/pull/14529)

- Providers
  - Amazon
    - Namespace the mappable object types add Amazon VM and Image types. [(#14288)](https://github.com/ManageIQ/manageiq/pull/14288)
    - Map Amazon labels to tags [(#14436)](https://github.com/ManageIQ/manageiq/pull/14436)
  - Ansible
    - Prepare parameter hash before passing to Tower API credential CU [(#14483)](https://github.com/ManageIQ/manageiq/pull/14483)
    - Add manageiq to the extra_var before launching a job [(#14354)](https://github.com/ManageIQ/manageiq/pull/14354)
    - Use embedded tower default objects for ManageIQ [(#14467)](https://github.com/ManageIQ/manageiq/pull/14467)
    - Catalog item accepts remove_resources option [(#14328)](https://github.com/ManageIQ/manageiq/pull/14328)
    - Enable scm_credential type in refresh [(#14471)](https://github.com/ManageIQ/manageiq/pull/14471)
    - Add a concern for storing and accessing embedded ansible object ids [(#14377)](https://github.com/ManageIQ/manageiq/pull/14377)
    - Added Inventory to EmbeddedAnsible namespace [(#14282)](https://github.com/ManageIQ/manageiq/pull/14282)
    - Create/Update/Delete Ansible Tower Projects and Credentials via queue [(#14305)](https://github.com/ManageIQ/manageiq/pull/14305)
    - Add retire_now to Embedded Ansible job. [(#14479)](https://github.com/ManageIQ/manageiq/pull/14479)
    - Destroy Ansible Playbook job templates [(#14461)](https://github.com/ManageIQ/manageiq/pull/14461)
    - Add job_plays to job [(#14331)](https://github.com/ManageIQ/manageiq/pull/14331)
  - Cloud
    - Enable cloud_tenant based RBAC for additional models  [(#14036)](https://github.com/ManageIQ/manageiq/pull/14036)
    - Update Cloud Image View to Differentiate Between Snapshots and Non-Snapshots [(#12970)](https://github.com/ManageIQ/manageiq/pull/12970)
  - OpenStack
    - Add OpenStack excon settings [(#14172)](https://github.com/ManageIQ/manageiq/pull/14172)
    - Add OpenStack infra provider event blacklist [(#14369)](https://github.com/ManageIQ/manageiq/pull/14369)
  - Physical Infrastructure
    - Add physical infra refresh monitor [(#14424)](https://github.com/ManageIQ/manageiq/pull/14424)
    - Add physical server views to the product [(#14031)](https://github.com/ManageIQ/manageiq/pull/14031)
  - Red Hat Enterprise Virtualization
    - Use the new OvirtSDK for refresh [(#14398)](https://github.com/ManageIQ/manageiq/pull/14398)
    - Don't pass empty lists of certificates to the oVirt SDK [(#14160)](https://github.com/ManageIQ/manageiq/pull/14160)

- REST API
  - Add Alert Definitions (MiqAlert) bulk edits support [(#14397)](https://github.com/ManageIQ/manageiq/pull/14397)
  - Add_resource to Service api [(#14409)](https://github.com/ManageIQ/manageiq/pull/14409)
  - API Authentication create [(#14217)](https://github.com/ManageIQ/manageiq/pull/14217)
  - Added support for API slugs [(#14344)](https://github.com/ManageIQ/manageiq/pull/14344)
  - Enable put/patch on configuration script sources and authentications [(#14381)](https://github.com/ManageIQ/manageiq/pull/14381)
  - API Enhancement to support fine-grained settings whitelisting [(#13948)](https://github.com/ManageIQ/manageiq/pull/13948)
  - Create configuration script sources [(#14006)](https://github.com/ManageIQ/manageiq/pull/14006)
  - Edit Authentications API [(#14319)](https://github.com/ManageIQ/manageiq/pull/14319)
  - Delete and update configuration script sources [(#14323)](https://github.com/ManageIQ/manageiq/pull/14323)
  - Delete authentication in provider [(#14307)](https://github.com/ManageIQ/manageiq/pull/14307)
  - Collections API for Cloud Volumes [(#14260)](https://github.com/ManageIQ/manageiq/pull/14260)
  - Orchestration stack subcollection [(#14273)](https://github.com/ManageIQ/manageiq/pull/14273)
  - Add cloud types to authentication options [(#13951)](https://github.com/ManageIQ/manageiq/pull/13951)
  - Adds host to physical server relationship [(#14026)](https://github.com/ManageIQ/manageiq/pull/14026)
  - Adding support for a format_attributes parameter [(#14449)](https://github.com/ManageIQ/manageiq/pull/14449)
  - Added Api::Utils.resource_search_by_href_slug helper method [(#14443)](https://github.com/ManageIQ/manageiq/pull/14443)
  - Enhanced API to have a task created for provider refreshes [(#14387)](https://github.com/ManageIQ/manageiq/pull/14387)

- User Interface (Classic)
  - Add missing ui_lookup for Repository [(#14485)](https://github.com/ManageIQ/manageiq/pull/14485)
  - Remove 'retired' column from the services list [(#14378)](https://github.com/ManageIQ/manageiq/pull/14378)

#### Changed

- Platform:   
  - Use the new setup script argument types [(#14313)](https://github.com/ManageIQ/manageiq/pull/14313)
  - Exclude chargeback lookup tables in replication [(#14466)](https://github.com/ManageIQ/manageiq/pull/14466)
  - Reporting
    - Support dots and slashes in virtual custom attributes [(#14329)](https://github.com/ManageIQ/manageiq/pull/14329)
    - Link recently_discovered_pods widget to rpt [(#14493)](https://github.com/ManageIQ/manageiq/pull/14493)

- Performance
  - Make Widget run without timezones [(#14386)](https://github.com/ManageIQ/manageiq/pull/14386)
  - boot skips all seeding with env variable [(#14207)](https://github.com/ManageIQ/manageiq/pull/14207)
  - Add a cache for full Feature objects [(#14037)](https://github.com/ManageIQ/manageiq/pull/14037)
  - Report Widget [(#14285)](https://github.com/ManageIQ/manageiq/pull/14285)
  - Skip relationship query when we know there are none [(#14480)](https://github.com/ManageIQ/manageiq/pull/14480)
  - Report Widget [(#14285)](https://github.com/ManageIQ/manageiq/pull/14285)

- Providers: Move azure settings to azure provider [(#14345)](https://github.com/ManageIQ/manageiq/pull/14345)

- User Interface (Classic): Updated patternfly to v3.23 [(#13940)](https://github.com/ManageIQ/manageiq/pull/13940)

#### Fixed

- Automate
  - Fix services always invisible [(#14403)](https://github.com/ManageIQ/manageiq/pull/14403)
  - Fixes tag control multi-value [(#14382)](https://github.com/ManageIQ/manageiq/pull/14382)
  - Control
    - Add the logic to allow a policy to prevent request_vm_scan. [(#14370)](https://github.com/ManageIQ/manageiq/pull/14370)
    - During control action host was not being passed in  [(#14500)](https://github.com/ManageIQ/manageiq/pull/14500)
  - Don't allow selecting resources from another region when creating a catalog item [(#14468)](https://github.com/ManageIQ/manageiq/pull/14468)
  - Merge service template options on update [(#14314)](https://github.com/ManageIQ/manageiq/pull/14314)

- Platform
  - Chargeback: Delegate custom attributes to images in ChargebackContainerImage [(#14395)](https://github.com/ManageIQ/manageiq/pull/14395)
  - Metrics: Split metric collections into smaller intervals [(#14332)](https://github.com/ManageIQ/manageiq/pull/14332)
  - Add balancer members after configs have been written [(#14311)](https://github.com/ManageIQ/manageiq/pull/14311)
  - MiqApache::Conf.create_balancer_config expects a :lbmethod key [(#14306)](https://github.com/ManageIQ/manageiq/pull/14306)
  - If we can't update_attributes on a queue row, set state to error [(#14365)](https://github.com/ManageIQ/manageiq/pull/14365)

- Providers
  - Identifying container images by digest only [(#14185)](https://github.com/ManageIQ/manageiq/pull/14185)
  - Add oVirt cloud-init customization template [(#14139)](https://github.com/ManageIQ/manageiq/pull/14139)
  - Fix EmsRefresh miq_callback when merging queue items [(#14441)](https://github.com/ManageIQ/manageiq/pull/14441)
  - Pass hosts as a parameter to create the service dialog [(#14507)](https://github.com/ManageIQ/manageiq/pull/14507)
  - Provide better error message when migrating to the same host [(#14155)](https://github.com/ManageIQ/manageiq/pull/14155)
  - Fixed refresh & save for Physical Infra. [(#14351)](https://github.com/ManageIQ/manageiq/pull/14351)
  - Always pass valid date format [(#14296)](https://github.com/ManageIQ/manageiq/pull/14296)
  - Check if project has credential before try to use it [(#14297)](https://github.com/ManageIQ/manageiq/pull/14297)
  - Fix saving hosts in ansible playbook job [(#14522)](https://github.com/ManageIQ/manageiq/pull/14522)
  - Fixing full_name not returning docker_id when it should [(#14412)](https://github.com/ManageIQ/manageiq/pull/14412)
  - Remove queue serialization [(#13722)](https://github.com/ManageIQ/manageiq/pull/13722)
  - Fix general CloudNetwork class_by_ems method [(#14392)](https://github.com/ManageIQ/manageiq/pull/14392)
  - Prevent a DVPortGroup from overwriting a LAN with the same name in provisioning [(#14292)](https://github.com/ManageIQ/manageiq/pull/14292)

- REST API
  - Ensure actions are returned correctly in the API [(#14033)](https://github.com/ManageIQ/manageiq/pull/14033)
  - Return result of destroy action to user not nil [(#14097)](https://github.com/ManageIQ/manageiq/pull/14097)

- User Interface (Classic)
  - Fix mixed values in Low and High operating ranges for CU charts [(#14324)](https://github.com/ManageIQ/manageiq/pull/14324)
  - Revert "Remove unneeded include from reports" [(#14439)](https://github.com/ManageIQ/manageiq/pull/14439)

