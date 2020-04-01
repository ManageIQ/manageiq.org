---
layout: doc_page
title: Get Started
---

ManageIQ is an open source management platform for Hybrid IT. It can manage
small and large environments, and supports multiple technologies such as
virtual machines, public clouds and containers.

With ManageIQ you will be able to:

* **Continuously discover** the latest state of your environment.
* Implement **self service** for your end users.
* Enforce **compliance** across the environment.
* **Optimize** the performance and utilization of your environment.

## Following this Guide

In order to follow this guide, you will need:

* A host environment to run the ManageIQ software.
* A supported managed system to connect to.

When used in production environments, ManageIQ users typically download [one of
our virtual appliances](/download) and deploy copies of it onto a
virtualization platform like OpenStack or VMware. The appliance is then
configured to connect to the virtualization platform so that it can be managed.

ManageIQ can also be run as a set of containers in either OpenShift or Kubernetes.
The [manageiq-pods](https://github.com/ManageIQ/manageiq-pods) project includes
scripts and documentation for deploying to these platforms.

For this getting started guide, we will focus on a simpler way for you
to get to know ManageIQ, one that does not require access to a virtualization
platform. We describe four easy options:

 - [Vagrant](/docs/get-started/vagrant) -- run ManageIQ as a Vagrant Box
 - [Docker](/docs/get-started/docker) -- run ManageIQ as a Docker container
 - [Public Cloud](/docs/get-started/cloud) -- run ManageIQ in the cloud
 - [Kubernetes](/docs/get-started/kubernetes) -- run ManageIQ in Kubernetes

We will use the Google Cloud Platform as the platform to manage (but you can
use any public cloud supported by ManageIQ).
