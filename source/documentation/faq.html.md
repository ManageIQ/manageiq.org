---
title: Frequently Asked Questions (FAQ)
---

# Frequently Asked Questions (FAQ)
{:.no_toc}

1. TOC goes here
{:toc .toc}

## What is ManageIQ?

ManageIQ is a cloud management platform (CMP) that adds additional capabilities
to your existing virtualization, private cloud and hybrid cloud infrastructure.
ManageIQ provides scaleable self-service interfaces, provisions virtual system
images, enables metering and billing, and provides workload optimization
through established policies.


## What is a cloud management platform?

Gartner IT has provided [a definition of Cloud Management Platform](http://www.gartner.com/it-glossary/cloud-management-platforms).

A cloud management platform enables common management tasks on top of your virtual infrastructure, including:

* self-service portal and capabilities with granular permissions for
  user access
* metering and billing for chargeback and showback
* ability to provision new instances and applications for an application
  catalog or from image templates
* integration points with existing systems management, service catalogs
  and configuration management software
* the ability to control and automate the placement and provisioning of
  new instances based on business and security policies


## What problems does ManageIQ solve?

As your IT infrastructure grows to add private elastic cloud
functionality to existing virtualization infrastructure, a number of new
problems arise that ManageIQ can help you solve as an administrator:

* **Get better situational awareness of what's happening inside your
  datacenter** by providing a single pane of glass view of your
  virtual resources, allowing you to track and control resources
  running in the public cloud

* **Help you rein in your "shadow IT"** for workloads allocated to
  Amazon and other external cloud providers, making those workloads
  visible in a unified view with your on-premise workloads.

* **Ensure that virtual resources respect IT business or security
  processes**. This becomes a challenge, especially with self-service
  capabilities. For example, ManageIQ can ensure that all operating
  systems have had the latest security patches applied, or that
  instance types match resource needs in a cloud application.

* **Manage VM lifecycles**: specifying what happens to user data and
  applications when a service is retired, ensuring that license
  entitlements can be reused after old services are shut down.

* **Provide autonomy to users of your IT infrastructure** through
  self-service provisioning, quota enforcement and granular
  permissions

* **Intelligently manage VM placement** - to ensure that clusters are
  balanced across virtual hosts, that high-availability VMs are not
  running on the same host or in the same rack

* **Support capacity management and planning** - ensuring that you have
  sufficient infrastructure and resources to match your current
  workloads, and ability to assess usage trends over time to plan for
  on-premise and off-premise resource expansion and overflow to public
  clouds.

* **Optimize workload allocation** - determine "best fit" or "best use"
  for workloads, assigning them to traditional virtual infrastructure
  or to cloud based infrastructures as system requirements and
  business needs dictate. As your legacy applications are adapted to
  run stateless in the cloud, you will need to move them gradually to
  your private cloud, or mix elastic infrastructure and traditional
  scale-up virtual resources in the same application


## Who should care about ManageIQ &mdash; and why?

If you are an infrastructure or systems administrator who is managing
both traditional virtualization infrastructure like VMware vSphere, Red
Hat Enterprise Virtualization or oVirt and private cloud infrastructure
like OpenStack, or public cloud infrastructure like Amazon Web Services,
ManageIQ can help you manage all those environments, scale your
organization's IT infrastructure, control costs, and enforce business
processes to keep you safe and ensure that your IT organization delivers
a high quality of service.


## Does this compete with OpenStack/oVirt/CloudStack/VMware vSphere?

ManageIQ adds to your existing virtualization and cloud platforms.

OpenStack/oVirt/CloudStack/VMware vSphere are tools designed to
operationally deploy and manage virtual and cloud infrastructures.
ManageIQ is a Cloud Management Platform (CMP) designed to augment cloud
and virtual infrastructures with higher-order managment services, cloud
brokering and automation capabilities. These management services include
policy-based governance , workload optimization, life-cycle management,
self-service provisioning with service catalogs, chargeback/showback
capacity & utilization management and planning and change
& configuration management.



## How is this different from Scalr/Enstratius/Rightscale/etc.?

ManageIQ is the first open source, community developed hybrid cloud
management platform. With its focus on both private OpenStack based
clouds and traditional virtualization, we believe that ManageIQ fills
a need for an enterprise-ready cloud management platform for the open
hybrid cloud.


## What are the differences between ManageIQ and Red Hat CloudForms?

The Red Hat CloudForms product is built on top of the ManageIQ open
source project. In addition to providing subscriptions ensuring updates
throughout a supported lifecycle of [N] years and Red Hat's reknowned
service, CloudForms also comes with a supported ecosystem of partners
offering commercially supported integration into 3rd party products and
platforms; and a network of resellers ready to provide certified
integration and development services to enable you to get maximum value
from the platform.

ManageIQ is provided as an open source project, with a range of open
source extensions, and is supported by the community through our public
discussion forums.


## Can I install ManageIQ on &lt;insert my favourite distro&gt;?

The ManageIQ source code is a regular Ruby on Rails application, and we
would be happy to hear of people who get it working on top of many Linux
distributions. To facilitate the installation and use of ManageIQ, we
deliver a set of pre-built image appliances for various virtualization
and cloud platforms. These images are built with CentOS 6.5.


## Does ManageIQ integrate with Chef, Puppet, CFEngine, Foreman, SaltStack, Ansible?

**FIXME**
{:.fixme}


## Does ManageIQ support Docker?

There are plans to add support for the deployment and automation of
Docker images, and the provisioning of images with Chef, Puppet, Ansible
and Salt. However, today, these capabilities are not present in
ManageIQ.

We welcome all community efforts to accelerate the integration of these
projects into ManageIQ.

You can find out more about contributing to ManageIQ on
[our community pages](/community/).


## How can I contribute to ManageIQ?

There are many ways to contribute to ManageIQ. In addition to
contributing features and bug fixes to the core project, you can also
contribute extensions to integrate with 3rd party projects, share
automation and control scripts and extensions, report bugs against the
platform and help provide more information on existing bugs, answer
questions of your fellow users in our Q&A site, or talk to other users
and the developers on our forum.

For more information on all of the ways you can contribute, check out
[our community pages](/community/).


## Is ManageIQ available as a hosted service on Amazon Web Services, GCE, Rackspace?

ManageIQ is provided as bootable images in various formats, including
AMIs for use on Amazon Web Services. However, there are no plans to
provide a hosted offering based on the open source ManageIQ project in
the foreseeable future.


## Who is using ManageIQ?

**FIXME**: TBD (perhaps to be dropped?)
{:.fixme}


## How do you pronounce ManageIQ?

It is pronounced "Manage Eye Queue". The IQ part of the name stands for
"intelligence quotient".


## Can I get involved with the community if I'm not a developer?

A key component of the ManageIQ community is the ability to adapt the
platform to your needs. It is possible to share these adaptations with
other users of ManageIQ.

For example, if you create a set of scripts to enforce an approval chain
for VM creation in your platform, and you think that this might be
useful to others, you can export these rule-sets, and distribute them on
GitHub. (instructions for sending link)[Send us the link to your
repository], and we will include it in the collection of community
modules available in [the marketplace](/marketplace).

Of course, you can help providing use cases and need for IaaS and
automation on your environment, and
[talk to other users on the ManageIQ forum](talk.manageiq.org) or
[answer their questions on our Q&A portal](ask.manageiq.org).


## How much does ManageIQ cost?

ManageIQ is open source software, which means that you can download the
source code and redistribute it freely. In addition, we provide
pre-built appliances including ManageIQ which are ready to deploy to
your infrastructure of choice, free of charge.


## Can I get commercial support for ManageIQ?

The ManageIQ community does not offer commercial support but you can get
help from developers and fellow users on our community forums.

Red Hat CloudForms is a commercial product built on ManageIQ, which you
should consider if you require commercial support. We anticipate that
other vendors will see the value in building products based on ManageIQ
in the future.


## Under what license is ManageIQ distributed?

The ManageIQ source code is distributed under a dual Apache v2/GPL v2
license. For more information on project licensing and the reasons
behind it, please read our [licensing FAQ](/community/licensing).


{::comment} List of terms {:/comment}

*[AL]: Apache License
*[AMI]: Amazon Machine Image
*[CMP]: Cloud Management Platform
*[FOSS]: Free and Open Source Software
*[GPL]: GNU Public License
*[IT]: Information Technology
*[meritocracy]: based on individual ability or achivement
*[OSI]: Open Source Initiative
*[Q&A]: Question and Answer
*[VM]: Virtual Machine
