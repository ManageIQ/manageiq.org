---     
title: Deploying CloudForms at Scale 
date: 2017-05-09
tags: cloudforms
author: Peter McGowan
---

One of the challenges of deploying CloudForms to manage a large environment is knowing how to tune it – what knobs to turn and dials to watch for.

Red Hat’s Systems Engineering team have just completed a document entitled “[Deploying CloudForms at Scale](<https://access.redhat.com/documentation/en-us/reference_architectures/2017/html/deploying_cloudforms_at_scale/index>)”. This describes the architectural components that affect large-scale deployment, and details the monitoring, troubleshooting and scaling measures that can be taken to optimally tune each component.

The document is divided into three sections:

## Part I – Architecture and Design ##

* Architecture discusses the principal architectural components that influence scaling: appliances, server roles, workers and messages.
* Regions and Zones discusses the considerations and options for region and zone design.
* Database Sizing and Optimization presents some guidelines for sizing and optimizing the PostgreSQL database for larger-scale operations.

## Part II – Component Scaling ##

* Inventory Refresh discusses the mechanism of extracting and saving the inventory of objects – VMs, hosts or containers for example – from an external management system.
* Capacity and Utilization explains how the three types of C&U worker interact to extract and process performance metrics from an external management system.
* Automate describes the challenges of scaling Ruby-based automate workflows, and how to optimize automation methods for larger environments.
* Provisioning focuses on virtual machine and instance provisioning, and the problems that sometimes need to be addressed when complex automation workflows interact with external enterprise tools.
* Event Handling describes the three workers that combine to process events from external management systems, and how to scale them.
* SmartState Analysis takes a look at some of the tuning options available to scale SmartState Analysis in larger environments.
* Web User Interface discusses how to scale WebUI appliances behind load balancers.
* Monitoring describes some of the in-built monitoring capabilities, and how to setup alerts to warn of problems such as worker restarts.

## Part III – Putting it into Practice ##

Design Scenario takes the reader through a hypothetical design, scaling CloudForms Management Engine appliances in a region with several zones to manage a hybrid cloud.
The document is available here: (<https://access.redhat.com/documentation/en-us/reference_architectures/2017/html/deploying_cloudforms_at_scale/>)
