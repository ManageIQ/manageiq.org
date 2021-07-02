---     
title: Container Management with CloudForms – Service Health
date: 2017-10-11
tags: cloudforms container management operations cloudforms, container, management, openshift 
author: Jerome Marc
---
 
This blog is part 3 of our series on Container Management with CloudForms.
  
A second area of concern identified when managing a containerized environment is service health. We need to operate our containers with good performance, reliability, and ensure high enough utilization ratios. In this post, we focus on the container based infrastructure, its on-going resource consumption, and how we can monitor and optimize its health.

Container environments are highly dynamic and can grow quickly. It is important to keep an eye on resource capacity and usage and get notified when the environment is at risk of running out of resources, so that we can prevent unexpected service degradation. These performance issues can occur at any layer of the stack, and we need to be notified uniformly.
  
We also need to make sure that our infrastructure is sized correctly. This way we can prevent performance issues, but also prevent over-provisioning, which leads to higher costs.
  
And finally, in order to guarantee a reliable service, we want to make sure that our configurations are correct and stay stable over time.
  
CloudForms can help improve and maintain the health of those environments.
  
CloudForms can monitor resource consumption at all layers of the stack, from hypervisors and virtual machines, to storage and networks, but also containers themselves. CloudForms can also discover usage trends, and tells us when we need to add extra capacity.
  
Secondly it can alert us based on performance thresholds, or events, or based on a combination of events at different layers in the stack.
  
CloudForms provides right-sizing recommendations based on normal operating ranges for the underlying infrastructure. This allows us to make sure we have enough resources to cover the environment needs, as well as our projected growth. This also ensures high utilization ratios and an efficient use of the infrastructure.
  
And finally CloudForms automatically detects configuration changes at all layers of the stack with Smart-State analysis. This feature provides the ability to inspect hosts, virtual machines or containers to collect information. It can even look at file contents and other settings, without the use of an agent. This configuration data can then be compared to a master image or tracked over time, and CloudForms can alert if settings are changed.
  
The following video demonstration highlights these capabilities in CloudForms:

* Capacity & Forecasting
* Alerts & Notifications
* Resource Right-Sizing
* Configuration Health-Check and Drifting
