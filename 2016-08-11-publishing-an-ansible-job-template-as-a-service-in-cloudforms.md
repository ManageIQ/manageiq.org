---
title: Publishing an Ansible Job Template as a Service in CloudForms
date: 2016-08-11
tags: ansiblecloudformsansible
author: ConnorJGilchrist
---

This is part 4 of our series on [Ansible Tower Integration in Red Hat CloudForms] [https://www.redhat.com/en/blog].
In the [previous article] [https://www.redhat.com/en/blog], we have seen how Ansible Job Templates can be launched from a VM button in CloudForms. In this article, we explore how Ansible Job Templates can be published as Catalog Items and made available for end user consumption from a CloudForms Service Catalog.
In this example, we use [ec2_elb_lb] [https://docs.ansible.com/ansible/ec2_elb_lb_module.html], an Ansible core module, to demonstrate how we can easily extend the capabilities of CloudForms by re-using automation already provided by Ansible. In particular, we provide the ability to create an Amazon Elastic Load Balancer (ELB) from CloudForms Service Catalog without having to write any Ruby code.
A simple Ansible Playbook for this example can be found on [GitHub] [https://github.com/jeromemarc/cloudforms-ansible-tower] and imported into Ansible Tower. A ‘Create AWS ELB’ Job Template is created with this playbook, allowing the end user to specify input values for the name of the ELB and a list of instances to associate to the new load balancer (as an extra variable called elb_name and instance_ids on the Job Template).
In CloudForms, we can auto-generate a dialog following the steps from our [previous article] [https://www.redhat.com/en/blog] from ‘Configuration > Configuration Management > Ansible Tower Job Templates > Create AWS ELB’ and selecting ‘Create Service Dialog from this Job Template’ from the ‘Configuration’ button.
The generated Service Dialog can be edited. In our case, we can remove the limit field (as this Ansible Job does not require to run on a particular host) and remove the ‘read-only’ option from  the other fields.
  
Simple AWS ELB Dialog
  
Next, we create a Service Item by navigating to ‘Services > Catalogs > Catalog Items’ and selecting ‘Add a new Catalog Item’ from the ‘Configuration’ button. You will notice in CloudForms 4.1 that new Catalog Item Types are introduced. We select ‘AnsibleTower’ in our example, which causes CloudForms to present us with a dialog prompting for Ansible Tower related details.
  
Adding a new Service Catalog Item
  
We populate the name and description, and select a Catalog (previously created) where we want our new Service Item to be displayed. For the Dialog field, we select the Service Dialog we just created. The Provider and Ansible Tower Job Template fields are specific to the AnsibleType catalog item type and specify which Ansible Tower provider to reach out to as well as which Ansible Job Template to launch when the Catalog Item is ordered. In our example, we select our Ansible Tower provider from the drop down list and our ‘Create AWS ELB’ from the Job Template drop down (automatically populated with all available job templates). The Provisioning Entry Point State Machine can remain as default.
Editing Service Catalog Item Deploy PostgreSQL
  
Once saved, we can change the icon for the Service Item and make it available to our end users. In this example, we have created a specific group and role and configured service visibility by tag. Our Service Item is available in CloudForms Self-Service portal.
  
CloudForms Self-Service Create new AWS ELB
  
The user can order the service by specifying input values, adding it to the shopping cart and checking it out.

Upon ordering, CloudForms launches the Job Template via Ansible Tower passing the dialog values and receives a notification from Ansible Tower once complete. A new Amazon Elastic Load Balancer is deployed.
In this article, we looked at how to publish an Ansible Tower Job Template in a CloudForms Service Catalog. We successfully ordered this service from CloudForms Self-Service portal. In the following article, we will go further and explore how to use Ansible Service Items as part of a CloudForms Service Bundle and automatically launch Job Templates on newly provisioned VMs.

Share this:
[Twitter] [https://www.redhat.com/en/blog?share=twitter&nb=1]
[Facebook] [https://www.redhat.com/en/blog?share=facebook&nb=1]
