---
title: How to utilize Ansible Tower Jobs in Catalog Bundles 
date: 2019-08-09
tags: cloudforms
author: David Luong
---

Red Hat CloudForms allows users to put both VM provisioning and Ansible Tower jobs in the same catalog bundle, with the intention of having that tower job of customizing the VM that was just provisioned.  However, it’s not as simple as adding a VM catalog item, and then an Ansible Tower catalog item. This post will guide you through the nuances of utilizing Tower jobs in CloudForms step by step.
  
Why can’t I just use Update on Launch when CloudForms is a source in Red Hat Tower’s inventory?
  
You can, as long as you don’t mind the jobs not being concurrent for that inventory.  If you have this option checked, then whatever concurrent jobs you have, will wait, since Tower does not update the inventory while a job is being executed.
  
However, if you wish to have concurrent jobs utilizing CloudForms, please continue reading this blog post.  This is the most efficient method utilizing CloudForms I’ve run across and we are currently using this in our lab environment for reproducers in North America for CloudForms CEE team.  A caveat of this is that you cannot have 2 VMs of the same name in your CloudForms environment, if you do, the limit will potentially be set to all of the VMs that match that name.
  
So how do I update the inventory for the newly provisioned host to Tower if we’re not updating on launch?
  
We will be utilizing an ansible playbook to use an API call to ad hoc add a host to the CloudForms inventory in Ansible Tower
  
What roles do I need to have enabled on the worker appliance for this to work?
  
* Automate
* Embedded Ansible
* Provider Inventory
* Provider Operations
  
You will also need to add the appropriate VM provider and Ansible Tower provider
  
Setting up the repository for embedded ansible
  
Go to Automation > Ansible > Repositories > Add New Repository, and use the following URL:

(<https://github.com/rh-dluong/cloudforms-tower-example.git>)

You will need to set the tower_user and tower_password extra vars on your own for this to work.  This user will need to have modification rights on the inventory you’re utilizing for the tower job.  You can do this through automate, service dialog, a vault/vars file or by modifying the playbook directly.
  
Customizing automate
  
You will need to create a new automate domain, for the example, my GitHub repository, it will be lab_maintenance.
  
1. Copy and modify AutomationManagement/AnsibleTower/Operations/StateMachines/Job/wait_for_ip method

* Original line:   ip_list = vm.ipaddresses
* Changed line:  ip_list = vm.ipaddresses.grep(/\./)
  
The reason for this modification is to wait for an ipv4 address, as CloudForms by default just waits for the first IP it discovers and it’s usually an ipv6 address.
  
2.Then create an ansible playbook method, picking the playbook found in the synced repository, with the following modifications:

* Hosts is set to ${/#miq_provision.destination.ipaddresses.sort.first}
* Input parameters are set as followed:

You will need to change the inventory number to whatever your inventory number is from tower that you want to utilize with the job template.  You can find the inventory number by navigating to the inventory in the Ansible Tower UI and inspecting the URL

* Example, 3 is the inventory number according to this URL: (<https://tower.example.com/#/inventories/inventory/3?inventory_search=page_size:20;order_by:name>)

3.Create an instance called vm_name_limit and set it to the following:

Create a method in the same class and have it filled out like so:
  
vm_name = $evm.root[‘dialog_option_1_vm_name’]
unless vm_name.nil? || vm_name.length.zero?
limit = $evm.object
limit[“data_type”] = “string”
limit[“required”] = “true”
limit[“value”] = vm_name
end
  
This sets the limit to the dialog_option_1_vm_name dialog field, which ansible tower uses as the host, if you’re using CloudForms as a source for the inventory
  
4.Copy and modify the instance /Infrastructure/VM/Provisioning/StateMachines/VMProvision_VM/template
  
Add the WaitForIP and Playbook steps to the VMProvision_VM class after PostProvision and fill out the values like so:

## Creating the Service Dialog ##

We will need to create a service dialog with 2 necessary fields:
  
* option_1_vm_name
* limit
  
The limit is dynamic, and the entry point is set to the vm_name_limit instance we created earlier.  This is so we can set the limit to the vm that was just provisioned. Create this field first.
  
Create the option_1_vm_name field second, as it’s static, and you’ll need to select “limit” under Fields to Refresh under the Options tab
  
## Creating the Catalog bundle ##

Create a VM catalog item and then create an ansible tower job catalog item.  Then add both items to the bundle. Have the VM catalog item be 1st, and the tower job second.  In the following example, the CloudForms 4.7 catalog item is the VM catalog item, and Quick Setup is the ansible tower job item

## Wrapping up ##

After all that you should be good to go!  These are the steps I’ve had to create since provisioning a CloudForms appliance and having the post provision modifications from Tower took around 30 minutes each.  If I had just done the update on launch option on the inventory, we would only be able to provision a reproducer every 30 minutes. Now with this, we can have concurrent jobs, enabling us to provision any number of reproducers in the same 30 minute time window.  I have examples of an automate domain and service dialog you can utilize in the same github repository as the one mentioned for the playbook, so you can skip all of this and import them as you wish.
