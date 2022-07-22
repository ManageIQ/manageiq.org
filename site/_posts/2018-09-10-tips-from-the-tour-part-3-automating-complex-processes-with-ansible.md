---
title: Tips from the tour part 3 - Automating complex processes with Ansible 
date: 2018-09-10
tags: cloudforms
author: Michele Naldini and Vistor Estival Lopez
---

## Introduction ##

Red Hat held an event on the infrastructure part of our portfolio in Milan and Rome on April 17th and 19th, 2018. Part of the demos presented was focused on the Automation topic managed with Red Hat Ansible and Red Hat Ansible Tower:
  
The event information and agenda is available at:
(<https://www.redhat.com/en/events/infrastructure-tour-milan-2018>)
(<https://www.redhat.com/en/events/infrastructure-tour-rome-2018>)
  
This is the third part of the series of articles written by my colleague Rinaldo Bergamini you can find them here and here.

In this part, I would like to show you how you can Automate “everything” with Red Hat Ansible and Ansible Tower.

At that time Ansible Tower demo was configured literally in a manual way. That means I had to:

* Choose a cloud provider
* Define IAM users
* Define Networks and Storage details
* Create Instances for Tower and servers for my use cases
* Install and Configure Tower
  
We showed to the audience several use cases:

* Application deployment [PROVISIONING]  
* Application configuration [CONFIGURATION MANAGEMENT]
* Infrastructure Day 2 Operations [ORCHESTRATION]  
* Proactive & Automatic Analysis w/ Insights [SECURITY]
* Security Content/Vulnerability Assessment & Remediation [SECURITY]
  
After the event as you can imagine, I used the same demo to show to our customers how Ansible can help them due to three of it’s main core values:  it’s SIMPLE,  it’s POWERFUL, it’s AGENT LESS

After few days in my mind comes a new idea: my demo needs to be fully automated!

In the [past](<https://developers.redhat.com/blog/2017/11/02/build-software-defined-data-center-red-hat-cloudforms-openstack-2/>) I have done something similar in an OpenStack/Cloudforms environment using Heat.

I did the same but using a public cloud provider and the power of Ansible

What do I mean? I want to start building AUTOMATICALLY the whole environment from scratch in order to:  
  
1. Show an end-to-end deployment of multiple servers/services
2. Quickly reproduce the demo if needed
3. Track changes → ansible playbook are YAML based files so we can track changes on git
4. Rebuild old demo environment using the latest version  (demo was based on Tower 3.2.3 version. Now we are at 3.2.6)  
5. Avoid to re-invent the wheel every time we need a demo environment
6. Use this effort as a baseline for new use cases
7. Write this follow-up post for who have joined us during the event 😉
  
I think we can call this approach as Automation 3 or Cubed Automation
  
We want to “Automate” the setup of the “Automation” environment “Automating” several tasks

Let’s start understanding what the main folder contains and how the playbook was designed…  

Folder structure

In the main dir there are:  
  
1. setup.ini file [1] where basically we need to configure some basic stuff in order to configure the environment. There are 3 sections:   [tower], [rhsm], [gce], and we have to write down on the [tower]section,  the version we want to install, the tower’s admin password (tower_password variable), etc.

We need also to declare our Red Hat Customer Portal user in order to register our instances to the Red Hat Portal under the [rhsm] section. The password is not a clear text password, instead, the playbook will use vault. You can refer to [this document](<https://docs.ansible.com/ansible/latest/user_guide/playbooks_vault.html>) in order to correctly encrypt your password encoding it inside the playbook yaml file.As prerequisites on GCE side, we have to:

* create two service accounts:
  * the first one called service_account_instance_creation@xxxxx which will be used to create instances on GCE. You need also to download it in JSON format and use it as credentials

(parameter service_account_instance_creation_credentials)

* the second one called tower-service-account which needs to be download as .p12
  * you need to extract the private key from .p12 file with the command:  cat xxxxxxx.p12 | openssl pkcs12 -nodes -nocerts -passin pass:notasecret | openssl rsa > privateKey.pem.
  * This keyfile will be used in the future (playbook enhancement) by Tower to authenticate Tower to GCP and use the dynamic inventory feature  (not available right now)
[1] setup.ini file  

1. Inventory File where you need to put the hosts being part of the inventory you’ll manage with Ansible. Those hosts will be created  by our playbook
2. Gce_createinstances  main playbook file that will execute some tasks and role.
3. License is the tower license file that will be loaded to Tower using a POST to it’s APIs
4. README basic prerequisites and guidelines
5. Roles folders used by the main playbook to organize playbooks and tasks by their own scope
  
I don’t want to explain all the playbooks/roles/tasks in details.  

DISCLAIMER: At the time of writing the git repo is private. As soon as possible I’ll release it as Open Source of course and then feel free to contribute with pull request!
  
Now let’s watch this short video where you can see how we can set up the whole environment (tower included) in less than 30 minutes  

At the end of the entire playbook run the whole environment is up and running in 28 minutes! [2]
  
[2] ansible output

Now let’s log in to Ansible Tower to quickly highlights the configuration performed
  
The role Tower has configured our Tower environment executing the setup, loading the license file and creating admin user using a mix of APIs call and ansible tower modules.

Then the role tower_uc_setup has created for us the skeleton for our automation building 4 projects, 4 inventory, 7 hosts, some groups and a lot of pre-configured job_templates and workflow identified by an id and a prefix inside the template name
  
Tower homepage

Configured hosts

First of all, we want to use a preconfigured job template called “UC-1 [Provisioning] – WebServers + Haproxy + Nagios “  in order to install our web servers (httpd1/httpd2), a load balancer (haproxy) and a monitoring system (nagios)
  
“UC-1 [Provisioning] – WebServers + Haproxy + Nagios “ Job Template

Executing it  will configure everything in 11 minutes

Index.html showed calling httpd1 server

Nagios configured with hostgroups and services

In addition, the Haproxy server will balance the two web servers in a round robin fashion.

Of course during the demo setup (runtime)  we could also execute the template using the available module [tower_job_launch](<https://docs.ansible.com/ansible/2.6/modules/tower_job_launch_module.>) but in this case I would like to show how quickly this template can avoid spending your time on repetitive and boring tasks executing it manually from the Tower UI
  
I have also configured other templates able to:

* Exclude a web server from a load balancer
* Execute a custom command on a server
* Re-include web server from Load Balancer
* Unmonitor the web server from Nagios
* Re-monitor the web server from Nagios
* Rolling updates for all the project servers
  
All the playbooks used in this demo as job templates are available here  
  
(<https://github.com/MikeNald/ansible-tower-examples>)

After the first run of the gce_createinstances playbook they will be available inside Tower

The setup will also configure an entire workflow able to  
  
* Exclude web server from LB → in case of success → temporary disable monitoring → in case of success → run command on server → always →

re-include it into monitoring → always re-include web server on LB
  
The workflow includes also a survey asking the end user for a target host and command to be executed  

This is just an example of what Tower can do … here the full list of available use cases addressed by this Demo with several kinds of playbooks, workflows, survey, etc

For instance, I have configured an Openscap scan of a rhel system, create a remediation profile for it, build a report and fix the findings using job_template number 16, 17 and 18

Then I have configured a workflow to execute those playbooks in a consistent way.
  
The result is a rhel server where the Standard System Security Profile (ssg-rhel7-ds.xml) was used as a baseline and applied to the system.

The report is loaded on git repo automatically by the playbook “UC-8 [Security] – Openscap Security Scan “ and can be viewed [here](<https://htmlpreview.github.io/?https://raw.githubusercontent.com/MikeNald/ansible-tower-examples/master/security/report/rhel-scap-scan-xccdf-report.html>)

Another example is the fully automated [Insight Integration](<https://docs.ansible.com/ansible-tower/latest/html/userguide/insights.html>) in order to proactively resolve possible wrong configurations or security issues on systems executing pre-configured ansible playbooks made available from Insights.
  
Resources:
  
(<https://github.com/MikeNald/ansible-tower-examples>)
(<https://docs.ansible.com/ansible-tower/>)
(<https://docs.ansible.com/ansible/latest/modules/list_of_all_modules.html>)
(<https://docs.ansible.com/ansible-tower/latest/html/userguide/insights.html>)
  
## Conclusion ##
  
This post would like to show you how much Ansible is powerful, simple and integrated with a broad ecosystem.

More than 1.600 modules are available, an entire galaxy ((<https://galaxy.ansible.com/>)) of re-usable roles is ready without needs to install plugins or agent on remote systems resulting in a quick adoption of the solution and avoiding an overhead to your systems without increasing surface attack!

What are you waiting for?  Now you can perform your own AUTOMATION  
