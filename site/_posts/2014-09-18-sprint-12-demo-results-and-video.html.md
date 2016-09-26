---
title: Sprint 12 Demo Results and Video
date: 2014-09-18 14:27 UTC
author: johnmark
tags: sprints
---

We just finished up the Sprint 12 demo, ended September 9.

<iframe width="640" height="360" src="//www.youtube.com/embed/M5NITPIlA38" frameborder="0" allowfullscreen></iframe>

If you want to read the highlights of the sprint demo, notes are posted below:

## Sprint 12 Demo Highlights

- Overview
- Sprint Statistics
- User Interface
- Automate
- Appliance
- REST API
- Fleecing


### Sprints

- 3 weeks long each ending on a Monday
- GitHub Milestone per Sprint
- GitHub Milestone called Roadmap

### Sprint 12 Ended Sept 8

- [links to sprint issues](https://github.com/ManageIQ/manageiq/issues?q=milestone%3A%22Sprint+12+Ending+Sept+9%2C+2014%22)
- Over 90 Pull Requests Merged!
- 63 issues labeled as â€œbugâ€
- 15 issues labeled as â€œapplianceâ€
- 22 issues labeled as â€œenhancementâ€

### User Interface

- Form Buttons (css based)
- Patternfly modified Bootstrap


### Automate

- EMS Refresh (Amazon virtualization type)
- Exposed cloud relationship in service models
- Persistent state data through retries
- Automate Model changes
- High level rubyrep changes

### Amazon Virtualization Type

### Service Models: Cloud Relationship
    class Flavor
        expose :ext_management_system
        expose :vms
    end

    class FloatingIp
        expose :ext_management_system
        expose :vm
        expose :cloud_tenant
    end

    class SecurityGroup
        expose :ext_management_system
        expose :cloud_network
        expose :cloud_tenant
        expose :firewall_rules
        expose :vms
    end
    class AvailabilityZone
        expose :ext_management_system
        expose :vms
        expose :vms_and_templates
        expose :cloud_subnets
    end

    class CloudNetwork
        expose :ext_management_system
        expose :cloud_tenant
        expose :cloud_subnets
        expose :security_groups
        expose :vms
    end
    class CloudSubnet
        expose :cloud_network
        expose :availability_zone
        expose :vms
    end
    class EmsCloud
        expose :availability_zones
        expose :cloud_networks
        *   expose :cloud_tenants
        expose :flavors
        expose :floating_ips
        expose :key_pairs
        expose :security_groups
    end

### Persistent state data through retries

- New automate methods for state machine methods:
  - state_var_exist?(var_name)
  - set_state_var(var_name, value)
- get_state_var(var_name)

Example:

    if $evm.state_var_exist?(â€œtest_dataâ€)
        test_data = $evm.get_state_var(â€œtest_dataâ€)
        # TODO: Something interesting
    else
        # First time through, initialize data
        $evm.set_state_var(â€œtest_dataâ€, 1)
    end

### Automate Model changes

-  Auto-placement run from a state machine step for Cloud and Infrastructure provisioning
-  Added common "Finished" step to all Automate state machine classes

Added eligible_* and set_* methods for cloud resources to provision task service model

-  eligible_availability_zones
-  eligible_cloud_networks
-  eligible_cloud_subnets
-  eligible_cloud_tenants
-  eligible_floating_ip_addresses
-  eligible_guest_access_key_pairs
-  eligible_instance_types
-  eligible_security_groups

### Automate changes

Console

-  Config temp disk for OpenStack Fleecing
-  Key generation

Security

-  CertMonger Integration
-  IPA Research for Single Sign-On
-  Appliance

### Appliance

-  Ruby 2.0 changes (compatible with 1.9.3)
-  Logrotate now rotates our logs!
-  Gem upgrades for bugs/enhancements
-  haml
-  net-ldap
-  net-ping
-  Added/labelled issues for ruby2.x/rails4.x

### REST API

- Update for Authentication
  - With External Authentication (httpd) enabled against an IPA Server
  - fixed bug in the REST API and Appliance Console to honor the external credentials like the Web UI when targeting the /api entrypoint


### VM Fleecing

XFS Filesystem Support

- Work in Progress
  - see PR - https://github.com/ManageIQ/manageiq/pull/490
- Most of the code is complete
- Lacking Unit Tests
- Expected to be completed in Sprint 13
