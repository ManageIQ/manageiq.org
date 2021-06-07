---     
title: CMDB Integration Architecture Examples for CloudForms 
date: 2017-11-16
tags: cloudforms management operations architecture, cloudforms,cmdb, integration, servicenow, ucmdb 
author: John Hardy
---

## Introduction ##

This document is to position two different types of integration with a CMDB and Red Hat CloudForms.

We discuss the use of HP uCMDB because it supports both types of integration but also other CMDBs are available such as Service-Now.

The two types of integration are known as;

Pull – Where by the information/data is collected (Pulled) by the CMDB from the end points. CMDB Server initiated.

Push – Where by the information/data is sent (Pushed) to the CMDB server by the end point. Endpoint initiated.

Other CMDB servers may not support a PULL approach at which point you have only the PULL solution as the only option.
We shall now dive deep into each integration type.
  
## Common CMDB Challenge :  Drift ##

The single biggest issue with a CMDB is simply that its information can be out of date. This is a very common problem to CMDB’s as the varying sources of information does not always amount to a single source of truth.
Example :

|--------------------|-------------------|--------------|
|                    |Day 1              |Day 2         |
|--------------------|-------------------|--------------|
|Action              |Providion          |Reconfigure   |
|Element             |CPU's              |CPU's         |
|Local Value         |2                  |4             |
|CMDB Value          |2                  |2             |
|--------------------|-------------------|--------------|
  
The table shows that on Day 1 when the device was provisioned it was with 2 CPU’s. The CMDB was updated correctly to reflect this. But on Day 2 the device was reconfigured to have 4 CPU’s. But the CMDB was not updated, due to the lack of integration between the system that does reconfiguration and the CMDB for this use case. Therefore the CMDB now has a drift in the data it has for the environment vs was the actual data is for the environment.

Also the number of changes that happen in an Enterprise for configuration management can be many and updating every endpoint to support its different ways up starting, stopping and updating can also lead to drift by actually missing data capture points.
  
## Pull ##

The CMDB server can be configured with “collectors”, these are modellers/scripts on the CMDB server that when executed can synchronize data into the CMDB. This is known as federating data to the CMDB.

Example :

There are different collectors available depending on the end point you are trying to speak to such as but not limited to;

* ODBC – Open Database Connectivity – Allows connections to most industry standard database sources.
* SOAP – Simple Object Access Protocol – Legacy HTTP data transfer. Connects to most legacy web services.
* REST – Representational State Transfer – Current HTTP data transfer. Common in all current and future web services.
  
Advantages

When the CMDB server executes the collector it is done by watching tables, being triggered or a schedule. This means that most of the time the data should have a low drift rate.

Another advantage to this solutions is the low update frequency. The update frequency refers to the number of times you will need to address changes in schema between the CMDB server and the endpoint source database, like the CloudForms Database. A good example of this is that the Virtual Machine table in CloudForms has been the same base schema since 2008. Database schema tends not to move or changes very slowly, always providing backwards compatibility, similar with REST and SOAP APIs. This means that if you have written a collector to merge data from the Virtual Machines table in CloudForms with a CMDB, that same integration would be as good today as it was in 2008.

Lastly, CloudForms sees everything in the provider platform, irrelevant of CloudForms putting the item there. For example, you can deploy new Virtual Machines using the Amazon console, but CloudForms still sees them. This means that when the CMDB pulls information from CloudForms, it is not only getting the asset detail to virtual machines that CloudForms provisioned, but ANY asset that is in the inventory, irrelevant of who put it there.
  
Disadvantage

This route requires specialist skills in the CMDB technology and that of the end point. The integration will require SQL or other languages used at the CMDB server as well as in depth knowledge of the database you are connecting too, in this case CloudForms. This means that the project to implement CloudForms with CMDB would be very front end loaded, being that the project would expel a lot of effort and mostly on the CMDB team to achieve the use case.
  
## Push ##

A PUSH integration for CloudForms and CMDB means that CloudForms itself pushes data changes to the CMDB when it is enabled to do so.

Example :

The integration is usually packaged using a native technology to CloudForms such as Ruby or the new Ansible Integration. The automation engineer for CloudForms would write the integration or use an off-the-shelf example to edit and meet the needs of the use cases. The use cases are the most important part of this integration type, as only the use cases covered will produce the sending of data to the CMDB and lower the drift in data between the two systems.
The use cases typically as follows;

* Provisioning – When a VM is provisioned by CloudForms, asset detail is sent to the CMDB.
* Re-Configuration – When a VM is reconfigured by CloudForms, asset detail is updated in CMDB to match the current asset inventory.
* Retirement – When a VM is retired by CloudForms, asset detail is updated in the CMDB to reflect its retired status.

These are common use cases that can all use the same method to write the data to the CMDB.
  
Advantages

All of the expertise is with the CloudForms team, the use cases that can be updated are in the CloudForms system and known to to the platform engineer.

CloudForms has the ultimate view of the platform, that it sees all hosts, clusters, datastores and the Virtual Machines themselves. It knows when the asset was discovered or removed and the lifecycle in between. Therefore if CloudForms sees this, then it can be used to trigger a push based on use cases, maybe it has not been updated for, example;

Live Migration – When a live migration happens, CloudForms sees the events to that process running. CloudForms can execute the push to CMDB based on these events being raised and seen. This is also a disadvantage that, every process needs to be covered off, as in the use cases. What is not known is not known.
  
Disadvantages

Only the use cases that have the integration added to will be covered. Example that the three use cases described in this section being Provisioning, Re-Configuration and Retirement are NOT the only use cases to cover off. Other use cases may or may not exist in the environment such as;

Live Migration – Whether CloudForms or another system moves resources round for optimization needs, the asset detail is under constant change. This process needs to be visible to CloudForms so that it can attach the push integration each time live migration is detected.

Other Automation – If CloudForms is NOT the only automation in play on the platform then this can create a drift in CMDB data – if CloudForms has not done the job then it won’t update the CMDB. There is a caveat to this, that because CloudForms can see assets irrelevant of who put them there, then it is in a good place to update the CMDB. This is also an advantage and discussed previously.
  
Push Challenges

A PUSH will require certain detail to be successful such as the following;

* CMDB Server Address.
* CMDB Server Authentication.
* Asset Key.

The Asset Key is important and allows you to identify a record in the CMDB to update it. In the case of HP uCMDB it uses a CI ID (Configuration Item, Identifier). CloudForms is going to need to know about the CI ID for every asset that it will talk to the CMDB about. Therefore you should look to store the CI ID value with the asset in CloudForms. That way whenever any automation runs in CloudForms to speak to the CMDB it can do so using the key from the asset it is currently managing.

Storing the CI ID key on the CloudForms asset is easy, we can store as a custom attribute or as a tag on any object in CloudForms. Collecting the CI ID can be done by;

* Sending the CI ID from the Agent to CloudForms over the RESTapi – When the OS starts it runs a command that sends the CI ID to the CloudForms server. CloudForms would store the value on the same object for the sender. (Disadvantage that the asset needs to be powered to update).
* Collecting the CI ID through Smart-State – CloudForms has a technology called Smart-State, it can collect files, registry keys, settings, users, groups, patches and application detail from any asset in ANY power state. Define an Analysis Scan in CloudForms to pick up the CI ID from Windows and Linux assets and store as tag or custom attribute. You could have this happen as part of every provision but also any discovery of new virtual machines. This would mean CloudForms can manage CMDB detail for assets it did NOT provision.
  
## Agents ##

Often a CMDB uses Agents of its own to collect and push asset detail to the CMDB. This method is mostly a PUSH because the agent collects what data it can locally, and sends the data to the CMDB server.

Example :

This is complementary to PUSH and PULL. The use of CMDB agents in the virtual machines can only serve to enhance the data in the CMDB though it is never a primary method for data collection.
  
Advantages

The only advantage the client agent brings is that it is another end point providing data to the CMDB.
  
Disadvantages

There are many disadvantages to the agent;

It only sees what it sees and that is usually not a lot. Local detail only.

Devices to be asset registered with the CMDB can be in many states, such as the LAPTOP could belong to someone on Maternity leave, and therefore the detail of the device is only as good as when it last connected. Maybe the Cluster is a Disaster Recovery Site, and devices are powered off, how will the site be kept up-to-date in the CMDB? The router may be offline, again the agent would fail here.

The frequency to update is determined by many factors that will alter the reliability such as;

* Time window.
* Frequency.
* Availability of Service.
* Scalability of Service.

Such as if the virtual machine is off the asset information cannot be sent to the CMDB.

This is similar to if the Agent is NOT installed in the VM, you will not get the data in the CMDB.

If the agent fails, is broken etc…again no data in the CMDB.

The agent needs updating and maintaining, as you upgrade the CMDB you have a software distribution nightmare of updating every agent in every asset.
  
## Recommendation ##

It is difficult to recommend any one of the integrations as quite often it comes down to project, time and people, not technology.

If you have CMDB resources that can write collectors then a PULL integration is more strategic.

If you have neither the CMDB expertise, time constraints, or have only a single use case like just retirement, then a tactical integration such as PUSH would be more suitable. This is assuming that basic level integration can be demonstrated by the CMDB team such as;

* How to create a new CI.
* How to modify existing CI.
* How to delete/retire a CI.

These three use cases shown in a scripting language of the CMDB choice would guarantee the success of integrating the same use cases with CloudForms. All available Keys, Authentication are provided by the CMDB team.
  
## Conclusion ##

Whilst our recommendation is to use PUSH or PULL depending on what you have available, it is common to see  implementations choosing to use both PUSH and PULL methods. This maybe because initial project timelines are tight or that resources are not available at the times required. The CMP should be flexible enough to work with both methods giving the most value to the project.
