---     
title: My First Contribution to ManageIQ
date: 2018-01-12
tags: cloudforms operations github manageiq pull-request vmware
author: Imaanpreet Kaur
---

In this blog post, I am going to share my experience on how I made my first contribution to [ManageIQ](<https://www.manageiq.org>), the upstream open source project for Red Hat CloudForms. The post explains how I encountered and investigated an issue, and finally fixed it thereby sending my first “[Pull Request](<https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests>)” to ManageIQ repository.
  
## Issue ##

When an infrastructure provider like VMware is added to [CloudForms](<https://access.redhat.com/products/red-hat-cloudforms]>)/ManageIQ, a user/admin have an option to put host(s) into maintenance mode. The “Enter Maintenance mode” option is available in a dropdown list when “Power” button is clicked on the host summary page, as shown in below image,

The following image shows a host in maintenance mode from Red Hat CloudForms. The host goes into maintenance mode but never “exits” the mode when selecting “Exit Maintenance Mode”.

As see below, the request to exit maintenance mode was successfully initiated from CloudForms user-interface.

However, the host still remains into maintenance mode, and we can validate this state from the VMware vSphere client.

Now that we have identified the issue, we can look at its possible cause(s) by troubleshooting Red Hat CloudForms.
  
## Debugging an issue ##

A good place to troubleshoot is to look into standard log files under /var/www/miq/vmdb/ on the CloudForms appliance. Below is short description of few important log files:

* production.log: All user Interface activities from Operations as well as Service UI are logged here.
* automation.log: As the name suggest, all automation logs are collected in this file.
* policy.log: This is a good place to look for logs related to events and policies.
* evm.log: This file also covers automation logs as well as everything else. This file can be large in size and probably the first log file to look for errors & warning messages.
  
As you can see below, the evm.log file contained warning messages every time “Exit Maintenance Mode” request is initiated,
  
[----] W, [2017-12-20T16:32:02.557678 #2197:1090af0]  WARN -- : MIQ(ManageIQ::Providers::Vmware::InfraManager::HostEsx#exit_maint_mode) Cannot exit maintenance mode because (<)The Host is not powered 'on'(>)
  
The log message clearly shows that the host attempts to exit maintenance mode but fails as it is not powered on. At this point, we can ask ourselves why is the task failing with this warning? Isn’t the host supposed to be in maintenance mode? We suspect something is not right with the logic behind this action. To dig deeper we can look into the [host.rb](<https://github.com/ManageIQ/manageiq/blob/master/app/models/host.rb>) file available at [ManageIQ GitHub repository](<https://github.com/ManageIQ/manageiq>).

Looking at the logic in host.rb file, the method enter_maint_mode() is triggered when “Enter Maintenance Mode” request is made. This in-turns validates the maintenance mode using method validate_enter_maint_mode() which basically checks the power state of host using method validate_esx_host_connected_to_vc_with_power_state(). The arguments passed to this method are ‘on’ or ‘maintenance’.

A similar logic should be applied to the  exit_maint_mode() method. However, the method calls validate_enter_maint_mode() instead of calling validate_exit_maint_mode(), which causes the issue. The validation fails as the host is in ‘maintenance’ mode and not in ‘on’ mode as we can see below,

A simple fix is to call validate_exit_maint_mode() instead of validate_enter_maint_mode() each time “Exit Maintenance Mode ” request is made. This fix should validate the host to exit maintenance mode successfully.
  
## Test ##

To verify our analysis, We can replaced the validation method call from validate_enter_maint_mode() to validate_exit_maint_mode() and restart evmserverd on the appliance using,
  
systemctl restart evmserverd
  
This time the host successfully exits maintenance mode
  
CloudForms User Interface:

VMware User Interface:

## Creating a Pull Request ##

A “Pull Request” is a way to propose a change in code on GitHub. For those who don’t have an GitHub account, you can create one by following (<https://github.com/join>). Once the account is created we have to [fork](<https://docs.github.com/en/github/getting-started-with-github/fork-a-repo>) the repository by clicking “Fork” button as shown below,

Next step is to clone the repository to our local machine so that changes can be made. Click on “Clone or download” button to copy the https URL link.

We can clone the repository by using the command

git clone https:// github.com/imaanpreet/manageiq.git
  
Once our clone is completed, we can create a new branch using,

git checkout -b validate_exit_maint_mode
  
Make required changes and commit the changes using,

git add app/models/host.rb

git commit
  
Once changes are committed, it is time to send back changes as “Pull Request”, this can be done by pushing changes to the newly created branch,
  
git push origin validate_exit_maint_mode
  
The process to create a pull request is documented [here](<https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request>).
  
## Conclusion ##

The Pull Request is [merged](<https://github.com/ManageIQ/manageiq/pull/16710>) in the manageiq repository and the [bug](<https://bugzilla.redhat.com/show_bug.cgi?id=1531602>) is currently being worked on. This was a great experience and I enjoyed the process of debugging, investigating, and fixing a bug in ManageIQ. I hope sharing this experience in this article will be useful for other readers, and will encourage them to submit more Pull Requests.
