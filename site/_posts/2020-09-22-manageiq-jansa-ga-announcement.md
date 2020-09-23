---
title: "ManageIQ Jansa GA announcement"
author: Fryguy
date: 2020-09-22
tags: releases announcements
comments: true
published: true
---

On behalf of the ManageIQ team, I'm happy to announce the release of **ManageIQ Jansa**!  This release is named after Czech chess grandmaster [Vlastimil Jansa](https://en.wikipedia.org/wiki/Vlastimil_Jansa).  You can download the Jansa-1 release on our [downloads page](/download).

Here are the highlights of the [Jansa release](https://github.com/orgs/ManageIQ/projects/13#column-7337345):

* **Podified Builds** - ManageIQ now has an official release that works on Kubernetes and Red Hat OpenShift.  This is the culmination of the rearchitecture effort that we started during the summer prior to the Hammer release.  In addition to containerization of all of the workers, there is also an orchestrator pod that communicates with Kubernetes and dynamically spins up or down deployments much in the same way that the appliance's server process works.  In this way, we can let Kubernetes do what it does best and manage the pod's lifecycle.  In order to deploy this podified architecture we've also created an operator, which creates the orchestrator as well as the dependent services.  We're very excited to have this new deployment type, and you can expect more enhancements to it in the future.

* **RPM based builds** - The ManageIQ build process has been significantly changed to take advantage of RPMs.  Instead of building the images and appliances from source, now RPMs are built from the source, which are available at https://rpm.manageiq.org.  While the rationale for moving to RPMs was originally to make our build process more efficient, we found that the builds were also more accurate and reproducible since the dependencies are resolved once, instead of on each individual build.  In addition, upgrades to minor releases should be significantly easier, as it's just a simple `dnf update`.

* **Technology updates** - In the Jansa release, we've updated the underlying technologies we use on the appliances and container images.  We are now using Rails 5.2, the appliance operating system has been updated to CentOS 8, and the container images are using the Red Hat Universal Base Image (UBI) 8.

* **VMware provider removal of MiqVimBrokerWorker** - The VMware provider was modified to no longer need the MiqVimBrokerWorker, so in this release you will no longer see that worker running.  This change was necessitated by the podification effort, as the underlying technology used was not compatible, and in doing so, we were able to reorganize the code to be much more efficient and streamlined.  As the MiqVimBrokerWorker was one of the most expensive workers, this is a huge performance benefit to the project!

* **OpenShift 4.0 provider support** - The OpenShift provider has been enhanced to support OpenShift 4.0 and higher.

* **Configuration Manager pluggability** - The Configuration Manager base in ManageIQ was originally written as a direct integration to Foreman, which made it difficult to plug in new configuration managers.  In this release, we've reorganized that code to work in a more pluggable fashion, opening up the possibility for new configuration providers.

* **Kafka syndication** - ManageIQ now supports configuring an external Kafka service for syndication of provider events and metrics.  This is a preliminary integration, with the plan to more fully use Kafka internally, however this feature is especially useful to allow third party systems to consume these values from Kafka.

* **Automate content enhancements** - The ManageIQ domain content has been significantly enhanced by the contribution of the Red Hat domain.  This domain is a set of features provided originally in Red Hat CloudForms, which has been merged into the default ManageIQ domain.

* **OpenID-Connect/OAuth2 enhancements** - OIDC support was added for the REST API, allowing users to log in to the API with their external auth credentials.  Additionally, in the podified deployment, the `httpd` ingress pod previously needed extra privileges to run, which complicated strict deployments.  This has been changed such that if the operator detects that OIDC is the external authentication mechanism, we can deploy a less-privileged pod for `httpd`.  Over time we plan to support other external auth mechanisms with this less-privileged pod, when it's possible.

* **UI explorer removal** - The UI has been changed to start the removal of the explorer tree navigation where it's possible.  For this release, the Chargeback section went through this change.  Accordions were removed in favor of more navigation items in the left-side navigation, so you can directly navigate to Chargeback Rates, Assignments, and Saved Reports.  As a side-effect of the removal of the explorer, direct URL links to specific rates, assignments, and saved reports are also possible.

* **Account lockout policy** - ManageIQ now supports a basic account lockout policy for non-external-auth based logins.  This feature is designed to prevent brute-force attacks on a user's login.  By default, a user has 3 attempts to log in, and if all attempts are used they will be locked out for 2 minutes.  This lockout policy is configurable via Advanced Settings, and can be disabled if desired.

There are many more changes that would be impossible to detail in a single blog post.  Many thanks goes to all of the community members for their contributions!  We've already started on the next round of features for the ManageIQ Kasparov release.  If you're interested in getting involved, check out our [roadmap](/roadmap), check out our [community page](/community), ask questions in our [talk forum](http://talk.manageiq.org), or chat with us in [Gitter](https://gitter.im/ManageIQ/manageiq).  We look forward to hearing from you!
