---
title: Multi-tier Application Deployment using Ansible and CloudForms (Video) 
date: 2017-11-28
tags: AnsibleCloudFormsManagementOperationsProvisioning
author: ConnorJGilchrist
---

Multi-tier Application Deployment using Ansible and CloudForms (Video)
Posted on: November 28, 2017
Victor Estival Lopez, Red Hat  
This article is a follow up on our previous blog post [VMware provisioning example] [https://www.redhat.com/en/blog] using Ansible, where we deployed a simple virtual machine on VMware using Ansible from the CloudForms service catalog. In this week’s demonstration, we go a step further and provision a multi-tier application on Amazon Web Services (AWS). Once provisioned, the application lifecycle, as well as all day 2 operations are performed from Red Hat CloudForms.
In our example, we deploy the [Ticket Monster] [https://developers.redhat.com/ticket-monster/whatisticketmonster] application on JBoss EAP servers with a PostgreSQL back-end database. We then register our EAP servers to an Amazon Elastic Load Balancer (ELB). The Ansible playbook for this example can be found on this [github repository] [https://github.com/jeromemarc/workflow-demo/blob/master/plays/ticket-monster-aws.yml].  
In the demonstration video, you show how this playbook execution:
Deploys an instance for hosting our database
Deploys 2 instances for hosting our application servers
Installs PostgreSQL on the database instance
Configures the database (e.g. schema, users, connections, etc)
Deploys Jboss EAP on both application server instances
Configures Jboss EAP, the database driver and connection, and deploys the Ticket Monster web application
Links both JBoss EAP servers to our Amazon Elastic Load Balancer
  
The Amazon EC2 instances created by this playbook are linked to the CloudForms service. We can find all detailed information about the instances, as well as the load balancer from the Red Hat CloudForms user interface.
 [https://www.youtube.com/watch?v=HAHoROzP3hc&feature=emb_title]  
  
The Red Hat Knowledge Base article, including the necessary playbooks to implement this example, are available on the [Red Hat Customer Portal] [https://access.redhat.com/articles/3060111].

Share this:
[Twitter] [https://www.redhat.com/en/blog?share=twitter&nb=1]
[Facebook] [https://www.redhat.com/en/blog?share=facebook&nb=1]

Posted in AnsibleCloudFormsManagementOperationsProvisioning
