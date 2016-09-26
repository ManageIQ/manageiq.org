---
title: Announcing the Alpha Release of Capablanca
date: 2015-09-24 14:11 UTC
author: chessbyte
tags: releases announcements
comments: true
published: true
---

As ManageIQ progresses toward its next milestone release, the development team is pleased to announce the availability of the alpha release of Capablanca.

Capablanca promises to be a strong update to the ManageIQ cloud and virtualization management platform, and this alpha release will give users an early look at those changes. Users are encouraged to download the alpha and [report any bugs](http://manageiq.org/community/issues/) found.

Topping the list of user-visible features are:

* **A new container management provider.** The provider supports managing Kubernetes clusters, either “plain” or as part of OpenShift.
* **A new container management UI.** This new user interface has been designed by the group along with the Red Hat UX team as a modern UI based on the latest technology and UX research. The UI uses the Patternfly/Angular frameworks and includes cool widgets like heat maps and a topology viewer. The UI is exposed under the new top-level “Containers” tab.
* **A Microsoft Azure provider.** Work has begun on supporting the management of virtual machines and associated objects on Microsoft Azure. The provider uses the “Azure Resource Manager” RESTful API recently introduced by Microsoft. The API is accessed through a newly developed Ruby gem called [azure-armrest](https://github.com/ManageIQ/azure-armrest). Currently basic inventory collection is available.
* **Revamping the UI to the Angular/Patternfly frameworks.** This ongoing work will be completed over the coming releases. One place where you can already see the new UI is in the cloud provider and host editors.
* **Provider cross-linking.** ManageIQ now knows that Kubernetes node X is running on virtual machine Y.

In addition, the following technical improvements have been made:

* ManageIQ runs on Ruby 2.2 and Rails 4.2.
* The appliance is based on CentOS 7.1, PostgreSQL 9.4.1, and Apache 2.4.
* The appliance was tested against FreeIPA 4.1 to provide users with two-factor authentication.
* Work has begun that moves all providers to their own files and directories, and makes them live in their own namespaces. This makes it much easier to add new providers.

These are just some of the new features coming in this alpha release. For a complete list of new and updated features, see the [release notes](https://github.com/ManageIQ/manageiq/blob/capablanca/CHANGELOG.md).

The Capablanca alpha can be downloaded now. Either use the site's [download workflow](http://manageiq.org/download/devel/) or choose what you want from the [list of available images](http://releases.manageiq.org/).
