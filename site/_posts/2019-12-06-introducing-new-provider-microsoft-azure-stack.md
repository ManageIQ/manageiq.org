---
title: "Introducing New Cloud Provider: Microsoft Azure Stack"
author: XLAB Steampunk
date: 2019-12-10 10:30:00 UTC
comments: true
published: true
tags: announcements collaboration
---

With the release of [ManageIQ
Ivanchuk](https://www.manageiq.org/blog/2019/09/manageiq-ivanchuk-ga-announcement/),
we are introducing new integrated provider: [Microsoft Azure
Stack](https://azure.microsoft.com/en-us/overview/azure-stack/). Integration
was developed by [XLAB Steampunk](https://steampunk.si/redhat-integrations/), a trusted Red Hat
partner specialized in integrating third-party technologies with Red Hat
CloudForms and Red Hat Ansible Automation Platform.

Azure Stack is an extension of Azure, Microsoft’s public cloud service. It
provides the user experience of Azure, bringing the agility and fast-paced
innovation of cloud computing to on-premise environments. Having Azure Stack
integrated into ManageIQ enables users to transparently manage their hybrid
infrastructure.

Azure Stack provider enables the following functionalities:
  * basic cloud and
  * network inventory,
  * VM power operations, provisioning of deployment templates.

**Adding Azure Stack provider to ManageIQ**

Log into ManageIQ and navigate to **Compute > Clouds > Providers** from the
main navigation on the left. In the **Configuration** button drop-down menu
select **Add a New Cloud Provider** and enter the information shown below.

![](/assets/images/blog/azure-stack-add-provider.png)

**Inventory**

Once the provider is successfully added into ManageIQ, it will automatically
collect resources from your Azure Stack deployment and integrate them into
ManageIQ inventory.

![](/assets/images/blog/azure-stack-provider-inventory.png)

![](/assets/images/blog/azure-stack-instance-details.png)

**Operations**

Operations allow you to start, stop or pause a virtual machine.

![](/assets/images/blog/azure-stack-instance-power-operations.png)

**Provisioning**

Azure Stack provider in ManageIQ supports provisioning based on Deployment
Template. In other words, as an admin, you can paste a JSON template (e.g., one
of [these templates](https://azure.microsoft.com/en-us/resources/templates/) to
ManageIQ and offer it as an orderable Service Catalog Item to your customers.
The provider creates the initial Service Dialog automatically based on
"parameters" section of the template, but you can customize it to your liking
using standard ManageIQ functionalities. See the teaser screenshot below:

![](/assets/images/blog/azure-stack-service-provisioning-dialog.png)

Download the [latest Ivanchuk release of
ManageIQ](https://www.manageiq.org/download/) and connect your Microsoft Azure
Stack to test the provider yourself.

To find out more about the provider, get in touch with [XLAB
Steampunk](https://steampunk.si/redhat-integrations/) at steampunk@xlab.si.
