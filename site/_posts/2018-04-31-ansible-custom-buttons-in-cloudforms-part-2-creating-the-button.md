---     
title: Ansible Custom Buttons in CloudForms (Part 2 creating the button) 
date: 2018-04-31
tags: AnsibleCloudFormsansible cloudforms
author: CHristian Jung
---

This part will focus on how to create the Custom Button using an Ansible playbook.

## Creating Custom Button ##

CloudForms 4.6 has introduced more options while creating a button. This topic will be discussed in another post.

Navigate to Automation, Automate, Customizations, Custom Buttons.
Select the VM and Instance node.

Select Configuration, Add a new Button Group

Fill out the form as follows;

Select the button group you created in the previous steps.

Click on Configuration, Add a new Button

Fill out the form as follows;

If a user clicks on the button, CloudForms will show the Dialog associated with the Service Catalog Item and will run the specified Ansible Playbook with the user provided details.
  
Click on Advanced to add more details:

The Enablement expression is validated to enable or disable the button based on the specified check. This allows you to enable the button only if some specific requirements are met. In the example above, we want to run an Ansible Playbook inside the VM. The expression validates the VM Power State and the button will be disabled if the VM is not powered on. An additional text will inform the user how to solve the issue.
  
The Visibility allows you to define an expression which is validated to decide if the button should be shown at all. For example, if the guest Operating System is not Linux, the Ansible Playbook used will not work. If CloudForms detects a non-Linux VM, the menu will not be shown at all.
  
Click on Add to create the button.

## Testing it Out ##

Navigate to a Virtual Machine, click on Operations, Install additional package:

After clicking the button, a new dialog will ask for details:

Specify a package to be installed on the virtual machine.

Note that if the VM is powered off, the button should be disabled and a pop text with the hint specified earlier will be shown instead,

If the selected VM does not have Linux installed, the button and the corresponding menu should not show up at all.

In this example, a Windows VM was selected and the Operations button is not shown.

## Conclusion ##

This complete an example of building custom buttons utilizing Ansible Playbooks with CloudForms. This scenario allows users with unlimited, or no access to the virtual machine, to perform certain predefined actions. Further optimizations would be to simplify the dialog (hide the dialog element Machine Credentialsand Hosts, since they are not needed.
  
Instead of allowing the user to specify any package name in the text box, a drop-down list could be used to only allow the user to choose from a predefined list. The Role Based Access Control of CloudForms could also be used to allow access to this functionality only to specific user roles.
