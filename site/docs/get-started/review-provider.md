---
layout: doc_page
title: Review What You Can See From The Provider
---


Go to ***Compute → Clouds → Providers***

You can see there your new GCE provider, and a quad icon with four zones that specifies:

![screenshot0013a](/assets/images/docs/screenshot_0013a.png){:.large_img}

- Type of provider
- Authentication status
- Some other information that depends on the provider



For instance, our freshly provided Cloud has already some elements
discovered:

-  Type of provider (icon of Google Cloud)
-   Authentication status (OK)
-   Number of instances (VM)
-   Number of Images (Templates)

![screenshot0013](/assets/images/docs/screenshot_0013.png){:.large_img}


Clicking it will show you more information:

-   **Properties**. Characteristics of the provider as defined in ManageIQ,
    like type of provider and preferred region. This information will be
    different for each provider.

![screenshot0019](/assets/images/docs/screenshot_0019.png)
-   **Status**. Whether your credentials are valid and when the last refresh
    was done.

![screenshot0015](/assets/images/docs/screenshot_0015.png){:.large_img}
-   **Relationships**. Including the information about the components of the
    provider, like the number of security groups defined in the network,
    the number of available flavors (virtual hardware characteristics),
    cloud volumes, etc.

![screenshot0018](/assets/images/docs/screenshot_0018.png)



You can click on any of those elements to see detail information and a
list of objects within. For instance, you can click on ***Instances*** to
see names and characteristics of the instances within the provider

![screenshot0014](/assets/images/docs/screenshot_0014.png){:.large_img}

## Discovering a VM

Click on any of the VM available (or follow the next element if you
don’t see any to create a new VM).

You will find in the accordion a hierarchy tree that allows you to see
the context: our machine is part of the availability zone: *“us-east1-b”*.

![screenshot0021a](/assets/images/docs/screenshot_0021a.png)

There is a lot of detailed information out of the box:

![screenshot0016](/assets/images/docs/screenshot_0016.png){:.large_img}

### Information available ###

#### Properties####

ManageIQ is capable of autodiscovering all IP addresses associated to
the VM, the container (hardware associated to the instance), or the
Operating System that is using, automatically.

![screenshot0023](/assets/images/docs/screenshot_0023.png)


#### Lifecycle####

It provides information about the lifecycle of the entity, when it was
discovered, and when it was last analyzed. Whether there is a retirement
date for the instance, and the group it belongs to.

![screenshot0025](/assets/images/docs/screenshot_0025.png){:.large_img}

#### Relationships####

ManageIQ stores relationships between the elements in your
infrastructure.

-   Provider where the instance is stored
-   Availability zone
-   The VM-template used to provision it
-   Many others

As different cloud providers use different concepts, it is possible that
you find many parameters define as 0 or None. You need to check in the
documentation what information is discovered for each one.

![screenshot0018](/assets/images/docs/screenshot_0018.png){:.large_img}

#### Compliance####

You can run compliance checks against your instances, and the status and
history will be available here.

#### Power Management ####

Allows you to know the power state of the instance and the last time
ManageIQ saw it changing. As these instances are discovered, ManageIQ
does not know the last time it booted.

![screenshot0026](/assets/images/docs/screenshot_0026.png){:.large_img}


#### Security, Configuration, Diagnostics and Smart Management####

More advanced capabilities are available for selected providers,
including agentless inspection of workloads to discover

![screenshot0017](/assets/images/docs/screenshot_0017.png){:.large_img}

## Reporting##

There is an extensive reporting capability to get reports from all this
data and relationships in an structured way. You can find reports under ***Cloud Intelligence***

This tutorial does not specify the information you can gather in reporting
~~~~
[NOTE]
Providers need to have Capacity and Utilization data available to be able to generate reports on them
Not all providers show the same data or have the C&U data available.

~~~~

## Next: [Provision Your First Machine](/docs/get-started/provision-machine)
