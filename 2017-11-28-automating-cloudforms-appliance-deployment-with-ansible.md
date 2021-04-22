---
title: Automating CloudForms Appliance Deployment with Ansible 
date: 2017-11-28
tags: AAnsibleCloudFormsDeploymentansible appliance cloudforms configuration deployment 
author: ConnorJGilchrist
---

Automating CloudForms Appliance Deployment with Ansible
Posted on: January 24, 2018
Adam Goossens, Consultant, Red Hat  
Red Hat CloudForms ships as an appliance to simplify deployment as much as possible – a Red Hat Enterprise Linux server with the appropriate software loaded, ready to be configured with a few basic configuration options.
Traditionally, these servers are configured using the command line tool appliance_console. This is a simple, menu-based interface that allows you to configure the core functionality of the appliance and makes it exceptionally easy to do so. Unfortunately, menu-based interfaces don’t lend themselves to being automated easily.
However, there is a solution!
  
All CloudForms appliances ship with another tool called appliance_console_cli. We can combine this tool with an Ansible playbook to automate the configuration of our appliance(s).
Before we go further, take a look at the sample playbook located on [Github] [https://github.com/adamgoossens/cf-ansible]. This playbook shows a simple scenario that configures two appliances:
A primary database in which we use a separate disk and configure an internal VMDB
A non-VMDB appliance which joins the region in the primary database.
The playbook sets some standard configuration for all the appliances – namely a common root password, and an appropriate hostname – then uses the appliance_console_cli tool through the Ansible shell module.
Let’s take a look at some of the key options available to appliance_console_cli, as of CloudForms 4.5. This isn’t an exhaustive list, so have a look at the help output of the command to see them all:
  
Server configuration options
–host: set the hostname for the appliance. Also updates your /etc/hosts – handy!
–ipaserver, –ipaprincipal, –ipapassword, –ipadomain and –uninstall: establish this host in an IPA realm, using the principal and password you provide. Note the principal must have the privileges needed to register the host and register a service.
–logdisk, –tmpdisk: specify the devices used for the log and tmp directories.
  
Database options
–region: the region for the appliance; needed when establishing a database
–internal: specify this if you want to create an internal database (i.e. you’re not connecting to a remote postgresql db)
–hostname, –port, –username, –password, –dbname: key details for your database. Without the –internal parameter, these are used to join your appliance to an external database.
–dbdisk: specify a device to use for the postgresql data directory. Very handy!
  
Preparing the appliance
–fetch-key, –sshlogin, –sshpassword: fetch the v2_key encryption key from a remote appliance with the provided SSH login credentials. All appliances connected to a VMDB need the same v2_key!
  
CloudForms 4.6 extends the commands of appliance_console_cli and brings it closer to feature parity with appliance_console. A major improvement is the ability to configure database replication on the command line, just by running different parameters on your primary and standby nodes. Super useful! This will be the focus of a future article, and I’ll extend the playbook to deploy two VMDB appliances in a primary/standby configuration.
  
What are you waiting for? [Head to Red Hat Customer Portal] [https://access.redhat.com] and try out the [CloudForms 4.6 Beta] [https://sso.redhat.com/auth/realms/redhat-external/protocol/saml?SAMLRequest=fVJBTsMwEPxKbj65TtIGWiuJFLVCqlQQaoEDF2ScjWrJsYPXoYXX46QqlEuPuzszOzt2jqLVHa96vzdb%2BOgBfVQhgvPKmqU12LfgduA%2BlYTn7aYge%2B875IwJKQFx4qDeCz%2BRtmW1PRhtRY1s0GSNMkKrbyDRKoiGYlD84yPaS7IIBpgDoVtkpzaFowcXNFjnrLfS6lGXROtVQd4SMc%2FqdLqgcznL6EzCOxVCNlSkzWJxu4iTOpYBitjD2qAXxhckjdOExjOa3DylKc8yPk1eSfQCDkdn6SQm0bHVBvmwqCC9M9wKVMiNaAG5l3xX3W94AHJxzuiS0l3nnO8gZT6g%2BejOlb1RjYKa%2FuaXs8txfnqhhyC3Xj1areRXVGltD8sQl4eCeNeHkO%2Bsa4W%2FbmDoqJo2I5R3w%2BHowXjCytPO%2Fx%2Bh%2FAE%3D&RelayState=https%3A%2F%2Faccess.redhat.com%2Fdownloads%2Fcontent%2F303%2Fver%3D%2Fcf-me---7%2F4.6%2Fx86_64%2Fproduct-software&SigAlg=http%3A%2F%2Fwww.w3.org%2F2000%2F09%2Fxmldsig%23rsa-sha1&Signature=Xd6v2SSwlJL4WuPZM5v5TAviQORVJD9a3JO3XsukInFGYKVx9mW0YzESDyNipEnUu5Djiavf2AE0d6Y%2BYFD0NaBJk8vph%2FlKydTrMmiLvHPEE8xixIMDN5jCx%2FDlRFFdl2KM6ciP1zmU%2BFrS5DXGByC7L7Le4lI7epLB9YLtp0LFINuaaTNqpdBah6fm9EetjGFFYtpR3rx9Xgcnu1SitFMtwH6g5XyQZuImPdvIi01u8rtBlupFW07ngkRGH%2BwETsnmbLmjSeDFclqSFgPNmBwGzR2kJJPQVm%2F05F%2B0d6YyriVljb1ms6cAYyEDDkSOtjO%2Buvu5gtdTyRGi0MzdIVut2MEZa%2FLuTSdooBTvmx9lO8pICbNQhGmgyJ7DIJ%2FysrhFrASBFl18di5Q5fILg1fkafBSmUL5lhSOOb%2B1KNWXdjcrx42SZJyaWHhOo9tOEyueIx1lbj5%2F5%2FwrzlBLhN%2BBu%2BIY7I11n%2FOaU8Gt0UoIhWEfj8%2BoG7dd6T2XX0p35BB4fWz7TmpFCN62xudyEnFbBteI2vlJMnx%2BkZHSVRRYfn4qEuPfv3GF7ISO73qByhOdOQQhtiZF8wibti0iRu57NRoCYZR4x0uDZfnmO%2FXIpmgidj%2FTYqXL55BBDscJ%2B07VHbpvBq2Miu54ODFAAvDs4NfMn%2FWzYfQfMXeWEJw%3D]! General Availability is just around the corner…
  
Ansible Automation
Don’t forget, the upcoming release of CloudForms 4.6 brings improved embedded Ansible Automation Inside capabilities. If you are not familiar, Embedded Ansible has been a feature of CloudForms since version 4.5 and allows to store and execute Ansible playbooks from within CloudForms.
For example, Ansible Automation allows to execute a playbook as part of a Service Catalog request to configure provisioned VMs for the requester. Alternatively, a playbook can be executed when a user interface button is pressed, or in response to an event or alert.
  
Ansible Modules and CloudForms
Ansible 2.4 provides Ansible modules to manage CloudForms: manageiq_provider and manageiq_user. These modules use the CloudForms REST API to automate the configuration of providers and users.
Combining these configuration modules and the playbook above allow to provision and configure CloudForms appliances, define users in the VMDB, and configure new providers – all in a single play!
  
Conclusion
Ansible is being embedded throughout all cloud software platform at Red Hat, and CloudForms is no exception. Keep an eye out for future posts in this series, where we will test drive some of the new features of appliance_console_cli in the upcoming 4.6 release.

Share this:
[Twitter] [https://www.redhat.com/en/blog?share=twitter&nb=1]
[Facebook] [https://www.redhat.com/en/blog?share=facebook&nb=1]

Posted in AnsibleCloudFormsDeploymentansible appliance cloudforms configuration deployment
