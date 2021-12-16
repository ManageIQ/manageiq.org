---
title: Announcing Morphy Beta
author: Fryguy
date: 2021-12-16
comments: true
published: true
tags: releases announcements
---

The first beta release of ManageIQ Morphy is here!  We've been working hard and have a lot of new features you can see in the [roadmap](https://github.com/orgs/ManageIQ/projects/13#column-15656536). Here are the major highlights for this new release:

New Providers!
* [IBM PowerVC](https://www.ibm.com/products/powervc)
* [Oracle Cloud](https://www.oracle.com/cloud)

New Kubernetes Providers!
* [Azure Kubernetes Service (AKS)](https://azure.microsoft.com/en-us/services/kubernetes-service)
* [Google Kubernetes Engine (GKE)](https://cloud.google.com/kubernetes-engine)
* [IBM Cloud Kubernetes Service (IKS)](https://www.ibm.com/cloud/kubernetes-service)
* [Oracle Kubernetes Engine (OKE)](https://www.oracle.com/cloud-native/container-engine-kubernetes)

New support for Cloud Databases
* [Amazon RDS](https://aws.amazon.com/rds)
* [Azure Database for SQL Server, PostgreSQL, MySQL, and MariaDB](https://azure.microsoft.com/en-us/products/azure-sql)
* [Google Cloud SQL](https://cloud.google.com/sql)
* [IBM Cloud Databases](https://www.ibm.com/cloud/databases)
* [Oracle Cloud Databases](https://www.oracle.com/database)

Provider Enhancements
* [IBM Cloud VPC](https://www.ibm.com/cloud/vpc)
  * Event Collection support
  * Targeted Refresh for VMs, Templates, and Flavors
  * Create/Delete of Networks, Subnets, and Volumes
  * Collection of Cloud Volume Types
  * Link Availability Zone to Cloud Subnets
  * Link Floating IPs to Instances
  * Provision VMs from Images/Templates
  * Delete VMs
* [IBM Cloud PowerVS](https://www.ibm.com/products/power-virtual-server)
  * Targeted Refresh
  * Reporting on virtual columns for Power related attributes
  * Reporting templates for PowerVS/PowerVC
* [IBM PowerVC](https://www.ibm.com/products/powervc)
  * New dedicated provider!
  * Collection of Cloud Volume Types
  * Support software license fields during provisioning
* Kyndryl AutoSDE
  * Predefined roles
  * Edit Storage Device attributes
  * Configure a Volume for Expansion
  * Validation check for CHAP Username and Secret together
  * Creation of multiple volumes in a single view/click
  * Edit Volume Mappings
  * Cross link between Cloud Volume and Host Initiator
  * Creation of host initiator with multiple WWPN for FC port
* VMware vSphere
  * Add support for 7.0U3
* Google Cloud
  * [Performance] Stop collecting deprecated images by default

Core
* [Embedded Ansible] Configurable `verify_ssl` for git repositories
* [Appliances] Move from CentOS 8 to CentOS 8 Stream
* [Installation] Gracefully handle installation with non-superuser PostgreSQL account
* [Performance] Improved database migration speed

API
* Throttle API requests
* Allow filtering '=' via arrays

UI
* Add provider connection status errors to provider dashboard
* Add ability to edit physical storage properties
* Automation/Configuration menu reorganization

This release also included a lot of cleanup and refactoring, especially on the UI side, with many new screens being rewritten in React and using the Carbon UI framework for a cleaner look and better accessibility.

Many thanks go to all of the contributors for all of their enhancements and bug fixes.

You can download the Morphy-1-Beta1 release [here](https://manageiq.org/download/).

For questions or support, [join in on the talk page](https://talk.manageiq.org/).
