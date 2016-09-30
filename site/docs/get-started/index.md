---
layout: start_doc
title: Get Started
permalink: /docs/get-started/
doc_group: start
---

## What is ManageIQ?

MangeIQ is an open source management platform for hybrid IT. Agile, Efficient and Risk Managed IT infrastructure, through:

* Continuous **discovery** of managed environments.
* Unified operations **management across hybrid footprints**.
* **Self-service** with complete life-cycle management.
* **Compliance enforcement** for any changes, applied or discovered.
* **Platform** based approach, allowing for fast implementation and coexistence with other management tools


## Concepts

Catalog Item 
: A single Template or a group of Templates (catalog bundle).

Cloud
: 

Control Policy
: Policies are used to manage your virtual environment. There are two types of policies available: compliance and control. Compliance policies are used to harden your virtual infrastructure, making sure that your security requirements are adhered to. Control policies are used to check for a specific condition and perform an action based on the outcome

Providers
: A provider is a server with software to manage multiple virtual machines that reside on multiple hosts

Virtual Management Database (VMDB)
: A database that stores the intelligence collected about the virtual infrastructure.

Role-based Access Control (RBAC)
: ""

Self Service user interface (SSUI)
: ""

Service Catalog 
: A catalog item or Catalog bundle that is available for provisioning.

Service Dialogs
: Made up of fully customizable tabs, items, and values for use with Service provisioning.

Smart State Analysis
: The operation of analyzing virtual machines and instances on the providers it manages to collect information about the base operating system on those virtual machines or instances, their virtual hardware, installed applications, and other details.

Template
: A template is a copy of a preconfigured virtual machine, designed to capture installed software and software configurations, as well as the hardware configuration, of the original virtual machine.

Control Policy
: Policies are used to manage your virtual environment. There are two types of policies available: compliance and control. Compliance policies are used to harden your virtual infrastructure, making sure that your security requirements are adhered to. Control policies are used to check for a specific condition and perform an action based on the outcome

Providers
: A provider is a server with software to manage multiple virtual machines that reside on multiple hosts.

Virtual Management Database (VMDB)
: A database that stores the intelligence collected about the virtual infrastructure.


## Following this Guide

In order to follow this guide, you will needa computer that allows you to run the software and a provider to connect to. ManageiQ can be installed in many different providers, virtual or cloud. We will provide some options in this tutorial but you can check in the documentation for other options.
Requirements vary depending on your choice.

Current options are:

 - [Docker](/docs/get-started/docker) (if you use the Docker option)
 - [Vagrant](/docs/get-started/vagrant) (if you use the Vagrant option)
 - [Cloud](/docs/get-started/cloud) (if you use the Cloud option)

You would also need a system to manage, we will use a free sign-up  Google Cloud Platform account for testing, but you can use any provider supported by ManageIQ

## Next: Get the ManageIQ Appliance

### [Try ManageIQ with Docker](/docs/get-started/docker)
### [Try ManageIQ with Vagrant](/docs/get-started/vagrant)
### [Try ManageIQ with a Public Cloud Provider](/docs/get-started/cloud)
