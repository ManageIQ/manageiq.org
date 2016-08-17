# Terms used by ManageIQ

Account Role
: A designation assigned to a user allowing or restricting a user to parts and functions of the CloudForms Management Engine console.

Action
: An execution that is performed after a condition is evaluated.

Alert
: CloudForms Management Engine alerts notify administrators and monitoring systems of critical configuration changes and threshold limits in the virtual environment. The notification can take the form of either an email or an SNMP trap.

Analysis Profile
: A customized scan of hosts, virtual machines, or instances. You can collect information from categories, files, event logs, and registry entries.

Cloud
: A pool of on-demand and highly available computing resources. The usage of these resources are scaled depending on the user requirements and metered for cost.

CloudForms Management Engine Appliance
: A virtual machine on which the virtual management database (VMDB) and CloudForms Management Engine server reside.

CloudForms Management Engine Console
: A web-based interface into the CloudForms Management Engine Appliance.

CloudForms Management Engine Role
: A designation assigned to a CloudForms Management Engine server that defines what a CloudForms Management Engine server can do.

CloudForms Management Engine Server
: The application that runs on the CloudForms Management Engine Appliance and communicates with the SmartProxy and the VMDB.

Cluster
: Hosts that are grouped together to provide high availability and load balancing.

Condition
: A test of criteria triggered by an event.

Discovery
: Process run by the CloudForms Management Engine server which finds virtual machine and cloud providers.

Drift
: The comparison of a virtual machine, instance, host, cluster to itself at different points in time.

Event
: A trigger to check a condition.

Event Monitor
: Software on the CloudForms Management Engine Appliance which monitors external providers for events and sends them to the CloudForms Management Engine server.

Host
: A computer on which virtual machine monitor software is loaded.

Instance/Cloud Instance
: A on-demand virtual machine based upon a predefined image and uses a scalable set of hardware resources such as CPU, memory, networking interfaces.

Managed/Registered VM
: A virtual machine that is connected to a host and exists in the VMDB. Also, a template that is connected to a provider and exists in the VMDB. Note that templates cannot be connected to a host.

Managed/Unregistered VM
: A virtual machine or template that resides on a repository or is no longer connected to a provider or host and exists in the VMDB. A virtual machine that was previously considered registered may become unregistered if the virtual machine was removed from provider inventory.

Provider
: A computer on which software is loaded which manages multiple virtual machines that reside on multiple hosts.

Policy
: A combination of an event, a condition, and an action used to manage a virtual machine.

Policy Profile
: A set of policies.

Refresh
: A process run by the CloudForms Management Engine server which checks for relationships of the provider or host to other resources, such as storage locations, repositories, virtual machines, or instances. It also checks the power states of those resources.

Resource
: A host, provider, instance, virtual machine, repository, or datastore.

Resource Pool
: A group of virtual machines across which CPU and memory resources are allocated.

Repository
: A place on a datastore resource which contains virtual machines.

SmartProxy
: The SmartProxy is a software agent that acts on behalf of the CloudForms Management Engine Appliance to perform actions on hosts, providers, storage and virtual machines.
: The SmartProxy can be configured to reside on the CloudForms Management Engine Appliance or on an ESX server version. The SmartProxy can be deployed from the CloudForms Management Engine Appliance, and provides visibility to the VMFS storage. Each storage location must have a SmartProxy with visibility to it. The SmartProxy acts on behalf of the CloudForms Management Engine Appliance. If the SmartProxy is not embedded in the CloudForms Management Engine server, it communicates with the CloudForms Management Engine Appliance over HTTPS (SSL) on standard port 443.

SmartState Analysis
: Process run by the SmartProxy which collects the details of a virtual machine or instance. Such details include accounts, drivers, network information, hardware, and security patches. This process is also run by the CloudForms Management Engine server on hosts and clusters. The data is stored in the VMDB.

SmartTags
: Descriptors that allow you to create a customized, searchable index for the resources in your clouds and infrastructure.

Storage Location
: A device, such as a VMware datastore, where digital information resides that is connected to a resource.

Tags
: Descriptive terms defined by a CloudForms Management Engine user or the system used to categorize a resource.

Template
: A template is a copy of a preconfigured virtual machine, designed to capture installed software and software configurations, as well as the hardware configuration, of the original virtual machine.

Unmanaged Virtual Machine
: Files discovered on a datastore that do not have a virtual machine associated with them in the VMDB. These files may be registered to a provider that the CloudForms Management Engine server does not have configuration information on. Possible causes may be that the provider has not been discovered or that the provider has been discovered, but no security credentials have been provided.

Virtual Machine
: A software implementation of a system that functions similar to a physical machine. Virtual machines utilize the hardware infrastructure of a physical host, or a set of physical hosts, to provide a scalable and on-demand method of system provisioning.

Virtual Management Database (VMDB)
: Database used by the CloudForms Management Engine Appliance to store information about your resources, users, and anything else required to manage your virtual enterprise.

Virtual Thumbnail
: An icon divided into smaller areas that summarize the properties of a resource.
