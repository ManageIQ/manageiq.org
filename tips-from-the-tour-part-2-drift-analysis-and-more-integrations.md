---
title: Tips from the tour part 2: Drift analysis and more integrations 
date: 2018-07-16
tags: cloudformscloudforms
author: ConnorJGilchrist
---

This is a [follow up] [https://www.redhat.com/en/blog] on our series Infrastructure Tour Italy. In this part we will show Ansible Tower, Drift Analysis and OpenShift Integration

## Integration with Ansible Tower ##

Integration with Ansible Tower was configured to show the ability to enrich the use of playbooks developed and managed on Ansible Tower extending their usage on Cloudforms inventory. Launching playbooks on existing VMs in Cloudforms allowed us to install software with the press of a button, the example we used leveraged the wordpress installation playbook available at:
[https://github.com/ansible/ansible-examples/tree/master/wordpress-nginx_rhel7]
on the public repository: [https://github.com/ansible/ansible-examples].
  
A CloudForms Inventory was configured on Ansible Tower with CloudForms admin credentials to get the managed nodes then Tower templates must be configured with the Prompt on Execution flag enabled for the Limit (to allow CF to limit the scope of the playbooks on select hosts) and for the Extra Variables, this is critical for the integration to work!
  
We performed a SmartState analysis on a VM with a plain RHEL installed to get the configuration before the playbook execution.

We run the playbook (Install WordPress) with the button on the CloudForms page and track the job in Tower:

A job is triggered on our managed node part of the CloudForms inventory, as you can see in the Ansible Tower screenshot next. Please notice the Limit and Inventory:

After the successful execution of the playbook we can use the browser to access the managed node and see WordPress has been installed and requires our input for the configuration.

We showed another button that runs a playbook written by my colleague Michele Naldini that registers the host for Red Hat Insights. It’s available at: [https://github.com/MikeNald/ansible-tower-examples]
This is a good example of the integration with Ansible, the Dialog to enter variables after the press of the button on the VM page, is automatically created with the boxes and text entries analyzing the playbook, saving a lot of time and errors. The same feature is available for OpenStack Heat and AWS CloudFormation templates.
  
## Drift analysis ##

SmartState Analysis allows introspection on a given VM, retrieving key information like Software installed, versions, users, configuration or even files.  
A SmartState analysis of the VM has been performed before and after the WordPress playbook run.
Using the Drift Analysis feature we compared the VMs configurations and highlighted the differences on packages:

Triangle icons in the picture highlight the packages that changed, as you can see the php-fpm package was missing and is now installed. Versions and releases are reported too.  
SmartState analysis can be scheduled to run so we can track all the configuration changes of Linux and Windows VMs on their whole lifecycle.

## Integration with Red Hat OpenShift Container Platform ##

Adding OpenShift requires the rules and token to access API and get events from hawkular as reported here:
[https://access.redhat.com/documentation/en-us/red_hat_cloudforms/4.6/html/managing_providers/containers_providers]
  
Since we were using one of the latest OpenShift Container Platform (OCP) releases all the required service account and roles required by Red Hat CloudForms are installed by default.
We just had to retrieve the management-admin token on the console with the following command on the OCP master node:  
  
oc sa get-token -n management-infra management-admin
  
The token must be provided when the provider is added in the configuration screen both for the credentials and metric (Hawkular) tab.
  
The topology view of a OCP project is one of the coolest visual features and allows to have a view of our CI/CD demo project including Pods, Replication controllers, Services, Routes, Nodes and allows to have a 10k view of what’s going on in a project or on a OCP cluster.

CloudForms also allows to aggregate metrics of pods showing cores, memory, network IO metrics to understand overall data related to projects and use the data as a base for the chargeback feature:

We also demoed the ability to perform massive openSCAP analysis of container images to assess the status of our infrastructure.  
  
Container analysis works by analyzing the target container image starting a manageiq-scan pod in the namespace management-infra. The namespace is dedicated on OCP and doesn’t impact production. Here’s the output of the command oc get pods –all-namespaces while the analysis is running:

When the scan is completed the pod is deleted and results are uploaded in the CloudForms DB. SmartState reports all the software packages and versions in the container image and OpenSCAP Failed Rules, drill down information is available and an extensive openSCAP HTML Report is available too:

A custom CloudForms Report (see downloads above) has been created to show the overall compliance status of the whole IT environment and published on the dashboard:

Thanks to Nick Catling for the help in preparing the demo.
  
Resources
[https://cloudformsblog.redhat.com/2016/08/22/getting-started-with-managing-vmware-with-red-hat-cloudforms/]
[https://pemcg.gitbooks.io/mastering-automation-in-cloudforms-4-1-and-manage/content/running_an_ansible_tower_job_from_a_button/chapter.html]
[https://cloudformsblog.redhat.com/2016/07/29/ansible-tower-provider-in-cloudforms/]
[https://cloudformsblog.redhat.com/2016/08/05/launch-ansible-job-from-cloudforms-vm-button/]
[https://www.redhat.com/it/blog/red-hat-cloudforms-and-ansible-tower-real-world]

## Conclusion ##

CloudForms is a great Hybrid Management tool that handles multiple providers and provides Single Pane of Glass for your IT Assets, giving you the tool and the information you need to improve  

Share this:
[Twitter] [https://www.redhat.com/en/blog?share=twitter&nb=1]
[Facebook] [https://www.redhat.com/en/blog?share=facebook&nb=1]
