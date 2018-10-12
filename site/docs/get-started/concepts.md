---
layout: doc_page
title: Concepts guide
---

## Concepts

 Analysis Profile
 : A customized scan of hosts, virtual machines, or instances. You can collect information from categories, files, event logs, and registry entries.

Action
: An execution that is performed after a condition is evaluated.

Alert
: ManageIQ alerts notify administrators and monitoring systems of critical configuration changes and threshold limits in the virtual environment. The notification can take the form of either an email or an SNMP trap.

Analysis Profile
: A customized scan of hosts, virtual machines, or instances. You can collect information from categories, files, event logs, and registry entries.

API
: Application programming interface.

Appliance
: ManageIQ is distributed as a fully installed virtual machine and comes preconfigured with CentOS 7.5, PostgreSQL 9.5, Rails 5, the ManageIQ application, and all associated Ruby gems pre-installed. An appliance is downloadable as a virtual machine image template in formats suitable for VMware, Red Hat Enterprise Virtualization, OpenStack, or Microsoft System Center Virtual Machine Manager.

Automate
: Is the ManageIQ capability or product feature, and automation is the thing that Automate allows us to do. The Automation Engine allows us to create intelligent automation workflows and run automation scripts written in Ruby.

Automation
: See "Automate".

Automation Engine
: See "Automate".

Azure
: A cloud computing platform and infrastructure created by Microsoft for building, deploying, and managing applications and services through a global network of Microsoft-managed data centers.

Catalog bundle
: A grouping of Templates.

Catalog Item 
: A single Template or a group of Templates (catalog bundle).

Classes
: A class is similar to a template: it contains a generic definition for a set of automation operations. Each class has a schema that defines the variables, states, relationships, or methods that instances of the class will use.

Cloud
: A pool of on-demand and highly available computing resources. The usage of these resources are scaled depending on the user requirements and metered for cost.

Cloud Computing
: An economic approach to computer resource management in which computers can be created and retired on demand.

Cloud Instance
: A on-demand virtual machine based upon a predefined image and uses a scalable set of hardware resources such as CPU, memory, networking interfaces.

Control Policy
: Policies are used to manage your virtual environment. There are two types of policies available: compliance and control. Compliance policies are used to harden your virtual infrastructure, making sure that your security requirements are adhered to. Control policies are used to check for a specific condition and perform an action based on the outcome

Cloud management platforms (CMPs)
: Are software tools that allow for the integrated management of public, private, and hybrid cloud environments.

Cluster
: Hosts that are grouped together to provide high availability and load balancing.

Condition
: A test of criteria triggered by an event.

Containers
: See "Docker"

Control
: Ability to enforce security and configuration policies, using the information retrieved from insight (see "Insight").

Dialog Tabs
: Part of a Service Dialog. 

Discovery
: Process run by the ManageIQ server which finds virtual machine and cloud providers.

Docker
: Docker containers wrap up a piece of software in a complete filesystem that contains everything it needs to run: code, runtime, system tools, system libraries – anything you can install on a server. This guarantees that it will always run the same, regardless of the environment it is running in.

Domain
: A collection of namespaces, classes, instances, and methods. The ManageIQ project provides a single ManageIQ domain for all supplied automation code.

Drift
: The comparison of a virtual machine, instance, host, cluster to itself at different points in time.

Event
: A trigger to check a condition.

Event Monitor
: Software on the ManageIQ Appliance which monitors external providers for events and sends them to the ManageIQ server.

Floating IP address
: An IP address that a project can associate with a VM so that the instance has the same public IP address each time that it boots. You create a pool of floating IP addresses and assign them to instances as they are launched to maintain a consistent IP address for maintaining DNS assignment.

GCE
: Google Compute Engine. Google's public cloud platform that is an Infrastructure as a Service (IaaS) component of Google Cloud Platform which is built on the global infrastructure. It enables users to launch virtual machines (VMs) on demand. VMs can be launched from the standard images or custom images created by users. 

Host
: A computer on which virtual machine monitor software is loaded.

Hypervisor
: Software that arbitrates and controls VM access to the actual underlying hardware.

Insight
: Is the process of gathering intelligence on our virtual or cloud infrastructure so that we can manage it effectively.

Instance
: A specific instantiation or “clone” of the generic class and is the entity run by the Automation Engine. An instance contains a copy of the class schema but with actual values of the fields filled in. 


Managed/Registered VM
: A virtual machine that is connected to a host and exists in the VMDB. Also, a template that is connected to a provider and exists in the VMDB. Note that templates cannot be connected to a host.

Managed/Unregistered VM
: A virtual machine or template that resides on a repository or is no longer connected to a provider or host and exists in the VMDB. A virtual machine that was previously considered registered may become unregistered if the virtual machine was removed from provider inventory.

ManageIQ
: An open-source cloud management platform that allows us to efficient management of virtual infrastructures and Infrastructure as a Service (IaaS) clouds. Part of this efficient management involves automating many of the day-to-day tasks that would otherwise require manual involvement, or time-consuming and possibly error-prone repetitive steps.


ManageIQ Appliance
: A virtual machine on which the virtual management database (VMDB) and ManageIQ server reside.

ManageIQ Console
: A web-based interface into the ManageIQ Appliance.

ManageIQ Role
: A designation assigned to a ManageIQ server that defines what a ManageIQ server can do.

ManageIQ Server
: The application that runs on the ManageIQ Appliance and communicates with the SmartProxy and the VMDB.

Cloud management platforms (CMPs)
: Are software tools that allow for the integrated management of public, private, and hybrid cloud environments.

Methods
: A self-contained block of Ruby code that gets executed when we run any automation operation. Methods can have one of three location values: inline, built-in, or URI. In practice most of the methods that we create are inline methods, which means they run as a separate Ruby process outside of Rails.

Namespaces
: a folder-like container for classes, instances, and methods, and is used purely for organizational purposes. Namespaces can be created to arrange code logically, and namespaces often contain other namespaces.

OpenStack
: A cloud operating system that controls large pools of compute, storage, and networking resources throughout a data center, all managed through a dashboard that gives administrators control while empowering their users to provision resources through a web interface. OpenStack is an open source project licensed under the Apache License 2.0.

Orchestration
: ManageIQ's ability to; provision or scale out workloads, such as virtual machines or cloud instances, provision or scale out infrastructure, such as bare-metal hypervisors or compute nodes, scale back or retirement of virtual machine or cloud instances. 

Providers
: A provider is a server with software to manage multiple virtual machines that reside on multiple hosts

Provision
: Creating resources in a Provider. See "Provider"

Provisioning Dialogs
: Dialogs created for Host Provisioning, VM Migration, or VM Provisioning. The dialog name must be added to the appropriate provision instance to be processed. 

Policy
: A combination of an event, a condition, and an action used to manage a virtual machine.

Policy Profile
: A set of policies.

Quotas
: ManageIQ allows us to establish quotas on tenants or user groups. Quotas can be set for the number of virtual machines, number of CPUs, amount of memory, or quantity of storage owned by the tenant or group. If a virtual machine provisioning request would result in the quota being exceeded, the request is rejected and the requesting user is emailed.

Refresh
: A process run by the ManageIQ server which checks for relationships of the provider or host to other resources, such as storage locations, repositories, virtual machines, or instances. It also checks the power states of those resources.

Relationships
: One of the schema field types is a relationship, which links to other instances elsewhere in the Automate Datastore. We often use relationships as a way of chaining instances together, and relationship values can accept variable substitutions for flexibility.

Repository
: A place on a datastore resource which contains virtual machines.

Resource
: A host, provider, instance, virtual machine, repository, or datastore.

Resource Pool
: A group of virtual machines across which CPU and memory resources are allocated.

Retirement
: Allows for managing the deletion of virtual machines or instances, both from the provider and from the VMDB if required.

Role
: A personality that a user assumes that enables them to perform a specific set of operations. A role includes a set of rights and privileges. A user assuming that role inherits those rights and privileges.

Role-based Access Control (RBAC)
: Capability of restricting visibility and access to features and transactions on ManageIQ depending on user role security profile. 

Ruby
: A dynamic, reflective, object-oriented, general-purpose programming language.

Schemas
: A schema is made up of a number of elements, or fields, that describe the properties of the class. A schema often has just one entry—to run a single method—but in many cases it has several components.

Self Service user interface (SSUI)
: ManageIQ Self Service is a web-based graphical user interface for ordering and managing IT service requests. 

Server
: A computer that provides data to other computers. It may serve data to systems on a local area network (LAN) or a wide area network (WAN) over the Internet.

Service
: An item in a Service Catalog that can be requested.

Service Catalog 
: A catalog item or Catalog bundle that is available for provisioning. Provide the ability to permit users to order our orchestration workflows with a single button click.

Service Dialogs
: Made up of fully customizable tabs, items, and values for use with Service provisioning.

SmartProxy
: The SmartProxy is a software agent that acts on behalf of the ManageIQ Appliance to perform actions on hosts, providers, storage and virtual machines.
: The SmartProxy can be configured to reside on the ManageIQ Appliance or on an ESX server version. The SmartProxy can be deployed from the ManageIQ Appliance, and provides visibility to the VMFS storage. Each storage location must have a SmartProxy with visibility to it. The SmartProxy acts on behalf of the ManageIQ Appliance. If the SmartProxy is not embedded in the ManageIQ server, it communicates with the ManageIQ Appliance over HTTPS (SSL) on standard port 443.

Smart State Analysis
: The operation of analyzing virtual machines and instances on the providers it manages to collect information about the base operating system on those virtual machines or instances, their virtual hardware, installed applications, and other details.

SmartTags
: Descriptors that allow you to create a customized, searchable index for the resources in your clouds and infrastructure.

Storage Location
: A device, such as a VMware datastore, where digital information resides that is connected to a resource.

Tags
: Descriptive terms defined by a ManageIQ user or the system used to categorize a resource.

Tenant
: A group of users, used to isolate access to Compute resources. An alternative term for a project.

Unmanaged Virtual Machine
: Files discovered on a datastore that do not have a virtual machine associated with them in the VMDB. These files may be registered to a provider that the ManageIQ server does not have configuration information on. Possible causes may be that the provider has not been discovered or that the provider has been discovered, but no security credentials have been provided.

User
: In Identity Service, each user is associated with one or more tenants, and in Compute can be associated with roles, projects, or both.

Vagrant
: An open-source software product for building and maintaining portable virtual development environments.

Virtual Machine
: A software implementation of a system that functions similar to a physical machine. Virtual machines utilize the hardware infrastructure of a physical host, or a set of physical hosts, to provide a scalable and on-demand method of system provisioning.


Template
: A template is a copy of a preconfigured virtual machine, designed to capture installed software and software configurations, as well as the hardware configuration, of the original virtual machine.

Virtual Management Database (VMDB)
: A database that stores the intelligence collected about the virtual infrastructure.

Virtual Thumbnail
: An icon divided into smaller areas that summarize the properties of a resource.

Zone
: Unit of grouping for MIQ servers and roles.
