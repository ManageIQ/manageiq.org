---     
title: My First Ansible Control Action (Video) 
date: 2017-09-01
tags: AnsibleCloudFormsOperationsansible cloudforms Control Policy
author: ConnorJGilchrist
---

My First Ansible Control Action (Video)
Posted on: September 1, 2017
Victor Estival Lopez, Red Hat  
With this short video, we continue our series based on Red Hat Knowledge Base articles exploring how to take advantage of Ansible Automation inside Red Hat CloudForms. This post is a follow-up of our previous [My First Ansible Service] [https://www.redhat.com/en/blog] article.
As a summary, what we do in this video is to create a control policy that checks if the VM CPU or memory size has changed, and if so, resets the size to 1 CPU and 1GB automatically.
Specifically, what we show in this video is how to:
Create VMware credentials for vCenter
Create a new Service Item to reconfigure our VM
Create a new Action and Policy for running an Ansible Playbook
Create and assign a new Policy Profile to VMs
Test the Policy by re-configuring VM resources manually, and validating our control Policy
 [https://www.youtube.com/watch?v=2Fky4S9hzJw&feature=emb_title]

The Red Hat Knowledge Base article, including the necessary playbooks to implement this example, are available on this Red Hat Knowledge Base article.
Please note that you need to install pysphere from the appliance console for the playbook to run:
easy_install -U pysphere

Share this:
[Twitter] [https://www.redhat.com/en/blog?share=twitter&nb=1]
[Facebook] [https://www.redhat.com/en/blog?share=facebook&nb=1]

Posted in AnsibleCloudFormsOperationsansible cloudforms Control Policy
