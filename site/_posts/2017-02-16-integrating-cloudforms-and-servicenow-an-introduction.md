---     
title: Integrating CloudForms and ServiceNow- An Introduction
date: 2017-02-16
tags: cloudforms servicenow
author: Goetz Rieger
---

I was presenting the CloudForms service catalog and self service capabilities to a customer, when the head of operations says: “This looks great, but there is no way we are going to use this. The tool we use for everything from service desk to request tracking to service management is ServiceNow. Can you integrate your service catalog into ServiceNow?”

ServiceNow is a hosted service management offering used by many companies that excels in catalog creation, configuration management database and incident tracking. CloudForms can be integrated with many tools and management solutions through APIs and Automation. In this article, we look at some common integration scenarios between CloudForms and ServiceNow.

## Service Catalog Integration ##

This is actually what the customer referenced above was after. Their main objective was to give users the ability to order services from the ServiceNow catalog, but have CloudForms execute the workflow. The user continues to use a familiar tool, with CloudForms provisioning and workflow capabilities used in the background. The process is as follows:

* A user orders a service from the ServiceNow catalog.
* ServiceNow calls CloudForms to execute the provisioning and automation workflow.
* CloudForms returns the status of activities it performs so that ServiceNow can be kept up to date.

At first look, there is a catch: ServiceNow is a hosted solution and CloudForms runs inside the customer’s datacenter. ServiceNow must be allowed to connect to CloudForms directly through the firewall. In most environments, this would be a problem, but luckily, ServiceNow has a small application called a “MID Server” that can be run behind the firewall and which monitors ServiceNow and executes tasks locally.

## Incident & Ticketing Integration ##

This might be one of the most common use cases for CloudForms and ServiceNow integration. If ServiceNow is used as the central incident tracking and ticketing tool, it needs visibility into what management actions CloudForms is performing and their status. Here is an example:

* For every system that is provisioned through CloudForms an “OPEN” ticket request will be send to ServiceNow.
* This ticket provides the request details. The ticket status is set to “AMBER”.
* Once the provision completes, CloudForms again sends ServiceNow a ticket status change. The ticket is set to “GREEN” and it is automatically closed.
* Alternatively, if the provisioning fails, the ticket is left open and its status is set to “RED”.

This would give ServiceNow the details needed to monitor its request queues and to decide how to handle tickets of a certain type and status.

## Configuration Management Database (CMDB) Integration ##

CMDBs are widely used in enterprises to track the state of assets in IT environments. One of the problems with a CMDB is that the data in it goes stale quickly. To keep the data up-to-date, it’s important to integrate management systems to update it periodically. By connecting into the management functions in CloudForms, data pertaining to a resource is sent to the CMDB throughout the lifecycle of the resource.

An example of this would be a provisioning workflow:

* Upon the successful provisioning of a virtual machine, CloudForms can update the CMDB with information such as name, IP address, sizing, owner, infrastructure relationships, classifications, etc.
* If a virtual machine is reconfigured, CloudForms can update the CMDB to ensure the new details are accurate.
* Lastly, when the virtual machine is retired, CloudForms can update or remove the resource from the CMDB.

## Conclusion ##

These are just some examples of how CloudForms can be used with ServiceNow. They show how a powerful management system, designed and developed in an open way, can be integrated to provide even more benefit.
Additional details on the integration between ServiceNow and CloudForms can be found in the [Red Hat CloudForms documentation](<https://access.redhat.com/documentation/en-us/red_hat_cloudforms/4.2/html-single/integration_with_servicenow/index>).
