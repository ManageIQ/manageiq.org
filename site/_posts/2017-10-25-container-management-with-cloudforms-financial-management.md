---     
title: Container Management with CloudForms – Financial Management
date: 2017-10-25
tags: cloudforms containers management operations openshift
author: Jerome Marc
---

This blog is part 5 of our series on Container Management with CloudForms].
  
In this last post, we focus on financial management of container environments for both chargeback
and for optimizing infrastructure resource usage and spending.

In these dynamic and expanding environments, it is very important to know what type (public,
private, etc) and how much resources a particular workload is consuming, and, if desired, charge
the associated cost back to the user.

Similarly, we also want to know how much the infrastructure is actually costing us.

CloudForms gives the ability to define cost models at the infrastructure layer but also at the
container layer across virtual, private cloud and multiple public clouds. The infrastructure model
gives us insight in the cost of operating the infrastructure, and the container model allows us to
pass those costs on to the users.

The chargeback models in CloudForms are very flexible. We can for example define and attach usage
costs to CPU, memory, disk and network for the infrastructure. We can also specify and report costs
on project or image for the container workload. Multiple currencies are supported.

The following video demonstration highlights these capabilities in CloudForms:

* Resource Consumption & Reporting
* Showback & Chargeback

## Conclusion ##

This concludes this series of blogs on managing containers at scale with Red Hat CloudForms. As we
have seen, we can use CloudForms to addresses all key challenges of running containers at scale, in
the areas of operational efficiency, service health, security and compliance, and financial
management.
  
We invite you to try CloudForms in your environment. One of the easier way is to instantiate the
[CloudForms container image](<https://catalog.redhat.com/software/containers/registry/registry.access.redhat.com/repository/cloudforms45/cfme-openshift-app?container-tabs=overview>)
directly from the Red Hat Container Catalog, and get started in managing your OpenShift container
environment.
  
Furthermore, additional resources on Red Hat Management can be found on
[Accelerate I.T. services delivery](<https://www.redhat.com/en/solutions/it-automation>)
and
[Automate I.T. Processes](<https://www.redhat.com/en/solutions/it-automation>).
