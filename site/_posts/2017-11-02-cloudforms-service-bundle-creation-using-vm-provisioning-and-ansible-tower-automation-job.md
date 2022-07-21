---
title: CloudForms Service Bundle Creation using VM Provisioning and Ansible Tower Automation Job 
date: 2017-11-02
tags: ansible cloudforms operations provisioning services
author: Peter McGowan
---

Service catalog bundles are a really useful CloudForms feature that enable us to mix and match various existing service catalog items together to form bundles of tasks.
  
One of the more useful examples of a bundle is to create a new VM, and then run an Ansible Tower job template on the resulting VM to configure it with an application role. If we have an Ansible Tower server added to our CloudForms installation as an automation provider, this is quite simple. We described the procedure to configure an Ansible Tower provider in CloudForms as part of our previous series on Ansible Tower integration in CloudForms 4.1.
  
In this example we’ll combine two existing service catalog items. The first creates a new CentOS 7 virtual machine in a Red Hat Virtualization provider, and the second installs a simple LAMP stack using a job template defined in an Ansible Tower server, attached to CloudForms as an automation provider.
  
Each standalone catalog item has its own service dialog. The dialog for the VM provision service simply prompts for the service name and VM name, as follows:

The dialog for the Ansible Tower service has been auto-created by selecting the job template in the CloudForms WebUI, and clicking the Configuration -> Create Service Dialog from this Job Template button. This dialog prompts for the Limit override – the name of the VM that we want to run the playbook on – and the extra variables to be passed to the playbook at runtime, as follows:

## Creating a Bundle Service Dialog ##

When several service catalog items are combined into a bundle, it is useful to merge their respective service dialogs into a single dialog that can be presented to the user when the bundle is ordered. The dialogs are then removed from the individual service catalog items so that the ordering user is simply presented with a single dialog.
  
The new combined service dialog for this example is as follows:

In this case the Limit dialog element has been removed from the Ansible Tower service dialog, so we must find a way of passing the newly created VM name into the Ansible Tower job template as the limit variable. Although for this simple example we could just pass the value that the user entered for the VM Nameelement as the limit variable, this wouldn’t work for auto-generated VM names or more complex bundles.
  
Fortunately we can adapt the automate methods to use the VM name that was used in the previous VM provision catalog item as the limit to the following Ansible Tower job template.
  
## Ensuring that the Provisioned VM is Ansible-ready ##

The Ansible Tower job template uses a ssh machine credential to connect to the managed system as the ansible-remote user, and uses sudo privilege escalation to run the playbook tasks. We must ensure that the VM provisioning workflow adds this user to the newly provisioned VM, along with the public ssh key that matches that defined with the Ansible Tower credential. This can either be done by ‘baking in’ the user into our VM template, or by running a cloud-init script such as the following as part of the provisioning workflow:
  
cloud-configssh_pwauth: truedisable_root: falseusers: - default - name: ansible-remote   shell: /bin/bash   sudo: ['ALL=(ALL) NOPASSWD:ALL']   ssh_authorized_keys:     - ssh-rsa AAAAB3NzaAA... ansible-remote@redhat.comchpasswd: list: |   root:<%= MiqPassword.decrypt(evm[:root_password]) %> expire: falsepreserve_hostname: falsemanage_etc_hosts: truefqdn: <%= evm[:hostname] %>

## Making the Automate Changes ##

We make the following changes in the automate datastore (or import the [Example automate domain](<https://github.com/jeromemarc/cloudforms-service-bundle-ansible/blob/master/example_domain.zip]>)):
  
1 Copy the /AutomationManagement/AnsibleTower/Service/Provisioning/StateMachines/Provision/CatalogItemInitializationinstance to a new domain, and rename it to provision_from_bundle. This state machine will be the Provisioning Entry Point for the Ansible Tower service item.
  
2 Edit the pre2 stage of the copied state machine to be Method::preprovision_from_bundle, as follows:

3 Copy the attached [preprovision_from_bundle](<https://github.com/jeromemarc/cloudforms-service-bundle-ansible/blob/master/preprovision_from_bundle.rb>) method to the /AutomationManagement/AnsibleTower/Service/Provisioning/StateMachines/Provision class. This method is a slightly edited version of the default /AutomationManagement/AnsibleTower/Service/Provisioning/StateMachines/Provision/provision method. It traverses the automate objects to find the :vm_target_name options hash variable that was used in the previous provisioning operation, and it does this by locating a ServiceTemplateProvisionTask with a provision_priority one less than the currently running task. By searching for a relative provision priority in this way the method will work correctly even with more complex multi-item bundles. The following diagram illustrates the objects traversed:

After making these changes the class should look like the following:

## Adapting the Ansible Tower Service For Use with Bundles ##

To enable the existing Ansible Tower service to still be used as a standalone catalog item, we recreate an identical version but call it Simple LAMP Stack (From Bundle). This new service has no dialog, and has a provisioning entry point of /AutomationManagement/AnsibleTower/Service/Provisioning/StateMachines/Provision/provision_from_bundle as follows:

## Creating the Service Bundle ##

The final step is to create the service catalog bundle, which will be called CentOS 7 LAMP Server. For the service dialog, we specify the simple bundle service dialog that we have created previously.
  
In the Resources tab we select the 2 services that will make up the bundle, and ensure that the Action Order and Provision Order are set correctly, as follows:

## Ordering the Service Bundle ##

Having created the bundle we can go ahead and order it. We complete the fields of the service dialog, and click ‘Submit’. Once the VM has been provisioned successfully and the second catalog item begins, we can see the output from the preprovision_from_bundle method in automation.log showing the traversal of the automation objects to find the correct VM name:
  
Starting Ansible Tower Pre-Provisioningmanager = Tower Automation Managertemplate = Simple LAMP StackFound prior service's parent ServiceTemplateProvisionTask task with ID: 20Found a child ServiceTemplateProvisionTask task with ID: 21Found a grandchild ManageIQ::Providers::Redhat::InfraManager::Provision task with ID: 22Adding VM Name englampsrv02
  
The Ansible job template proceeds to configure the newly provisioned VM.
  
## Further Uses ##

The advantage of service bundles is being able to mix and match catalog items together. Having created our Simple LAMP Stack (From Bundle) item, we can use it to create further bundles to create RHEL, Fedora or Ubuntu LAMP servers by substituting in the appropriate VM provision catalog item.
  
We can even create bundles that provision and configure multiple VMs, as follows:

As long as the Ansible Tower catalog item has a provision and action order that consecutively follows that of the VM that it is to be run on, the preprovision_from_bundle automate method will feed the correct limitoverride value to Ansible Tower to ensure that the job template is run on the appropriate VM.
