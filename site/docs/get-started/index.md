---
layout: doc_page
title: Get Started
---

ManageIQ is an open source management platform for Hybrid IT. It can manage
small and large environments, and supports multiple technologies such as
virtual machines, public clouds and containers.

With ManageIQ you will be able to:

* Continuously discover the latest state of your environment.
* Implement **self service** for your end users.
* Enforce **compliance** across the environment.
* Optimize the performance and utilization of you environment.

## Following this Guide

In order to follow this guide, you will need:

* Somewhere to run the ManageIQ software.
* Something to manage.

When used in production environments, ManageIQ users typically download [one of
our virtual appliances](/download) and deploy copies of it onto a
virtualization platform like OpenStack or VMware. The appliance is then
configured to connect to the virtualization platform so that it can be managed.

For this getting started guide however, we will focus on a simpler way for you
to get to know ManageIQ, one that does not require access to a virtualization
platform. We describe three easy options:

 - [Vagrant](/docs/get-started/vagrant) -- run ManageIQ as a Vagrant Box
 - [Docker](/docs/get-started/docker) -- run ManageIQ as a Docker container
 - [Public Cloud](/docs/get-started/cloud) -- run ManageIQ in the cloud

We will use the Google Cloud Platform as the platform to manage (but you can
use any public cloud supported by ManageIQ).
