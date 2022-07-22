---
title: Tips from the tour part 1 - Global dashboard and integrations 
date: 2018-07-09
tags: cloudforms management openstack operations rhev
author: Rinaldo Bergamini and Michele Naldini
---

## Introduction ##

Red Hat held an event on the infrastructure part of our portfolio in Milan and Rome on April 17th and 19th, 2018. One of the two demos presented was the management of a hybrid cloud environment with the Cloud Management Platform (CMP) Red Hat CloudForms.  
  
The event information and agenda is available at:

(<https://www.redhat.com/en/events/infrastructure-tour-milan-2018>)

(<https://www.redhat.com/en/events/infrastructure-tour-rome-2018>)

Use cases of the demo included:

* Single Pane of Glass Management  
* Integration with RHV
* Integration with VMware
* Integration with OpenStack
* Integration with Ansible Tower  
* Drift Analysis
* OpenShift Operations and Monitoring

In this part, we will cover Single Pane Glass and integration with the integration with infrastructure providers
  
## Single Pane of Glass Management ##

To provide a global dashboard of the providers we created some custom reports and widget (available for download, they can be imported in a greenfield Cloudforms environment via the Cloud Intel -> Reports -> Import / Export menu) to allow the operator to have an overview of common information on the overall providers.
  
More than one dashboard can be shown to users and access to dashboards can be regulated via RBAC features of CloudForms.

The most relevant data shown is:

* The percentage of OS vendors and related versions of the guest running with histograms globally and per provider
* The status of compliance of container images on OpenShift  
* Openshift Project usage in a graph sorted by memory (usually the first relevant metric)
* Aggregated chargeback information

Downloads link:

[Reports](<https://gitlab.com/cloudformsredhat/infrastructure-tour-italy-18/blob/master/Single%20Pane%20of%20Glass%20Management/Reports_20170202_110821.yaml>)

[Widget](<https://gitlab.com/cloudformsredhat/infrastructure-tour-italy-18/blob/master/Single%20Pane%20of%20Glass%20Management/OSD-widget_export_20171102_173332.yml>)

(<https://drive.google.com/open?id=0B_X4gkJXuSvyRy1KNFA3bm04NTA>)

(<https://drive.google.com/open?id=1g3qc0jO8Vrkt9IkMfF1on0QhOIro7PMs>)

## Integration with Red Hat Virtualization ##

CloudForms 4.6 brings some new management capabilities for RHV, including CRUD (Create, Read, Update and Delete) for networking on a number of elements)
  
The configuration of the RHV 4.1 provider requires the enablement of the DWH component on the RHV Manager (RHV-M) as explained here:
  
(<https://access.redhat.com/documentation/en-us/red_hat_virtualization/4.1/html/data_warehouse_guide/index>)

We had to get the user/password to access the DWH PostgreSQL DB on the RHV-M node checking the configuration in the file  

/etc/ovirt-engine-dwh/ovirt-engine-dwhd.conf.d/10-setup-database.conf

The password was provided to CloudForms in the provider configuration page to allow CloudForms to gather metrics for hosts and VMs.
  
## Integration with VMware vSphere ##

VMware vSphere is a first class citizen in CloudForms, we just had to configure the next two steps for operation.

Enabling SmartState analysis on VMware vSphere provider requires the installation of a VMware component called VDDK, we did that on the CloudForms appliance following the installation guide at:

(<https://access.redhat.com/documentation/en-us/red_hat_cloudforms/4.6/html-single/installing_red_hat_cloudforms_on_vmware_vsphere/index#installing-vmware-vddk>)

Don’t forget also to enter credentials for the underlying ESX hosts on the Host pages with the Configuration Button -> Edit configuration.
  
## Integration with Red Hat OpenStack Platform and cloud providers ##

The configuration of the OpenStack provider required a specific setting for the ceilometer module to let CloudForms gather metrics data and configure the provider in CloudForms to get events via ceilometer.

We did it editing the /etc/ceilometer/ceilometer.conf specifying the following option:

store_events = True
  
But can be done in a persistent way changing the parameter on the OSP Director. See (<https://access.redhat.com/documentation/en-us/red_hat_cloudforms/4.5/html-single/managing_providers/#openstack-events-oc>)
