---
title: "ManageIQ Kasparov GA announcement"
author: Fryguy
date: 2021-02-04
tags: releases announcements
comments: true
published: true
---

On behalf of the ManageIQ team, I'm happy to announce the release of **ManageIQ Kasparov**!  This release is named after the great chess grandmaster [Garry Kasparov](https://en.wikipedia.org/wiki/Garry_Kasparov).  You can download the Kasparov-1 release on our [downloads page](/download).

Here are the highlights of the [Kasparov release](https://github.com/orgs/ManageIQ/projects/13#column-8431168):

* **New Providers**
  * [IBM Cloud VPC Provider](https://www.ibm.com/cloud/vpc) to discover and manage your virtual systems in the [IBM Cloud](https://www.ibm.com/cloud).
  * [IBM Cloud Power Virtual Servers Provider](https://www.ibm.com/cloud/power-virtual-server) to discover and manage your Power virtual servers in the [IBM Cloud](https://www.ibm.com/cloud).
  * [IBM Terraform Provider](https://www.ibm.com/support/knowledgecenter/SSFC4F_2.2.0/cam/cam_intro.html) to integrate with the IBM Terraform service in the [IBM Cloud Pak for Multicloud Management](https://www.ibm.com/cloud/cloud-pak-for-management).
  * [IBM AutoSDE Provider](https://www.ibm.com/case-studies/ibm-global-technology-services) to integrate with various storage systems managed by IBM AutoSDE though IBM Global Technology Services.
  * [VMware NSX-T Provider](https://www.vmware.com/products/nsx.html) to discover and manage VMware NSX-T networks.

* **VMware Content Library support in provisioning** - In this release, support has been added for the VMware Content Library as another source of templates for provisioning.  This has been a long-standing request, and we're pleased to get support in for this feature.

* **Provider tag-mapping improvements** - In previous versions of ManageIQ, only specific cloud objects from specific cloud providers supported tag mapping.  In Kasparov, this functionality has been extended in a general way to all providers.

* **UI cleanup and modernization** including
  * Removal of the Grid and Tile views, leaving only List view
  * Applying Carbon 10 styling to Header, Navbars & Menus
  * Removal of the Database accordion (PostgreSQL introspection) from Configuration Explorer
  * First level navigation reordering
  * Accessibility improvements
  * Many forms converted to React
  * API driven, pluggable, provider creation and validation

* **Default to systemd-based workers in appliance** - While systemd-based worker were available as a configuration option in previous versions, in this release we changed appliances to use systemd by default.  As such, you can also use the diagnostic tools you may already be familiar with, in order to inspect the health of the systemd processes.

* **Backup and Restore in podified** - This release adds backup and restore capability for podified deployments when using the [Velero](https://velero.io) and Restic(https://restic.net) backup tools.  The operator will label all resources that need backups, allowing Velero to do it's thing.

* **Support for PostgreSQL 12** - PostgreSQL 12 is now supported as a target database.  While the internal database is still using PostgreSQL 10, if you are using an external database, you can upgrade it to PostgreSQL 12 and it will continue to work with ManageIQ.

There are many more changes that would be impossible to detail in a single blog post.  Many thanks goes to all of the community members for their contributions!  We've already started on the next round of features for the ManageIQ Lasker release.  If you're interested in getting involved, check out our [roadmap](/roadmap), check out our [community page](/community), ask questions in our [talk forum](http://talk.manageiq.org), or chat with us in [Gitter](https://gitter.im/ManageIQ/manageiq).  We look forward to hearing from you!
