---
title: ManageIQ Gaprindashvili GA - It's better than Fine!
author: cybette
date: 2018-01-30
tags: releases announcements
comments: true
published: true
---

On behalf of the ManageIQ team, we're delighted to announce the release of **ManageIQ Gaprindashvili**! This is the seventh ManageIQ release and it's named after Georgian chess player [Nona Gaprindashvili](https://en.wikipedia.org/wiki/Nona_Gaprindashvili), who became the first woman to be awarded the Grandmaster title in 1978.

Since the [ManageIQ Fine GA](/blog/2017/05/manageiq-fine-ga-announcement/), we’ve had 17 very productive 2-week [sprints](https://www.youtube.com/watch?v=QgSq7_RGOOI&list=PLQAAGwo9CYO-SEH9SW7IEwDF6-IzlB_mx) with a total of 8517 pull requests across all the [ManageIQ repositories](https://github.com/manageiq/), averaging 250 PRs [per week](/blog/tags/LWIMIQ/). All these activities have translated to numerous new features, bug fixes, refactoring and deletions for optimization.

Let's take a look at some highlights from this release.

## Generic Objects

This release of ManageIQ formally introduces Generic Objects. These are object-like instances, defined at runtime each with a unique name and user-defined attributes and relationships. They are designed to manage objects other than those related to private infrastructure, and public or private cloud providers.

Using automate requests, services and catalog items, Generic Objects can be directly accessed and passed as a parameter, thus they are good for quickly adding capabilities of collecting and provisioning resources that are not yet supported in ManageIQ. Examples include Load Balancer and RDS Database, providing a way to extend ManageIQ without requiring back-end code changes.

You can find this new tool under Automation -> Automate -> Generic Objects.

[![Generic Object Class](/assets/images/blog/Gaprindashvili_GA_generic_objects.png)](/assets/images/blog/Gaprindashvili_GA_generic_objects.png)

## Lenovo XClarity Provider

We introduced the Physical Infrastructure provider in our [last release](/blog/2017/05/manageiq-fine-ga-announcement/). In this release, the first implementation is [Lenovo XClarity Administrator](https://github.com/ManageIQ/manageiq-providers-lenovo). This avails monitoring, control, and alerting for physical infrastructures that provide the foundation for on-premise clouds.

With this integration, ManageIQ gives a unified interface for users to obtain information regarding inventory, monitoring, roles, policies and reporting across their entire data center infrastructure.

[![Lenovo Provider](/assets/images/blog/Gaprindashvili_GA_Lenovo_MSV.png)](/assets/images/blog/Gaprindashvili_GA_Lenovo_MSV.png)

## Provider Improvements

With some major work in the [AmazonSsaSupport repo](https://github.com/ManageIQ/amazon_ssa_support), you can now run Smart State Analysis on Amazon Instances and Images. As a result, Compliance and Policy Enforcement can be applied to Amazon instances. In addition, graph refresh and targeted refresh are enabled by default, providing performance improvement.

[![Amazon Refresh](/assets/images/blog/Gaprindashvili_GA_Amazon_refresh.png)](/assets/images/blog/Gaprindashvili_GA_Amazon_refresh.png)

Smart State Analysis is available on Microsoft Azure Managed Disks as well.

On the container front, you can now provision with OpenShift Templates from the Service Catalog. There are new metering reports for container images and projects, as well as support for Chargeback by allocation. Coming full circle, ManageIQ can be deployed on the OpenShift Container Platform!

In oVirt, we have targeted refresh improvements for templates and host events. The OVN (Open Virtual Network) has been added as oVirt's network provider for network switch visualization and control.

And as a shift away from real time metrics for alerts, ManageIQ can now receive push alerts from Prometheus in OpenShift. The Prometheus Alerts Collection Manager is added to Container Providers, and visible through the Monitor -> Alerts menu.

[![Prometheus Alerts](/assets/images/blog/Gaprindashvili_GA_Prometheus_alerts.png)](/assets/images/blog/Gaprindashvili_GA_Prometheus_alerts.png)

## All Good Things...

We are deprecating the MiqLdap client in this release, which provides support for the Authentication Mode: LDAP and LDAPS. An automated conversion script, called `miqldap_to_sssd`, is provided that will convert ManageIQ Authentication configurations from using the MiqLdap client into Authentication configurations that will use External authentication with SSSD. See this [blog post](/blog/2017/09/miqldap-to-sssd/) describing how to use the `miqldap_to_sssd` conversion tool.

Another change, which you might have noticed, is the discontinuation of the [weekly development updates](/blog/tags/LWIMIQ/) series. So far we've had 69 posts over 17 months, and we're switching to a new format this year. New frequency I should say, as we will now publish "Last Month in ManageIQ" monthly posts. I will probably resume the [Sprint summary posts](/blog/tags/sprints/), while they felt a bit redundant when weekly updates are available, they might prove more useful with the new setup.

Changes can be good though! For example, in the Service Catalog Item editor, the change is made so that only the types for providers that are present are enabled and can be selected, since it doesn't make sense to allow one to go through creating the catalog item if the provider isn't available.

[![Service Catalog item](/assets/images/blog/Gaprindashvili_GA_service_catalog_item.png)](/assets/images/blog/Gaprindashvili_GA_service_catalog_item.png)

This is just one of many improvements towards the UIs. The myriad enhancements give our users great looking interfaces that are a joy to use. For a comprehensive list of changes from UI and beyond, please refer to the [full changelog](https://github.com/ManageIQ/manageiq/blob/gaprindashvili/CHANGELOG.md/). In addition, the [User Reference](/docs/reference/) has been updated to reflect the [Gaprindashvili release](/docs/reference/gaprindashvili/).

<center><img src="/assets/images/blog/Gaprindashvili_GA_better_than_Fine.png" width="500"><br />
(coming to a T-shirt near... on you!)</center><br />

We’re grateful to the remarkably productive contributors in ManageIQ team and community for making the Gaprindashvili release possible! 

Release images are now available for [download](/download/). Visit the ManageIQ [Community page](/community/) to find out how to get involved in the community, and where you can connect with us online and in person at events. Join our [discussion forum](http://talk.manageiq.org/) if you have questions. [Documentation](/docs/) and other resources can be found on the [ManageIQ site](/) as well. Thanks for your support!