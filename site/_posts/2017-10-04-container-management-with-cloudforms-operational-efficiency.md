---     
title: Container Management with CloudForms – Operational Efficiency
date: 2017-10-04
tags: cloudforms container management operations containers openshift
author: Jerome Marc
---

This blog is part 2 of our series on Container Management with CloudForms.

In this blog, we look how the operations team can manage container environments and ensures the workload runs securely and efficiently. This includes the containers themselves, but also the underlying infrastructure. Operators need to ensure resources at all layers of the stack are optimized to provide the highest level of service for the container workload.

The first step before being able to manage a containerized environment is being able to know what containers and resources are available. When containers and nodes can come and go at any time, how can we know accurately what is inside a container based infrastructure?
  
Similarly we also want to know where those resources are located, and how they relate to each others, across the different layers of the infrastructure stack. This knowledge to key to be able to manage and troubleshoot efficiently.
  
And finally, how can we automate common tasks, for example using triggers when certain conditions happen? For example, flagging containers for being out of compliance when a new container image is published, automating the scaling up/down of the underlying infrastructure when a resource threshold is met, etc.
  
First, CloudForms discovers on premise and public cloud compute, storage and network infrastructure needed to support containerized applications on an ongoing basis. It also provides visibility on the container platform and workload.
  
CloudForms connects to the various management APIs, such as the Kubernetes API provided by OpenShift, and underlying infrastructure APIs, and discovers inventory and continuously monitors for the addition of new resources.
  
CloudForms visualizes the discovered resources (e.g. containers, nodes, underlying virtual/physical infrastructure or cloud), and shows their relationships. This way, we can see that a certain application runs on a certain node, which is actually a virtual machine that runs in a certain resource pool. This information is key to making the environment supportable, as we know accurately the resources used by each of our container workload across the entire stack.
  
On the automation side, CloudForms allows you to define control policies that listen to events in real time and can kick off automation if certain conditions are met. Automation can be as simple as alerting a team by email, generating a new incident in your service helpdesk application, or as complex as managing the elasticity of your underlying container based infrastructure.
  
You can also extend the CloudForms user interface (UI) to allow for operators to trigger custom tasks. This can be used to expose day 2 management operations on both the containers and their infrastructure.

The following video demonstration highlights these capabilities in CloudForms:

* Visibility & Inventory
* Resource Relationships
* Troubleshooting (across the stack)
* Task Automation
