---
title: "Complementing NFV Orchestrators with ManageIQ/CloudForms"
author: snrathee
date: 2018-04-05
comments: true
published: true
tags: collaboration
---

While those on IT side of a CSP (Communications Service Provider) business are quite familiar with cloud management platforms such as ManageIQ, the network side folks are very familiar with Network Function Virtualization Orchestrators (NFV-O) as defined in [ETSI MANO](http://www.etsi.org/deliver/etsi_gs/NFV-MAN/001_099/001/01.01.01_60/gs_NFV-MAN001v010101p.pdf) spec. These two worlds are converging though and so are their technologies. We came across the presentation on how [ManageIQ can now run as an NFV-O](https://www.slideshare.net/ManageIQ/nfvo-based-on-manageiq-opnfv-summit-2016-demo) to manage your Virtual Network Functions (VNFs). But what if you are already running a ETSI NFV-O in your environment ? Is there still a place for ManageIQ? Definitely.

ManageIQ is an upstream Open Source Cloud Management Platform which Red Hat productizes as [CloudForms](https://www.redhat.com/en/technologies/management/cloudforms) and provides support for it. It can manage virtual, container, private and public clouds all from a single pane of glass. This description makes it seem very similar to an NFV-O in general, suggesting that these two products have quite an overlap in functionalities. This might be true. However we would now look at areas where they complement each other. Here we will assume that a customer has an ETSI NFV-O already in place and wants to use ManageIQ for any additional benefits.

## Managing the cloud
NFV Orchestrators may be deeply integrated with a specific cloud such as OpenStack while only partially aware of other clouds. To support a truly [hybrid cloud](https://www.redhat.com/en/about/videos/why-what-and-how-hybrid-cloud) strategy, ManageIQ, with its consistent set of northbound REST APIs, can integrate with NFV Orchestrators and provide them a convenient way to interface with all different public or private clouds as well as virtualization technologies while managing the south bound connectivity. Platforms pre-integrated with ManageIQ include:
1. OpenStack (Multiple distributions)
2. Amazon Web Services
3. Google Compute Engine
4. Microsoft Azure
5. VMware vCenter
6. Red Hat Virtualization

## Brownfield Discovery
Cloud technologies may not have a well-defined API into NFV Infrastructure to extract Virtual Network Function (VNF) components or individual Virtual Machine (VM) information. VMs therefore cannot be linked together to create a VNF definition for any VNFs not instantiated by the NFV-O. This also poses a challange to create Network Service definition by linking VNFs together. ManageIQ, via its customization, can assign [tags](https://blog.rackspace.com/tagging-taxonomy-red-hat-cloudforms) to existing VMs based on specific properties and present them as single VNF to NFV-Os. It can also tag VNFs together to present them as a single Network Service.

## Reporting
ManageIQ can provide extensive [reporting](http://manageiq.org/docs/reference/latest/doc-Monitoring_Alerts_and_Reporting/miq/#_sect_reports) with hundreds of [fields](http://manageiq.org/docs/reference/latest/doc-Monitoring_Alerts_and_Reporting/miq/#_appe_reportable_fields) available at disposal for creating customized reports. Reports can provide an understanding on capacity and utilization of the NFV infrastructure. Customers can understand if the environments are properly utilized based on these reports and who is using it so that any corrective actions can be taken. Some of the reports available out of the box include:

**Configuration Management:** hardware, application, network, service, user account, operating system, and snapshot information for all of your items.

**Operations:** free space on registered and unregistered virtual machines, power states for virtual machines, and SmartState analysis status.

**VM Sprawl:** usage information and disk waste.

**Events:** operations and configuration management events.

**Performance by Asset Type:** performance of your virtual infrastructure.

**Running Processes:** information on processes running on a virtual machine.

**Trending:** projections of datastore capacity, along with host CPU and memory use.

**Tenants:** quotas report aggregated by each tenant that shows quota name, total quota, in use, allocated, and available. The report currently lists all tenants and there is no nesting information available by parent and child tenants.

**Provisioning:** provisioning activity based on the approver, datastore, requester, and virtual machine.

## Right sizing the VNFs
VNF vendors provide resource requirements for their network functions even though exact load conditions are not known beforehand. However once VNFs are on-boarded, ManageIQ can collect data on resource usage of individual VNFs and make [sizing recommendations](https://www.youtube.com/watch?v=vfmS_nXuwdQ) on which compute, memory and storage flavors would be most suitable based on past trends.

## Security
Security and compliance are mandatory for any production deployment. ManageIQ can provide capabilities to set up compliance and control policies to manage images, hosts, specific events and triggers based on specific requirements of the enterprises. Extensive information on policies can be found [here](http://manageiq.org/docs/reference/latest/doc-Policies_and_Profiles_Guide/miq/). Any security related issues that arise can be used to generate notifications for actions to be handled by operator or via closed loop automation.
