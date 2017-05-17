---
title: ManageIQ Fine GA - Automation with Ansible, Public Cloud Improvements, and more
author: cybette
date: 2017-05-15
tags: releases announcements
comments: true
published: true
---

After several months of Fine work by the fine ManageIQ team and community, we're proud to present you the **ManageIQ Fine release**! This sixth ManageIQ release is named after American chess Grandmaster [Reuben Fine](https://en.wikipedia.org/wiki/Reuben_Fine).

Since the [ManageIQ Euwe GA](/blog/2016/12/manageiq-euwe-ga-announcement/), we’ve had 10 very productive [sprints](/blog/tags/sprints/) with a total of 1511 pull requests in the [main ManageIQ repository](https://github.com/manageiq/manageiq) and 4880 PRs [overall](https://github.com/manageiq/) (averaging 76/244 pull requests [per week](/blog/tags/LWIMIQ/)).

Two main factors have contributed to the increased agility and velocity: a change from [3-week Sprints to 2-week Sprints](/blog/2017/01/schedule-change-3-week-sprints-to-2-week-sprints/), and splitting the core ManageIQ repo into modular sub-repos. These activities have resulted in numerous fine new features, bug fixes, and even some deletions to optimize things.

This release introduces the inclusion of Ansible for automation, which provides a simple, powerful, human readable automation language that everyone can use. As more IT infrastructures adopt public clouds, we have beefed up support and features in that area. In addition, a new physical infrastructure provider brings ManageIQ one step closer to full stack management.

## Automation with Ansible

ManageIQ provides integration to various provisioning and service management processes. However, to develop these integrations, previously it required diving into writing and maintaining scripts with Ruby, which is not the most accessible method for many IT professionals. In the Fine release, you can now use Ansible Playbooks for automation and definition of services.

To make this happen, a ton of changes went into the Platform, UI, API, Providers, and of course Automate parts of the ManageIQ project. Service Design work was done for running Playbooks, where you can create a Service Catalog item based on Ansible Playbook. The Embedded Ansible model is now being used when retrieving credentials or repositories for catalog items, as well as list pages.

[![Ansible Credentials](/assets/images/blog/Fine_GA_ansible_credentials.png)](/assets/images/blog/Fine_GA_ansible_credentials.png)

A provider mixin is created to share code and behaviour between the embedded Ansible and Tower providers. UI gets populated with new views of lists and summary screens for Ansible objects such as Credentials, Playbooks, and Repositories. For Embedded Ansible, we added a notification when the server starts (since it might take some minutes).

Ansible Play data, including start time and finish time, is collected during a Job run. This is then viewable from the Ansible Service summary screen. Lastly (or actually one of the first things we did), Ansible UI was separated from Foreman under Configuration, and moved to the new Automation tab to better reflect its role in ManageIQ.

## Public Cloud Providers Improvements

For the [Euwe release](/blog/2016/12/manageiq-euwe-ga-announcement/), we highlighted the work done on Google Compute Engine and Microsoft Azure cloud platforms. This release we have a fine focus on the Amazon cloud provider, which took the lead for number of Provider PRs for quite a few sprints.

First of all, the Amazon provider got [it's own repository](https://github.com/manageiq/manageiq-providers-amazon), and the related settings are moved over from ManageIQ core. Microsoft Azure [followed suit](https://github.com/manageiq/manageiq-providers-azure) shortly after. Further partition included separating AWS storage functionality into specific storage managers, S3 (object) and EBS (block), much like what we did to OpenStack Swift and Cinder previously.

Now we have the foundations for managing EBS and S3 services from AWS. There are many updates to the Amazon Storage Managers, such as new service models in Automate, collecting inventory for S3 objects, cloud volume snapshot operations for EBS, and the support for deletion of S3 folders.

[![Amazon EBS Storage](/assets/images/blog/Fine_GA_amazon_EBS_storage.png)](/assets/images/blog/Fine_GA_amazon_EBS_storage.png)

More changes to the inventory refresh process in the Amazon provider to associate AWS tags to ManageIQ tags, which opens the door for using AWS tags in ManageIQ (e.g. mapping to categories). You can also take a sneak peek at another [new repo](https://github.com/ManageIQ/amazon_ssa_support) that marks the beginning of code needed for doing SmartState in the Amazon cloud. Exciting possibilities ahead, and kudos to XLab for their great work here!

The abovementioned Ansible integration is also extremely beneficial for Amazon AWS and other public clouds in services definition. For instance, there are over 100 Ansible modules just for AWS services, to aid you in complex, multi-tier service deployments.

## New Physical Infrastructure Provider

Even with the growing demand for virtual deployments, there is a need for bare metal deployments, or perhaps more so. In this release ManageIQ added the Physical Infrastructure Provider to our list of supported providers. Currently, Lenovo XClarity is the only provider type available.

[![Physical Infrastructure Menu](/assets/images/blog/Fine_GA_physical_infra_menu.png)](/assets/images/blog/Fine_GA_physical_infra_menu.png)

Through the new item in the Compute menu, you can create a new physical infrastructure provider, validate the authentication, and view the summary page of the added provider. Upon refresh, the number of associated physical servers will be visible, containing lots of relevant data of each server such as number of sockets, cores, and firmware data.

Speaking of our partner Lenovo, we appreciate how amazing it is to work with them in the community to bring this new feature into ManageIQ. They did the heavy lifting, yet gave our team plenty of credit!

[![Lenovo at Red Hat Summit](/assets/images/blog/Fine_GA_lenovo_RH_summit.jpg)](https://twitter.com/jkfissel/status/860198002211815424/photo/1)

## Performance Improvements

Graph Refresh for providers is implemented to deal with slow inventory collection and memory hog during refreshes. The aim is to make it easy to implement for provider authors. An example run on 77k Amazon Public Images show a second refresh taking only 200s, down from 1537s with the old refresh methods! Ansible refresh is also backed by graph refresh, and OpenStack is trying out this strategy too.

We have many more performance enhancements like speeding up widget generation, loading VMs in batches, optimizing number of refresh transactions, and adding a cache for full Feature objects all help to make ManageIQ speedy and responsive while feature-rich and powerful!

The above is by no means an exhaustive list of all the changes to ManageIQ since the last release. The words are not enough to depict all the hard work, beautiful code, fineness and finesse that went into everything (last pun, I promise).  We’re so grateful to the remarkably productive contributors in ManageIQ community for making the Fine release possible! You can find the [full changelog here](https://github.com/ManageIQ/manageiq/blob/fine/CHANGELOG.md/).

Release images for ManageIQ Fine are available for [download](/download/). Visit the ManageIQ [Community page](/community/) to find out how to get involved in the community, and where you can connect with us online and in person at events. Join our [discussion forum](http://talk.manageiq.org/) if you have questions. [Documentation](/docs/) and other resources can be found on the [ManageIQ site](/) as well. Thanks for your support!

