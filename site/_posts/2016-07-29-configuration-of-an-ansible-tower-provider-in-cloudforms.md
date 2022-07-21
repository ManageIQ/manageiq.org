---
title: Configuration of an Ansible Tower provider in CloudForms 
date: 2016-07-29
tags: ansible cloudforms
author: Jerome Marc
---

This is part 2 of our series on Ansible Tower Integration in Red Hat CloudForms.

As mentioned in our previous post, CloudForms 4.1 brings native integration capabilities with Ansible Tower. This post explores the Ansible Tower requirements as well as the configuration of the provider in CloudForms.

Like all providers within CloudForms, the Ansible Tower provider is agent-less and only requires connectivity and credentials to the Ansible Tower API.

The initial configuration of the provider is performed by selecting ‘Add a new Provider’ under ‘Configuration > Configuration Management > Configuration’.

Once the credential details are filled-in and validated, add the provider and trigger a provider update by selecting ‘Refresh Relationship and Power States’ under the new provider’s ‘Configuration’ button. CloudForms queries the Ansible Tower API and obtains an inventory of all hosts and Job Templates available.

All discovered hosts are accessible by expanding the inventory groups under the newly created Ansible Tower provider.
Ansible Tower Provider.
  
Similarly, all discovered Job Templates are accessed under the provider by expanding the ‘Ansible Tower Job Templates’ accordion menu.
  
Job Template details are visible from within CloudForms. This includes any extra variables or surveys set on the Job Template.

In this article we configured a new Ansible Tower provider in CloudForms. This provides CloudForms with visibility into the Ansible Tower inventory, including hosts and job templates. In following posts, we will explore how to launch a Job Template from within CloudForms as a button on a VM, as a Service Item in the Service Catalog, or as part of CloudForms Automation.
