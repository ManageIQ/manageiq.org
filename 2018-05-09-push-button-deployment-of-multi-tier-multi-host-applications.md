---
title: Push-button deployments of multi-tier, multi-host applications 
date: 2018-05-09
tags: cloudforms
author: ConnorJGilchrist
---

Here is the video of the live demo Maxim Burgerhout and myself performed at [Red Hat Summit in San Francisco 2018] [https://agenda.summit.redhat.com/SessionDetail.aspx?id=153563].
It shows how you can make use of CloudForms’ ansible inside (zero ruby) to deploy a multitier, multihost application across Windows and Linux, interact with F5 load balancers, register to Satellite 6 and Red Hat Insights and track everything you are building with dynamic resource objects. This will give you a full view of an application to infrastructure relationship. Additionally, we show how smart state analysis can be used in AWS for Windows and Linux to understand what is running on your instance and perform a compliance check and action against the vulnerable instance through an auto-generated playbook via insights. Last but not least we are retiring the service, thus removing the hosts from satellite6 and freeing up subscriptions, deleting the VIP, pool, nodes from the F5 load balancer and terminating the instances in AWS.
The ansible playbook and roles can be found here can be found here: [https://github.com/rh_summit_2018_full_demo]
[https://www.youtube.com/watch?v=qxUjcRzobbI]

Share this:
[Twitter] [https://www.redhat.com/en/blog?share=twitter&nb=1]
[Facebook] [https://www.redhat.com/en/blog?share=facebook&nb=1]
