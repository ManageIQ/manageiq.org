---
title: Sprint 55 review - March 1, 2017
author: cybette
date: 2017-03-03
tags: sprints
comments: true
published: true
---

Welcome once again to a sprint review recap. This time we are looking at Sprint 55, which produced a total of 495 pull requests across [all the ManageIQ repos](https://github.com/manageiq). :fist::fist: We used to see similar numbers in 3-week sprints last year! Even though we haven't done an official comparison, PR counts seem to be drifting up in many repos, including the [main repo](https://github.com/manageiq/manageiq) (with 144 PRs this sprint) which has been split into many parts. With 2 more new repos (font-fabulous and manageiq-api-mock) this sprint, it seems that while the repo-splits caused some initial disruption, the outcome allowed for more velocity per repository.

Ansible took the PR crown from Amazon this sprint around, with new embedded Ansible and Tower models and workers inside the ManageIQ appliance. For some eye candy, take a look at the screenshots of new lists and summary screens for Ansible objects (Credentials, Playbooks, Repositories) in the [slides](https://www.slideshare.net/ManageIQ/sprint-55). Automate method was added for dynamic dialog field to list Ansible credentials, plus there's Control Action to run an Ansible Playbook. To round up all the enhancements, check out the [demo](https://youtu.be/eIjZZZTEQog?t=765) on creating Service Catalog item based on Ansible Playbook.

The QE team has finished the test cases for Ansible testing and they are currently under review, along with the User Stories. For now we are testing whatever is available, for example the embedded Ansible has the backend complete but waiting for UI. The team is also moving towards agile working to align with development teams. After the first QE sprint, we have an improved running tests pass rate of more than 90% on Euwe.

For Chargeback, there's now an option when you create the report to exclude the Capacity and Utilization metrics. If you run the report without metrics, you'll get Chargeback for allocated amounts and fixed costs. There's a fix for Chargeback rate tier selection when using different units, which wasn't matching properly. Performance for Chargeback report generation was improved as well.

Some provider updates include collecting inventory for S3 objects in Amazon; metrics for archived Containers (which sometimes fail to be collected before they retire); and Power operations for the Hawkular (Middleware) Server Groups. Graph Refresh gets a provider registry that is queryable and lets you do a provider plugin lookup.

The Generic Service State Machine currently features the running of Playbook, using retirement state to track progress, marking a service as retired, but NOT removing the service. For the next step (next sprint) we will have the optional removal of service resources. The Generic State Machine methods will use one Service Object (newly introduced) for all processing, instead of disparate objects used by the Life Cycle State Machine. The Automation Engine will pass the Service object to Automate.

Folder structure was reworked as per the updated tabs in Service UI, removing the admin tab. The preparation for transition to Angular 4 has also been completed. In Service UI, there is now the ability to list/create/edit Orchestration Templates. Finally, more technical debt is being paid in Classic UI to get more responsiveness, with some formatting and styling to make things look better.

You don't want to miss the details in the [Sprint 55 review video](https://www.youtube.com/watch?v=eIjZZZTEQog) as you'll learn why an emperor is a high-risk job.

<iframe width="560" height="315" src="https://www.youtube.com/embed/eIjZZZTEQog" frameborder="0" allowfullscreen></iframe>

For specific sections of the review meeting, here are the respective timestamps:

* Sprint Statistics (Oleg Barenboim) - [0:50](https://youtu.be/eIjZZZTEQog?t=50)
* Community Update (Carol Chen) - [3:22](https://youtu.be/eIjZZZTEQog?t=202)
* Classic UI (Dan Clarizio) - [5:38](https://youtu.be/eIjZZZTEQog?t=338)
* Service UI (Chris Kacerguis) - [15:23](https://youtu.be/eIjZZZTEQog?t=923)
* Providers (Greg Blomquist) - [17:35](https://youtu.be/eIjZZZTEQog?t=1055)
* Automate (Greg McCullough) - [21:00](https://youtu.be/eIjZZZTEQog?t=1260)
* Platform (Gregg Tanzillo) - [28:12](https://youtu.be/eIjZZZTEQog?t=1692)
* API (Alberto Bellotti) - [35:16](https://youtu.be/eIjZZZTEQog?t=2116)
* Quality Engineering (Dave Johnson) - [37:37](https://youtu.be/eIjZZZTEQog?t=2257)
* Discussion -[40:29](https://youtu.be/eIjZZZTEQog?t=2429)

Delve into some specific PRs with these 2 installments of “Last Week in ManageIQ”:

* [February's Final Week's Work](/blog/2017/02/februarys-final-weeks-work/) - by [Allen Wight](https://github.com/allenbw) 
* [Embedding Ansible Additions](/blog/2017/02/embedding-ansible-additions/) - by [Josh Langholtz](https://github.com/jjlangholtz)

Looking forward, Sprint 56 review will be on March 15, 2017 @ [7:30 PST/10:30 EST/14:30 GMT](http://www.timeanddate.com/worldclock/fixedtime.html?msg=ManageIQ+Sprint+56+review&iso=20170315T1430) (note the start of Daylight Savings Time in the US). Join in the ManageIQ Sprint meeting via [Bluejeans](https://bluejeans.com/5927041376/) and import the [ManageIQ community calendar](https://calendar.google.com/calendar/embed?src=contact%40manageiq.org) to be notified about this and future Sprint reviews.

On a parting note, have a look at some [moments](https://twitter.com/i/moments/834117124872364033) from [PyCon Pune](https://pune.pycon.org/), and watch for a more detailed blog post coming up!

### [Sprint 55 Slide deck](https://www.slideshare.net/ManageIQ/sprint-55)

<iframe src="//www.slideshare.net/slideshow/embed_code/key/5gr5SS8Vx9lyvv" width="510" height="420" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

### [Changelog](https://github.com/ManageIQ/manageiq/blob/master/CHANGELOG.md)

#### Added


- Automate
  - Ansible
    - Add Run Ansible Playbook control action type [(#13943)](https://github.com/ManageIQ/manageiq/pull/13943)
    - Create service template with Ansible Tower after first creating a new job template [(#13896)](https://github.com/ManageIQ/manageiq/pull/13896)
    - Added "Ansible Playbook" to the list of catalog item types [(#13936)](https://github.com/ManageIQ/manageiq/pull/13936)
    - Expose job_template from a service template [(#13895)](https://github.com/ManageIQ/manageiq/pull/13895)
    - Create catalog item after job templates are created [(#13893)](https://github.com/ManageIQ/manageiq/pull/13893)
    - Create temporary inventory when execute a playbook [(#14008)](https://github.com/ManageIQ/manageiq/pull/14008)
    - Run a control action to order Ansible Playbook Service [(#13874)](https://github.com/ManageIQ/manageiq/pull/13874)
  - Orchestration: Use task queue for update stack operation [(#13897)](https://github.com/ManageIQ/manageiq/pull/13897)
  - Services
    - Add service object to deliver to automate. [(#13956)](https://github.com/ManageIQ/manageiq/pull/13956)
    - Create a provision request for a service template [(#13972)](https://github.com/ManageIQ/manageiq/pull/13972)
    - ServiceTemplate update_catalog_item [(#13811)](https://github.com/ManageIQ/manageiq/pull/13811)
  - See also [Manageiq/manageiq-content](https://github.com/ManageIQ/manageiq-content)

- Platform
  - Chargeback
    - Chargeback without C & U [(#13884)](https://github.com/ManageIQ/manageiq/pull/13884)
    - Containers: Enterprise rate parent for chargeback [(#14079)](https://github.com/ManageIQ/manageiq/pull/14079)
  - Add a #backlog method to PglogicalSubscription objects [(#14010)](https://github.com/ManageIQ/manageiq/pull/14010)
  - See also [Manageiq/manageiq-appliance](https://github.com/ManageIQ/manageiq-appliance)

- Providers
  - Enhanced inventory collector target and parser classes [(#13907)](https://github.com/ManageIQ/manageiq/pull/13907)
  - Ansible
    - Enhanced dependency and references scanning [(#13995)](https://github.com/ManageIQ/manageiq/pull/13995)
    - Introducing find by and find or build by methods [(#13926)](https://github.com/ManageIQ/manageiq/pull/13926)
    - Model change for Ansible Tower Credential [(#13773)](https://github.com/ManageIQ/manageiq/pull/13773)
    - Add missing `ConfigurationScriptSource` hierarchy and Automate models [(#14069)](https://github.com/ManageIQ/manageiq/pull/14069)
    - Models for EmbeddedAnsible provider [(#13879)](https://github.com/ManageIQ/manageiq/pull/13879)
  - Console: Add product feature for VMware WebMKS HTML consoles [(#13945)](https://github.com/ManageIQ/manageiq/pull/13945)
  - Containers
    - Support alerts on container nodes [(#13812)](https://github.com/ManageIQ/manageiq/pull/13812)
    - Add External Logging Support SupportFeature [(#13319)](https://github.com/ManageIQ/manageiq/pull/13319)
  - Hawkular
    - Send data source properties when adding data source operation is performed [(#13937)](https://github.com/ManageIQ/manageiq/pull/13937)
    - Middleware server group power ops [(#13741)](https://github.com/ManageIQ/manageiq/pull/13741)
  - OpenStack Cloud
    - Use task queue for set/unset node maintenance [(#13657)](https://github.com/ManageIQ/manageiq/pull/13657)
    - Use task queue for CRUD operations on auth key pair [(#13464)](https://github.com/ManageIQ/manageiq/pull/13464)
  - Pluggable: Add registered_provider_plugins to Vmdb::Plugins [(#13983)](https://github.com/ManageIQ/manageiq/pull/13983)
  - See also [Manageiq/manageiq-providers-amazon](https://github.com/ManageIQ/manageiq-providers-amazon)
  - See also [Manageiq/manageiq-providers-azure](https://github.com/ManageIQ/manageiq-providers-azure)


- REST API
  - Differentiate Vms/Instances in messages [(#13971)](https://github.com/ManageIQ/manageiq/pull/13971)
  - Authentications Read and Delete api [(#13780)](https://github.com/ManageIQ/manageiq/pull/13780)
  - Create service template REST api [(#12594)](https://github.com/ManageIQ/manageiq/pull/12594)
  - Snapshots revert API [(#13829)](https://github.com/ManageIQ/manageiq/pull/13829)

- Service UI
  - See [Manageiq/manageiq-ui-service](https://github.com/ManageIQ/manageiq-ui-service)

- SmartState
  - SmartState: Make docker registry & repo configurable for 'image-inspector' [(#8439)](https://github.com/ManageIQ/manageiq/pull/8439)
  - Warn if OpenSCAP binary not available [(#13878)](https://github.com/ManageIQ/manageiq/pull/13878)

- User Interface (Classic)
  - Add multiselect option to dropdowns [(#10270)](https://github.com/ManageIQ/manageiq/pull/10270)
  - Core changes for Ansible Tower Playbooks & Repositories UI [(#13731)](https://github.com/ManageIQ/manageiq/pull/13731)
  - Core changes for Ansible Credentials UI [(#14020)](https://github.com/ManageIQ/manageiq/pull/14020)
  - See also [Manageiq/manageiq-ui-classic changelog] (https://github.com/ManageIQ/manageiq-ui-classic/pull/461)

#### Changed

- Automate
  - Update the service dialog to use the correct automate entry point [(#13955)](https://github.com/ManageIQ/manageiq/pull/13955)
  - Change default provisioning entry point for AutomationManagement. [(#13762)](https://github.com/ManageIQ/manageiq/pull/13762)

- Performance
  - Use eager_load for extra_resources [(#13904)](https://github.com/ManageIQ/manageiq/pull/13904)
  - Perfomance fix for Object Storage Manager deletion [(#14009)](https://github.com/ManageIQ/manageiq/pull/14009)
  - Avoid N+1 queries by including snapshots [(#13833)](https://github.com/ManageIQ/manageiq/pull/13833)
  - Load created Vms in batches so they don't load all in memory [(#14067)](https://github.com/ManageIQ/manageiq/pull/14067)
  - Do not keep all association records in the memory [(#14066)](https://github.com/ManageIQ/manageiq/pull/14066)
  - Scanning for used attributes for query optimizations [(#14023)](https://github.com/ManageIQ/manageiq/pull/14023)

- Platform
  - Remove admin role for tenant admin [(#14081)](https://github.com/ManageIQ/manageiq/pull/14081)
  - Ansible: Properly monitor the embedded ansible service [(#13978)](https://github.com/ManageIQ/manageiq/pull/13978)
  - Remove the mechanisms around "configuring" central admin [(#13966)](https://github.com/ManageIQ/manageiq/pull/13966)
  - Allow users to input ipv6 where it makes sense [(#70)](https://github.com/ManageIQ/manageiq-gems-pending/pull/70)

- Providers
  - RHV: Resolve oVirt IP addresses [(#13767)](https://github.com/ManageIQ/manageiq/pull/13767)
  - Use task queue for VM actions [(#13782)](https://github.com/ManageIQ/manageiq/pull/13782)

#### Fixed

- Automate
  - Fix Automate domain reset for legacy directory. [(#13933)](https://github.com/ManageIQ/manageiq/pull/13933)

- Platform
  - Chargeback: Fix tier selection when using different units. [(#13593)](https://github.com/ManageIQ/manageiq/pull/13593)
  - Core
    - Fix missing reason constants [(#13919)](https://github.com/ManageIQ/manageiq/pull/13919)
    - Rescue worker class sync_workers exceptions and move on [(#13976)](https://github.com/ManageIQ/manageiq/pull/13976)
  - Reporting: Ignore custom attributes that have a nil name [(#14055)](https://github.com/ManageIQ/manageiq/pull/14055)

- Providers
  - Containers: Fix creating Kubernetes or OSE with `credentials.auth_key` [(#13317)](https://github.com/ManageIQ/manageiq/pull/13317)
  - Red Hat Enterprise Virtualization
    - Disks should be added as 'active' in RHV [(#13913)](https://github.com/ManageIQ/manageiq/pull/13913)
    - Use the provided database name during metric collection [(#13909)](https://github.com/ManageIQ/manageiq/pull/13909)
    - Fix authentication of metrics credentials in RHV [(#13981)](https://github.com/ManageIQ/manageiq/pull/13981)
  - Pluggable: Changing ordering of checks to see if snapshot operations are supported [(#14014)](https://github.com/ManageIQ/manageiq/pull/14014)
  - Ansible
    - Add missing authentication require_nested [(#14018)](https://github.com/ManageIQ/manageiq/pull/14018)
    - Disable SSL verification for embedded Ansible. [(#14078)](https://github.com/ManageIQ/manageiq/pull/14078)
    - Allow create_in_provider to fail [(#14049)](https://github.com/ManageIQ/manageiq/pull/14049)
  - Containers
    - Create a hawkular client for partial endpoints [(#13814)](https://github.com/ManageIQ/manageiq/pull/13814)
    - Container managers #connect: don't mutate argument [(#13719)](https://github.com/ManageIQ/manageiq/pull/13719)

- User Interface (Classic)
  - Update spice-html5-bower to 1.6.3 fixing an extra GET .../null request [(#13889)](https://github.com/ManageIQ/manageiq/pull/13889)
  - Add the Automation Manager submenu key to the permission yaml file [(#13931)](https://github.com/ManageIQ/manageiq/pull/13931)
  - See also [Manageiq/manageiq-ui-classic changelog](https://github.com/ManageIQ/manageiq-ui-classic/pull/461)

