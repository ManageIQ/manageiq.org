# Terms used by ManageIQ

Account Role
: A designation assigned to a user allowing or restricting a user to parts and functions of the CloudForms Management Engine console.

Action
: An execution that is performed after a condition is evaluated.

Alert
: CloudForms Management Engine alerts notify administrators and monitoring systems of critical configuration changes and threshold limits in the virtual environment. The notification can take the form of either an email or an SNMP trap.

Analysis Profile
: A customized scan of hosts, virtual machines, or instances. You can collect information from categories, files, event logs, and registry entries.

API
: Application programming interface.

Appliance
: ManageIQ is distributed as a fully installed virtual machine and comes preconfigured with CentOS 7.2, PostgreSQL 9.4, Rails 4.2.5, the ManageIQ application, and all associated Ruby gems pre-installed. An appliance is downloadable as a virtual machine image template in formats suitable for VMware, Red Hat Enterprise Virtualization, OpenStack, or Microsoft System Center Virtual Machine Manager.

Automate
: Is the ManageIQ capability or product feature, and automation is the thing that Automate allows us to do. The Automation Engine allows us to create intelligent automation workflows and run automation scripts written in Ruby.

Automation
: See "Automate".

Automation Engine
: See "Automate".

Azure
: A cloud computing platform and infrastructure created by Microsoft for building, deploying, and managing applications and services through a global network of Microsoft-managed data centers.

Classes
: A class is similar to a template: it contains a generic definition for a set of automation operations. Each class has a schema that defines the variables, states, relationships, or methods that instances of the class will use.

Cloud
: A pool of on-demand and highly available computing resources. The usage of these resources are scaled depending on the user requirements and metered for cost.

Cloud Computing
: An economic approach to computer resource management in which computers can be created and retired on demand.

Cloud Instance
: A on-demand virtual machine based upon a predefined image and uses a scalable set of hardware resources such as CPU, memory, networking interfaces.

CloudForms Management Engine Appliance
: A virtual machine on which the virtual management database (VMDB) and CloudForms Management Engine server reside.

CloudForms Management Engine Console
: A web-based interface into the CloudForms Management Engine Appliance.

CloudForms Management Engine Role
: A designation assigned to a CloudForms Management Engine server that defines what a CloudForms Management Engine server can do.

CloudForms Management Engine Server
: The application that runs on the CloudForms Management Engine Appliance and communicates with the SmartProxy and the VMDB.

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

Discovery
: Process run by the CloudForms Management Engine server which finds virtual machine and cloud providers.

Docker
: Docker containers wrap up a piece of software in a complete filesystem that contains everything it needs to run: code, runtime, system tools, system libraries – anything you can install on a server. This guarantees that it will always run the same, regardless of the environment it is running in.

Domain
: A collection of namespaces, classes, instances, and methods. The ManageIQ project provides a single ManageIQ domain for all supplied automation code.

Drift
: The comparison of a virtual machine, instance, host, cluster to itself at different points in time.

Event
: A trigger to check a condition.

Event Monitor
: Software on the CloudForms Management Engine Appliance which monitors external providers for events and sends them to the CloudForms Management Engine server.

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

ManageIQ
: An open-source cloud management platform that allows us to efficient management of virtual infrastructures and Infrastructure as a Service (IaaS) clouds. Part of this efficient management involves automating many of the day-to-day tasks that would otherwise require manual involvement, or time-consuming and possibly error-prone repetitive steps.

Managed/Registered VM
: A virtual machine that is connected to a host and exists in the VMDB. Also, a template that is connected to a provider and exists in the VMDB. Note that templates cannot be connected to a host.

Managed/Unregistered VM
: A virtual machine or template that resides on a repository or is no longer connected to a provider or host and exists in the VMDB. A virtual machine that was previously considered registered may become unregistered if the virtual machine was removed from provider inventory.

Methods
: A self-contained block of Ruby code that gets executed when we run any automation operation. Methods can have one of three location values: inline, built-in, or URI. In practice most of the methods that we create are inline methods, which means they run as a separate Ruby process outside of Rails.

Namespaces
: a folder-like container for classes, instances, and methods, and is used purely for organizational purposes. Namespaces can be created to arrange code logically, and namespaces often contain other namespaces.

OpenStack
: A cloud operating system that controls large pools of compute, storage, and networking resources throughout a data center, all managed through a dashboard that gives administrators control while empowering their users to provision resources through a web interface. OpenStack is an open source project licensed under the Apache License 2.0.

Orchestration
: ManageIQ's ability to; provision or scale out workloads, such as virtual machines or cloud instances, provision or scale out infrastructure, such as bare-metal hypervisors or compute nodes, scale back or retirement of virtual machine or cloud instances. 

Provider
: A computer on which software is loaded which manages multiple virtual machines that reside on multiple hosts. ManageIQ manages each cloud, container, or virtual environment using modular subcomponents called providers. Each provider contains the functionality required to connect to and monitor its specific target platform, and this provider specialization enables common cloud management functionality to be abstracted into the core product.

Provision
: Creating resources in a Provider. See "Provider"

Policy
: A combination of an event, a condition, and an action used to manage a virtual machine.

Policy Profile
: A set of policies.

Quotas
: ManageIQ allows us to establish quotas on tenants or user groups. Quotas can be set for the number of virtual machines, number of CPUs, amount of memory, or quantity of storage owned by the tenant or group. If a virtual machine provisioning request would result in the quota being exceeded, the request is rejected and the requesting user is emailed.

Refresh
: A process run by the CloudForms Management Engine server which checks for relationships of the provider or host to other resources, such as storage locations, repositories, virtual machines, or instances. It also checks the power states of those resources.

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

Ruby
: A dynamic, reflective, object-oriented, general-purpose programming language.

Schemas
: A schema is made up of a number of elements, or fields, that describe the properties of the class. A schema often has just one entry—to run a single method—but in many cases it has several components.

Server
: A computer that provides data to other computers. It may serve data to systems on a local area network (LAN) or a wide area network (WAN) over the Internet.

Service Catalogs
: The ability to permit users to order our orchestration workflows with a single button click.

Service Models
: 

SmartProxy
: The SmartProxy is a software agent that acts on behalf of the CloudForms Management Engine Appliance to perform actions on hosts, providers, storage and virtual machines.
: The SmartProxy can be configured to reside on the CloudForms Management Engine Appliance or on an ESX server version. The SmartProxy can be deployed from the CloudForms Management Engine Appliance, and provides visibility to the VMFS storage. Each storage location must have a SmartProxy with visibility to it. The SmartProxy acts on behalf of the CloudForms Management Engine Appliance. If the SmartProxy is not embedded in the CloudForms Management Engine server, it communicates with the CloudForms Management Engine Appliance over HTTPS (SSL) on standard port 443.

SmartState Analysis
: Process run by the SmartProxy which collects the details of a virtual machine or instance. Such details include accounts, drivers, network information, hardware, and security patches. This process is also run by the CloudForms Management Engine server on hosts and clusters. The data is stored in the VMDB.

SmartTags
: Descriptors that allow you to create a customized, searchable index for the resources in your clouds and infrastructure.

State Machine
:

Storage Location
: A device, such as a VMware datastore, where digital information resides that is connected to a resource.

Tags
: Descriptive terms defined by a CloudForms Management Engine user or the system used to categorize a resource.

Template
: A template is a copy of a preconfigured virtual machine, designed to capture installed software and software configurations, as well as the hardware configuration, of the original virtual machine.

Tenant
: A group of users, used to isolate access to Compute resources. An alternative term for a project.

Unmanaged Virtual Machine
: Files discovered on a datastore that do not have a virtual machine associated with them in the VMDB. These files may be registered to a provider that the CloudForms Management Engine server does not have configuration information on. Possible causes may be that the provider has not been discovered or that the provider has been discovered, but no security credentials have been provided.

User
: In Identity Service, each user is associated with one or more tenants, and in Compute can be associated with roles, projects, or both.

Vagrant
: An open-source software product for building and maintaining portable virtual development environments.

Virtual Machine
: A software implementation of a system that functions similar to a physical machine. Virtual machines utilize the hardware infrastructure of a physical host, or a set of physical hosts, to provide a scalable and on-demand method of system provisioning.

Virtual Management Database (VMDB)
: Database used by the CloudForms Management Engine Appliance to store information about your resources, users, and anything else required to manage your virtual enterprise.

Virtual Thumbnail
: An icon divided into smaller areas that summarize the properties of a resource.

Zone
: Unit of grouping for MIQ servers and roles.
