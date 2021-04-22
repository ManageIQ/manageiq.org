---
title: Using an Ansible Job Template in a CloudForms Service Bundle 
date: 2016-08-17
tags: ansiblecloudformsansible cloudforms
author: ConnorJGilchrist
---

This is part 5, the last post of our series on [Ansible Tower Integration in Red Hat CloudForms] [https://www.redhat.com/en/blog].
As you saw from previous articles, Job Templates can be launched from CloudForms via Ansible Tower to run playbooks on targeted hosts. In particular we have looked at launching them from a [button on a VM] [https://www.redhat.com/en/blog] and from the [CloudForms Service Catalog] [https://www.redhat.com/en/blog]. In this last article, we examine how to expose Job Templates as Service Items to utilize them as part of a Service Bundle.
In this example, we reuse our ‘Deploy PostgreSQL’ Job Template to automate the installation and configuration of a PostgreSQL database on a newly provisioned VM. Our service bundle will deploy a new RHEL7 instance on Amazon EC2 and launch our Ansible Job Template to configure the database on this host. The Ansible Job Template can only run once the AWS instance is created. To ensure the ordering, we add an initial ‘pre0’ state with a value of /Service/Provisioning/StateMachines/Methods/GroupSequenceCheck to the state machine schema used to launch our Ansible Type service item /ManageIQ/ConfigurationManagement/AnsibleTower/Service/Provisioning/StateMachines/Provision.
  
CloudForms Bundle Ordering
  
Now we create a simple provisioning service item called ‘Deploy RHEL7 instance’ based on an Amazon RHEL7 AMI. The ‘Provisioning Entry Point State Machine’ for this Service Item is set to ‘/Service/Provisioning/StateMachines/ServiceProvision_Template/CatalogItemInitialization’ as we will use it in our Service Bundle.

CloudForms Edit Service Catalog
  
Similarly, we create a Service Item of type ‘Ansible Type’ for the launch of our Job Template. ‘Provisioning Entry Point State Machine’ for this Service Item is set to ‘/ConfigurationManagement/AnsibleTower/Service/Provisioning/StateMachines/Provision/provision_from_bundle’.
  
CloudForms Deploy PostgreSQL
  
Note that none of these Service Items have a Dialog set or are displayed in a catalog. We will simply use them as part of our Service Bundle.
Next, we create a Service Dialog which will prompt the user for some details. We create a new dialog from ‘Automate > Customization > Service Dialogs’. As you can see, our ‘RHEL7 with PostgreSQL’ dialog contains two tabs and elements specifying the instance name and the database details.
  
CloudForms Edit Dialog RHEL7 PostgreSQL
  
Here is a summary of each elements as configured in our example:

By now, you should recognize most of these fields:
‘vm_name’ is used to specify the name of the newly provisioned instance. It is automatically handled by CatalogItemInitialization to propagate the specified name as part of the provisioning process. We set the ‘Auto Refresh other fields when modified’ option to trigger the population of the ‘limit’ element.
‘limit’ is used by Ansible Tower to filter on which host the Job Template must run. In our example, we set the ‘auto-refresh’ option and specify ‘Get_VM_Name’ instance as ‘Entry Point’. The associate ‘get_vm_name’ simply replicates the value from ‘vm_name’ element.
  
CloudForms Dynamic Dialog
  
‘param_postgresql_databases’ and ‘param_postgresql_users’ elements allow the user to override the default extra variables set on the Ansible Job Template.
Now that the Service Dialog is defined we can create a new Service Bundle. We specify the ‘RHEL7 with PostgreSQL’ dialog and the ‘CatalogBundleInitialization’ Provisioning Entry Point State Machine.

In the ‘Resources’ section, we add our two Service Items and specify their order of provisioning.

That’s it. Our new service is now available as part of our service catalog. We can go ahead and order it to provision a new instance on Amazon and run an Ansible playbook on it. If configured properly, a fully configured PostgreSQL database is deployed and configured on a new Amazon instance.
The code base for this example can be found on GitHub.
  
This concludes this series of articles on Ansible Tower integration introduced in Red Hat CloudForms 4.1. We have seen how the two management tools integrate and we explored examples on how to leverage Ansible automation within CloudForms. Additional documentation on [Red Hat CloudForms] [https://www.redhat.com/en/blog] and [Red Hat Ansible Tower] [https://www.redhat.com/en/blog] can be found on the [Red Hat Customer Portal] [https://www.redhat.com/en/blog].

Share this:
[Twitter] [https://www.redhat.com/en/blog?share=twitter&nb=1]
[Facebook] [https://www.redhat.com/en/blog?share=facebook&nb=1]
