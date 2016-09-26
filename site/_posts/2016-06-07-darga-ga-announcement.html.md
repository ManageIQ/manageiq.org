---
title: Darga GA Release
author: chessbyte
date: 2016-06-07 20:02:24 UTC
tags: releases announcements
comments: true
published: true
---

ManageIQ is excited to announce the official release of **Darga**, named for Grandmaster [Klaus Darga](https://en.wikipedia.org/wiki/Klaus_Darga).
Below are some of the many new features that are part of this release.  For more detail see the [changelog](https://github.com/ManageIQ/manageiq/blob/darga/CHANGELOG.md).


### Providers

#### Microsoft Azure Cloud

- Inventory – Deep forensic inspection of asset inventory
- Smart State Analysis – Introducing SSA to the Cloud
- Events – Full Azure events support, compute, storage and networking
- Operations – Power Controls
- Metrics – CPU utilization (more to come in errata)
- Chargeback – Limited based on CPU utilization
- Provisioning – Provisioning from a private image
- Retirement – Lifecycle operations to support on-demand or schedule retirement
- Appliance Image – As above we can run 100% in Azure
- Proxy – Supports ManageIQ global proxy

#### Google Compute Engine

- Inventory – Asset inventory, virtual machines, regions, availability zones
- Events – Event support for basic operations, start/stop/delete
- Operations – Power Controls
- Provisioning – Provision from a private image

#### VMware vSphere

- Distributed Switches – Now part of inventory and available during provisioning (rather than real time look ups)
- Storage Clusters – Visibility and provisioning similar to datastores
- Guest Disk Reconfiguration – Add or Remove disks to an existing VM
- ReadOnly Datastores – Now supported for inventory

#### Red Hat OpenShift Enterprise

- Chargeback – Project based chargeback roll ups. POD metrics collected from Hawkular and rolled up to Projects for Reporting. Support for CPU, Memory, Network I/O via rate tables.
- SCAP Scanner – In addition to our smart state analysis we have plugged in the Red Hat Enterprise Linux SCAP scanner. This allows us to scan images for SCAP vulnerabilities. You get access to a simple Low/Med/High status to the vulnerability as well as the HTML SCAP report per image.
- Cloud cross-linking – (leveraging OpenShift cloud providers)
- Pods Creation/Deletion – Trends and New Images discovery trends added to the dashboard
- Multi-endpoint – For metrics collection
- Collection of Builds and Volumes
- Compliance Management – Compliance policies can now be assigned to container images. Ability to perform OpenShift actions (e.g. automation & policies) via ManageIQ by utilizing OpenShift tags on images.

#### Red Hat Ansible Tower

- Inventory – Ansible Tower Inventory for Job Templates and Nodes
- Ansible in Automate – Introduction of a ManageIQ state machine accepting parameters to drive Ansible Tower Jobs. This provides an alternative choice to Ruby automation, allowing ManageIQ state machines to call Ansible Tower Jobs directly without having to write a line of code.
- Ansible in Services – Ansible Tower Jobs are now available as ManageIQ Service Items. Service Dialog can be generated dynamically to provide parameters for the Ansible Tower Job. With this in place, ManageIQ can leverage Ansible Galaxy content and drive automation without a single line of code. For example, use Ansible playbooks to provision a virtual machine in vCloud Air from ManageIQ Service Catalog.

#### Red Hat OpenStack Platform - Cloud

- SSH Key Management – Upload a new SSH key at time of deployment without having to configure the key post-provisioning in Horizon
- Instance Volume Management – Add/Remove OpenStack Cinder volumes to instances via reconfiguration
- Volumes at Provisioning – Add volume(s) at provisioning e.g. provision a Glance Image on this network with an additional 2 disks of 20gb each
- Right Size Recommendations – Right-sizing recommendation for CPU and Memory now implemented for Red Hat OpenStack
- Instance Reconfiguration – Instance Flavor reconfiguration is now supported e.g. reconfigure a m1.tiny flavour to m2.xlarge.
- Live Migration – Live migration from one host to the other for OpenStack instances
- Multi-End-Point – Different end-point addresses can be specified for Metrics, Message-bus and Provider (Keystone)
- Volume Inventory – Inventory of all volumes created in an OpenStack tenant
- Events from Ceilometer – Ceilometer support added for events, in addition to RabbitMQ

#### Red Hat OpenStack Platform - Virtual Infrastructure

- SSL – Secure transport for the virtual infrastructure running your cloud
- Scale Down – Auto-Scaling added for scale down, in addition to scale out
- Host Evacuation – Ability to evacuate all or selected instances from a host
- Capacity Planning – OpenStack added to the Capacity Planing tool, allowing to evaluate how many VMs of a particular profile (e.g. running on VMware) can fit on OpenStack.
- Enable / Disable cloud services
- Make Keystone V3 Domain ID Configurable

#### Software Defined Networking – Neutron

- Inventory – Visibility of routers, networks and subnets modeled in a tenant
- Cross-linking – Navigate across the relationships e.g. from a router to the network, to the subnet, to the network port that are all in the networking world and onto the VM or Instance that is connected to the network port.
- Topology – Cloud networking visualization, including relationships and cross-linking

#### Red Hat Enterprise Virtualization / oVirt

- Targeted Refresh – Allows refresh of single objects rather than the entire provider inventory.
- Cluster Datastore Support – Cluster datastores visibility, inventory and provisioning

#### Microsoft System Center Virtual Machine Manager (SCVMM)

- Smart State Support – Added VHDX, snapshot and all current filesystems support. Support for network-mounted HyperV virtual disks and performance improvements.
- Inventory Performance Improvements
- Retirement – Implementation of VM retirement added to SCVMM, supporting on demand and scheduled retirement

#### Amazon EC2

- SDK v2 – Support for v2 AWS SDK, allowing for future AWS services enhancements

### User Interfaces

#### Self Service User Interface

- Languages Support
  - German
  - French
  - Spanish
  - Russian
  - Portuguese
- Shopping cart model for ordering services – Introduction of a shopping cart order of services, allowing users to order multiple services and submit the entire cart at once. Future enhancements will include the ability to see previous orders, share carts with other users, etc.
- New consumption_administrator role – With chargeback/reporting duties
- I18n support – Added to Self Service UI
- Group Switcher – Added to Self Service UI
- Containers
  - Dashboard network trends
  - Container environment variables table
  - Search functionality for Container topology
  - Dashboard no data cards (for when no data exists yet)
  - Refresh option in Configuration dropdown
  - Persistent volumes, topology context menus

#### Operations User Interface

- Vertical Menus – New PatternFly menus implemented in ManageIQ, allowing for future directions. Other Red Hat products will follow for consistent look and feel across the portfolio.
- Orchestration Templates – Added the ability to copy a template
- Datastore Clusters Explorer – Added for VMware vSphere 5+
- Compliance Policy – Added support for Templates and Images (previously only allowed for VMs and Instances)
- New UI for replication configuration

#### Service Designer User Interface

- Early development of a graphical designer tool for defining catalog services and items

### Chargeback
- Tenant Rate Assignment – Added ability to assign rates to tenants
- Tenant Chargeback Report – Added ability to generate reports by tenant
- Currency Support – Enhanced chargeback to add additional currencies (previously US dollars only)

### Automate

- SSUI: Support dialogs with dynamic fields
- Simulation: Simulate UI support for state machine retries

### Automate Model

- Service Models: Support where method, find_by, and find_by!
- New Syntax: METHOD::<method_name>– No longer do you need an instance infant of a method, by using this syntax in a state you can directly call the method from the same class.
- Added Auto-Approval/Email to VM Reconfigure
- New models for Generic Object, future capability!
- Default Retirement state-machine behavior changed to retain record (historical data)
- New wait_for_ip method added to state-machine, can be used in ANY statemachine.

### REST API
- Added primary collection for Instances
- Added terminate action for instances
- Ability to filter string equality/inequality on virtual attributes
- For SSUI, ability to retrieve user’s default language and support for Dynamic Dialogs
- Actions for instances: stop, start, pause, suspend, shelve, reset, reboot guest
- Actions provided to approve or deny provision requests
- Ability to delete one’s own authenticated token
- Enhanced filtering to use MiqExpression
- Enhanced API to include Role identifiers for collections and augmented the authorization hash in the entrypoint to include that correlation
- CRUD for Tenant quotas
- Version increased to 2.2.0
- Support for /api/settings
- Added GET role identifiers
- Added support for Shopping Carts

### Core

#### Appliance
- New Appliance Distribution Formats
  - Azure Cloud Image
- Rails v5 – Upgraded from Rails v4.

#### Tenancy
- Reports – Widgets and Reports to show quota assigned per tenant as well as consumption
- Chargeback – Rate table assignment can be per tenant
- Automate – Domains can be tenanted

#### Replication (pglogical)

- Redesign of replication to use pglogical
- New MiqPglogical class: provides generic functionality for remote and global regions
- New PglogicalSubscription model: Provides global region functionality as an ActiveRecord model

#### Authentication

- Appliance Console External Auth updated to also work with 6.x [FreeIPA](http://www.freeipa.org) Servers
- SAML Authentication (verified with KeyCloak 1.8) –  SINGLE SIGN ON, so you can now have your local OS token passed though the browser to log you in, hands free!

#### Appliance Console

- Added alias ap as shortcut for appliance_console – So trivial but nice!
- Updates for external authentication settings
