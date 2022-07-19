---     
title: Using Ansible workflows in CloudForms 
date: 2019-06-04
tags: ansible cloudforms ansible, cloudforms 
author: Conristian Jung
---
 
Ansible continues to grow and is the strategic automation engine for Red Hat’s business. Having a solid and constantly improving integration with Ansible is key for CloudForms’ future success.  
  
Ansible Tower Workflows are widely used in by the industry to orchestrate and govern interactions between different playbooks. CloudForms has been able to run Ansible Tower Jobs since its 4.1 release. Starting with CloudForms 4.7, we will expand this support and will be able to utilize Workflows from the Service Catalog.

## Setup ##

CloudForms is using the concept of Providers, to integrate with other systems. Each Provider integration takes care of building and maintaining an up to date inventory, executing operational tasks, listening to events, and some also support features like Metric Collection or more.  
  
The existing Ansible Tower Provider was extended to include existing Workflows into the inventory. If an Ansible Tower Provider was already configured, CloudForms will automatically add the Workflows to its inventory, after the Upgrade to 4.7 was successfully rolled out. Instructions on how to upgrade CloudForms to 4.7, can be found in the [Migrating to Red Hat CloudForms 4.7] (<https://access.redhat.com/documentation/en-us/red_hat_cloudforms/4.7/html/migrating_to_red_hat_cloudforms_4.7/index>) guide.

Adding a new Ansible Tower Provider is very simple. Navigate to “Automation”, “Ansible Tower”, “Explorer” and click on “Configuration”, “Add a new Provider”.  

Workflows have been introduced with Ansible Tower 3.1. Instructions on how to create and use Workflows can be found in the [Ansible Tower Documentation] (<https://docs.ansible.com/ansible-tower/latest/html/userguide/workflow_templates.html>).

## Ansible Tower Workflows ##

After the inventory was updated in CloudForms, Ansible Tower Workflows can be found in “Automation”, “Ansible Tower”, “Explorer” and by clicking on “Templates”.

The new “Type” column will help to separate Workflows from regular Jobs. After clicking on a Workflow, a Detail page will give additional information.

## Service Dialogs and Catalogs ##

From this page, a Service Dialog for the currently selected Workflow can be automatically generated. The Service Dialog will automatically be populated with all extra_var and survey fields. To verify the result or customize the Service Dialog to make it more user-friendly, navigate to “Automation”, “Automate”, “Customization” and “Service Dialogs” in the accordion on the left.  

NOTE: Ansible Tower Workflows do not support the “limit” parameter. Since different Jobs in a Workflow can potentially point to different inventories, a “limit” might break a Workflow and is therefore currently not support.  
  
When creating a Service Catalog item select the Ansible Tower Provider and from the list of the “Ansible Tower Templates” the appropriate Workflow. Note the new section “Workflow Templates” at the end of the drop-down list.

Instructions on how to build a Service Catalog with some examples to get you started, have already been provided in the post Service Catalogs and the User Self-Service Portal.  

## Job Output ##

With the embedded Ansible capabilities of CloudForms it was already possible to get the output of a Job in the “My Services”, “Jobs” tab. Starting with CloudForms 4.7, this will also work for Jobs running on Ansible Tower.  
  
After ordering a Service Catalog Item which is using an Ansible Tower Job Template, a new “My Service” Object is created (Navigate to “Services”, “My Services” to find them). Click on the just created object to see some metadata of the Job. Click on the “Jobs” tab to get more details, including start and runtime and the Job output.

The Job Output can be found on the bottom of the Jobs page.

## Workflows, variables and limits ##

Since Workflows are a features CloudForms inherits from Ansible Tower, there are some concepts which have to be kept in mind as well.

## Extra Variables and Surveys ##

Ansible allows the use of variables, which can be defined in many different ways, including the Playbook itself, a role, the environment or in Ansible Tower. Ansible Tower can use Surveys to build a form asking for those variable values when running a Job. When using CloudForms’ Service Catalog features combined with Ansible Tower, a Service Dialog can be created to build an intuitive and user-friendly interface.  
  
When running an Ansible Tower Workflow, all Extra Variables are sent to all subsequent Jobs. For example, if a Workflow has three Jobs (job1, job2, job3) and there are three variables (var1, var2, var3), all three variables are sent to all jobs. It is possible to set a variable to be used in a specific job only.
  
While this is not really a problem, it’s something to keep in mind, for example by avoiding duplicate variable names in multiple Jobs.

## Limits ##

To run an Ansible Playbook, an inventory has to be used to tell Ansible which endpoints to use and how to access them. Sometimes an Ansible Playbook only has to run on a subset of the inventory. Limits allow the user to use the same inventory but filter out a subgroup of systems.  
  
CloudForms is using this feature when running an Ansible Playbook from a button assigned to a Virtual Machine.
  
Ansible Tower Workflows do not support the “limit” option though. Potentially a workflow can have many Jobs with different inventories (e.g. run a sub job on the storage, a sub job on the network and a sub job on some servers, each using different inventories). A limit parameter would potentially break this Workflow (e.g. if the limit would be a specific Virtual Machine, the network and storage jobs would fail).
