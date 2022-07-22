---     
title: Automating CloudForms Appliance Deployment with Ansible
date: 2018-01-24
tags: ansible appliance cloudforms configuration deployment
author: Adam Goosens
---

Red Hat CloudForms ships as an appliance to simplify deployment as much as possible – a Red Hat
Enterprise Linux server with the appropriate software loaded, ready to be configured with a few
basic configuration options. Traditionally, these servers are configured using the command line
tool appliance_console. This is a simple, menu-based interface that allows you to configure the
core functionality of the appliance and makes it exceptionally easy to do so. Unfortunately,
menu-based interfaces don’t lend themselves to being automated easily. However, there is a
solution!
  
All CloudForms appliances ship with another tool called appliance_console_cli. We can combine this
tool with an Ansible playbook to automate the configuration of our appliance(s).

Before we go further, take a look at the sample playbook located on Github. This playbook shows a
simple scenario that configures two appliances:

A primary database in which we use a separate disk and configure an internal VMDB

A non-VMDB appliance which joins the region in the primary database.

The playbook sets some standard configuration for all the appliances – namely a common root
password, and an appropriate hostname – then uses the appliance_console_cli tool through the
Ansible shell module.

Let’s take a look at some of the key options available to appliance_console_cli, as of CloudForms
4.5. This isn’t an exhaustive list, so have a look at the help output of the command to see them
all:
  
## Server configuration options ##

–host: set the hostname for the appliance. Also updates your /etc/hosts – handy!

–ipaserver, –ipaprincipal, –ipapassword, –ipadomain and –uninstall: establish this host in an IPA
realm, using the principal and password you provide. Note the principal must have the privilege
needed to register the host and register a service.

–logdisk, –tmpdisk: specify the devices used for the log and tmp directories.
  
Database options

–region: the region for the appliance; needed when establishing a database

–internal: specify this if you want to create an internal database (i.e. you’re not connecting to a
remote postgresql db)

–hostname, –port, –username, –password, –dbname: key details for your database. Without the
internal parameter, these are used to join your appliance to an external database.

–dbdisk: specify a device to use for the postgresql data directory. Very handy!
  
Preparing the appliance
–fetch-key, –sshlogin, –sshpassword: fetch the v2_key encryption key from a remote appliance with
the provided SSH login credentials. All appliances connected to a VMDB need the same v2_key!
  
CloudForms 4.6 extends the commands of appliance_console_cli and brings it closer to feature parity
with appliance_console. A major improvement is the ability to configure database replication on the
command line, just by running different parameters on your primary and standby nodes. Super useful!
This will be the focus of a future article, and I’ll extend the playbook to deploy two VMDB
appliances in a primary/standby configuration.
  
What are you waiting for? Head to Red Hat Customer Portal and try out the CloudForms 4.6 Beta!
General Availability is just around the corner…
  
## Ansible Automation ##

Don’t forget, the upcoming release of CloudForms 4.6 brings improved embedded Ansible Automation
Inside capabilities. If you are not familiar, Embedded Ansible has been a feature of CloudForms
since version 4.5 and allows to store and execute Ansible playbooks from within CloudForms. For
example, Ansible Automation allows to execute a playbook as part of a Service Catalog request to
configure provisioned VMs for the requester. Alternatively, a playbook can be executed when a user
interface button is pressed, or in response to an event or alert.
  
## Ansible Modules and CloudForms ##

Ansible 2.4 provides Ansible modules to manage CloudForms: manageiq_provider and manageiq_user.
These modules use the CloudForms REST API to automate the configuration of providers and users.

Combining these configuration modules and the playbook above allow to provision and configure
CloudForms appliances, define users in the VMDB, and configure new providers – all in a single
play!
  
## Conclusion ##

Ansible is being embedded throughout all cloud software platform at Red Hat, and CloudForms is no
exception. Keep an eye out for future posts in this series, where we will test drive some of the
new features of appliance_console_cli in the upcoming 4.6 release.
