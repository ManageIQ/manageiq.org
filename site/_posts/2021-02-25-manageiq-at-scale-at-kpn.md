---
title: "ManageIQ at scale at KPN"
author: Evert Mulder and Ruthger Gubbels
date: 2021-02-25
tags: collaboration
comments: false
published: true
---


# ManageIQ at scale at KPN

Evert Mulder (systems architect) and Ruthger Gubbels (lead software engineer)


## Introduction

KPN is a leading telecommunications and IT provider and market leader in the Netherlands. With our fixed and mobile networks for telephony, data and television we serve customers at home and abroad. KPN focuses on both private customers and business users, from small to large. In addition, we offer telecom providers access to our widespread networks. To make these solutions possible, various physical and virtual infrastructure is used by a considerable number of different teams within KPN. To be able to provide these teams the services they need in a timely and standardized manner, KPN started a project in 2017 to offer them a self-service portal with which the teams could create and manage their own infrastructure. A DevOps team was formed to deliver this vision. While reviewing several possibilities, we soon realized that the self-service portal software had to be flexible, customizable and scalable enough to support a large heterogeneous set of infrastructure stacks, services and use cases. We did a successful proof of concept with ManageIQ, in which the option to add existing infrastructure using the provider concept proved to be of great value to us.


### Current setup

At KPN we primarily use the VMware vSphere cloud computing platform for virtualization of our on-premise infrastructure. The current setup consists of multiple vCenters spanning several datacenters in the Netherlands. While starting out with a small set of VMs, our ManageIQ implementation now is managing more than 8,000 virtual machines running on 350+ hosts connected to multiple physical networks, using over 4,000 virtual networks. To be able to run ManageIQ at this scale, and satisfy the demand from our organization we have a DevOps 'portal' team in place that can create new services, maintain the ManageIQ setup running on OpenShift, and troubleshoot and fix all the kinds of issues that occur. When new features are introduced or bugs are fixed, a new version of the software is rolled out to our testing platform and, once validated, promoted to production quickly using an automated CI/CD pipeline.

Our current ManageIQ setup is built on one region and we have created separate zones for our different providers, so we are able to distribute provider related load over multiple pods. For redundancy, the ManageIQ setup is running active-active on multiple datacenters with an active-passive setup for the Postgres database, that itself runs on a dedicated virtual machine.
The services that are offered through the self-service portal to the internal customers are often relayed from services provided by other teams. For instance, backup and restore are services that are provided by one team and offered for each virtual machine through the self-service portal, while software defined network services are provided by yet another team and also offered through the portal. We mostly use Ansible playbooks on an AWX/Ansible Tower as an automation engine for this. The teams that provide services that have to be offered through the portal can create and maintain their own Ansible playbooks to deliver their services. This model allows us to scale our service catalog beyond the capabilities of the DevOps portal team.

### Downstream

Important factors for choosing ManageIQ were the access to the source code and the presence of an active community of programmers contributing to the software. KPN makes use of these community improvements and also itself contributes to the software. In day to day troubleshooting and problem fixing, being able to trace errors and having the ability to read and change the code has proven to be mandatory. But even then, maintaining a downstream version of ManageIQ isn't an easy task. The code base is large, fairly complex, and not always consistent. There are with periodical big changes in a number of separate repositories. Finding the code you’re looking for isn’t always straightforward, and this is where the help of the ManageIQ community and the development team at Red Hat comes in. Using [gitter.im](https://gitter.im/ManageIQ/manageiq) and [github.com](https://github.com/ManageIQ), communicating problems and trying out probable solutions has been very productive. With this help, we were able to implement a number of downstream customizations to our own code base:

* Running multiple Ansible playbooks for 1 request
* Configure the proxy for VM console per VMware provider
* Custom resource limits for VM reconfigure
* Performance improvements for complex service dialogs
* Custom RBAC filtering because of higher security requirements and performance issues
* Integration with VMware vrOPS
* Tooling around development, deployment, and monitoring

### Upstream

As ManageIQ is an open source software solution and we ourselves take pride in being part of the ManageIQ community, we often check if a new customization we've created could be generic enough for other ManageIQ users to be used more widely and if so, upstream our changes to the community. Often, changes make it to the mainstream ManageIQ releases. Some of the additions we've made are:
* Improvement of handling and returning AWX job results
* Testing and improving the Graph Refresh of the VMware provider added in the Jansa Release
* A number of bug fixes
* A VMware NSX-T network provider
* VM reconfigure options: resizing disks, edit networks
* VM Console stability issues

Our biggest addition to ManageIQ to date is the network provider for VMware NSX-T, which has been featured in ManageIQ sprint review 136. This network provider was developed by the KPN DevOps team from the ground up, using code examples from the Openstack and Nuage network providers and help from community and Red Hat developers. It was upstreamed in the spring of 2020 and we are very proud it will be part of the upcoming ManageIQ Kasparov Release. Now that KPN is using the VMware NSX-T network provider, our internal teams can speed up changes of the connectivity within their infrastructure using a number of API calls we provide. Changes in a matter of minutes instead of the hoops they normally had to jump through, with multiple forms and/or documents using mail and a processing time of several days or even weeks or months.

### Challenges
In the 5 years that we are using and customizing ManageIQ we have had our sheer number of challenges. The size and complexity of the code base, dependency issues, slow performance of the RBAC filter (still is a problem), limitations of the Service Dialogs and the editor, the import, export and deployment of the automation code, dialogs, buttons and other parts for multiple installations (Dev/Test/Acceptance/Production) and of course the rework of customization after major releases.
For the import, export and deployment of the automation code, dialogs, buttons and other parts we have made changes to the import and export of ManageIQ and the RH consulting scripts to do lookups of relations using the name or description property instead of id's as id's are unique for every installation. We also strip out many timestamps and other unnecessary properties cluttering the git differences. We haven't upstreamed these changes as we don't know if other ManageIQ users are using the same method of deploying and have similar problems and our solution is incompatible with the existing import/export.

We want to keep up with the minor and major releases of ManageIQ, but having our customs code means that we often have to redo and rewrite it. There have been some big changes in ManageIQ, redesign of the Service Dialogs editor, the Angular and React Javascript frameworks, VMware console proxy and the VMware Inventory Refresh to name a few. On top of that, the transition to OpenShift 3.x and now OpenShift 4.x for Jansa.

We do see that as we are progressing in time and our knowledge of ManageIQ is growing we can pinpoint and solve bugs more quickly and handle more complex changes. We can now see through the many layers, from database via the application code up to the user interface.

### Future
We are living in a time of fast changing IT/TI landscapes and the push to always have faster Time To Market, the need to automate very thing is getting bigger and bigger. And of cause doing it in a secure and uniform manner. Using ManageIQ as the standard gateway to managing resources, will help our internal teams to do just that. For now the ManageIQ at KPN is mostly about our private vSphere cloud with virtual Machines and connecting them, but we have plans to add more services. Bare Metal using PXE, loadbalancers, an S3 storage manager and perhaps even AWS, Microsoft Azure or Google Cloud to join as the public cloud.

We, as the ManageIQ DevOps team at KPN, will be doing our up- and downstream development and the community will go forward to unlocking new abilities, so that in the future we can use ManageIQ at hyperscale.
