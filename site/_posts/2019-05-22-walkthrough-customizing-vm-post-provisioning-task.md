---
title: Walkthrough - Customizing VM Post Provisioning Task 
date: 2019-05-22
tags: cloudforms
author: Neha Chugh
---
 
Red Hat Cloudforms provides several ways to customize virtual machine provisioning,  the out-of-the-box VM Provisioning State Machine has multiple steps through which VM provisioning request crawl, among them one of the step is PostProvison, this step is used to perform post-provisioning activities on the provisioned virtual system.  In this article, I will explain how to customize PostProvison method using an example of ‘add an additional disk to the VM’ use case.  

## Use case ##

VMWare Template from which virtual machines suppose to be provisioned has two disks attached, we would like to use this template to provision virtual machine but with an option to ask users if they would like to add an additional disk to the provisioned virtual machine, if the user opts for the option, he should also be able to set the size for the additional disk.

Upon successful VM provisioning, there should be total of three disks attached to the virtual machine, the third disk size is chosen by the user.

## Implementing the use case ##

In order to implement this use case, several modifications and customizations are needed,    Here is the list of actions that need to be performed.

1. Create a Service Catalog with an option for end users to choose if an additional disk to be attached the provisioned virtual machine or not, if selected yes, prompt to enter the disk size.  
2. Create a method either in Ruby or Ansible Playbook which will add an additional disk to provisioned vm.
3. Extend the default provisioning state machine and add that method as part of statemachine.
Lets see step by step procedure of implementing the same.
  
## STEP 1: DIALOG CREATION ##
  
In order to create a service catalog, first, you need to create service dialog by navigating to  Automation -> Automate -> Customization -> Service Dialog.

In this dialog, the end user will enter the vm name, size of disk (in gb) and check additional disk required checkbox, if checkbox is not checked than it will not add an  additional disk.
  
Things need to be considered while passing dialog information:
  
a) VM Name: this information is passed so that newly provisioned vm should be of the same name that is being passed by an end user. This is letting us assign names to VMs at provisioning time.

Here the Label can be anything but the Name should be “vm_name”. The reason for that is vm_name, which is key_name recognized by the CatalogItemInitialization.

 b)  Size of Disk: In this box, the end user needs to pass the disk size in GB.

Here, Label is for the end user visibility but we should be concerned with the value passed in the Name box. This value is used further in our ruby method.
  
c) Additional Disk required: This is a checkbox if is being marked by end user than only new additional disk would be added else it will skip the request.

Again,  Label is for end user visibility but we should be concerned with value passed in Name box. This value is  further used in our ruby method.
  
Once Dialog is prepared, Lets got to next step i.e. creation of ruby method.
  
## STEP 2: METHOD CREATION ##

A Ruby method has been created which will add a disk to the newly provisioned vm.

In the above method, the VM information is fetched from the “prov” object which is persistent till the provisioning get completed. Prov object could be provisioning request, provisioning task or template object i.e.
  
prov=$evm.root['miq_provision_request'] $evm.root['miq_provision'] $evm.root['miq_provision_request_template']
  
It’s a $evm.root which make the value persistent so to transit the value from one state to another state in the provisioning state machine.
  
Now to add an additional disk in the newly provisioned vm, for that you can find the vm object from prov object as this object has associations to other objects which are defined in the automate service models (“vmdb/lib/miq_automation_engine/service_models”)  
  
For example, in our method we find the vm object as
  
Vm = prov.vm (vm has direct association with prov object as defined in automate model)
  
It will first validate if “additional disk required” is checked or not. For that, first we need to fetch the dialog value for “check_additonal_disk” like below:
  
additional_disk = prov.get_option(:dialog_check_additional_disk)
  
It will return the output either in t or f if its “t” it is checked or if it is “f”  it is not checked.
 If it is checked, then add disk method will be executed.
  
To add an additional disk, “addDisk” method has been used with VM object. This method expects below  parameters so to get it executed i.e.
  
* Storage_name
* Size in mb
* Optional values like:  
* Dependent Disk
* Thin provisioned  
  
In above method,, I  fetched the size information value dynamically from end users i.e.
  
size = prov.get_option(:dialog_size).to_i
  
During service dialog creation, the name value for disk size is “size” and tot value we need to prefix with dialog that’s why it is fetched as dialog_size.  
  
And storage name is chosen the same where vm resides i.e. vm.storage_name.
  
Once the method created, you can validate it. If validate successfully, then save it and create an instance for your add_disk method, just like below:

After Instance Creation, Next step is to Extend the Provisioning state machine.
  
## STEP 3: EXTENDING STATE MACHINE ##
  
The first thing that we must do is copy the ManageIQ/Infrastructure/VM/Provisioning/StateMachines/VMProvision_VM/Provision VM from Template (template) state machine instance into our own custom domain so that we can edit the schema.
  
Now we edit the schema of the copied class:

Add the new states i.e. AddDisk. Make sure it is added after Post provision state so that VM should be provisioned before adding an additional disk.

## STEP 4. Add Our New Instance to the Copied State Machine ##

Now we edit our copied Provision VM from Template state machine instance to add the AddDisk instance URIs to the appropriate steps (see [Adding the instance URIs to the provisioning state machine](<https://pemcg.gitbooks.io/mastering-automation-in-cloudforms-and-manageiq/content/chapter22.html#c22i7>)).

## STEP 5:  Order a Service Catalog so to provision new vm with additional disk ##

Here we see the second disk attached to the virtual machine. Our modified VM provisioning workflow has been successful.
  
## Wrapping it up ##

In this walkthrough, we demonstrated how vm provisioning state machine can be extended to perform custom Post Provisioning tasks, we used add disk example to demonstrate this flexibility but you may extend it as per your requirement. Some examples, taking snapshot of vm immediately upon provisioning, registering  the virtual machine with third party tool etc,

virtually unlimited use cases.
