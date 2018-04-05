---
title: "Complementing NFV Orchestrators with ManageIQ/Cloudforms"
author: snrathee
date: 2018-04-10
comments: true
published: true
tags: collaboration
---

While those on IT side of a CSP (Communications Service Provider) business are quite familiar with cloud management platforms such as ManageIQ, the network side folks are very familiar with Network function Virtualization Orchestrators (NFV-O) as defined in [ETSI MANO](http://www.etsi.org/deliver/etsi_gs/NFV-MAN/001_099/001/01.01.01_60/gs_NFV-MAN001v010101p.pdf) spec. These two worlds are converging though and so are their technologies. We came across the presentation on how [ManageIQ can now run as an NFV-O](https://www.slideshare.net/ManageIQ/nfvo-based-on-manageiq-opnfv-summit-2016-demo) to manage your Virtual Network Functions (VNFs). But what if you are already running a ETSI NFV-O in your environment ? Is there still a place for ManageIQ? Definitely

ManageIQ is an upstream Open Source Cloud Management Platform which Red Hat productizes as [Cloudforms](https://www.redhat.com/en/technologies/management/cloudforms) and provides support for it. It can manage virtual, container, private and public clouds all from a single pane of glass. This description makes it seem very similar to an NFV-O in general, suggesting that these two products have quite an overlap in functionalities. This might be true. However we would now look at areas where they complement each other. Here we will assume that a customer has an ETSI NFV-O already in place and wants to use ManageIQ for any additional benefits.

## Managing the cloud
NFV Orchestrators maybe deeply integrated with a specific cloud such as Openstack while only partially aware of other clouds. To support a truly [hybrid cloud](https://www.redhat.com/en/about/videos/why-what-and-how-hybrid-cloud) strategy, ManageIQ, with its consistent set of northbound REST APIs, can integrate with NFV Orchestrators and provide them a convenient way to interface with all different public or private clouds while managing the south bound connectivity.

## Brownfield Discovery
Cloud technologies may not have a well defined API into NFVI to extract VNF components or individual VM information. VMs therefore cannot be linked together to create a VNF definition for any VNFs not instantiated by the NFV-O. ManageIQ, via its customization, can assign []()tags](https://blog.rackspace.com/tagging-taxonomy-red-hat-cloudforms) to existing VMs based on a specific properties and present them as VNFs to NFV-Os.

## Reporting
ManageIQ can provide extensive reporting with hundreds of fields available at disposal for creating customized reports. Reports could include an understanding on Capacity and utilization of the NFVI. Customers can understand if the environments are properly utilized based on these reports and who is using it so that any corrective actions can be taken.

## Right sizing the VNFs
VNF vendors provide resource requirements for their network functions even though exact load conditions are not known beforehand. However once VNFs are on-boarded, ManageIQ can collect data on resource usage by individual VNFs and make recommendations on which compute , memory and storage flavors would be more suitable based on past trends.

## Security
Security and compliance are mandatory for any production deployment. ManageIQ can provide capabilities to set up compliance and control policies to manage images, hosts, specific events and triggers. Extensive information on policies can be found [here](http://manageiq.org/docs/reference/euwe/doc-Policies_and_Profiles_Guide/miq/)
