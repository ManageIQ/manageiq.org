---
title: Announcing Jansa Beta Release
author: chessbyte
date: 2020-06-02 19:12:13 UTC
comments: true
published: true
tags: releases announcements
---

The first beta release of ManageIQ Jansa is here!  It has a bunch of interesting new stuff that you can see in the [roadmap](https://github.com/orgs/ManageIQ/projects/13#column-7337345). When we announced [Jansa Alpha](https://www.manageiq.org/blog/2020/03/Announcing-Jansa-Alpha/), we highlighted Podification and VMware VimBroker Removal.  Today, I want to draw your attention to other enhancements included in the Jansa Beta release.

### Builds and Installation
- Switch to [RPM-based builds](https://github.com/ManageIQ/manageiq-appliance-build/issues/411) means that the ManageIQ builds are created from *exactly* the same components, to be included in multiple flavors of builds - appliance and podified
- Because ManageIQ now leverages RPMs, going forward, you should be able to pull in updates via the `yum update` command
- Created [ManageIQ Operator](https://github.com/ManageIQ/manageiq-pods/tree/jansa/manageiq-operator) to deploy ManageIQ on Kubernetes and OpenShift

### Dependencies and Componentry
- Run on [Rails 5.2](https://github.com/ManageIQ/manageiq/issues/20032) means that ManageIQ is now on a supported version of Rails again
- [Appliance leverages Systemd for Worker Management](https://github.com/ManageIQ/manageiq/issues/19581) standing on the shoulders of a great component

### Core
- [OpenID-Connect or OIDC Authentication](https://github.com/ManageIQ/manageiq/issues/19867) support for both appliance and podified, for both UI and API
- Improvements to Chargeback [API](https://github.com/ManageIQ/manageiq-api/issues/781) and [Deep Linking in UI](https://github.com/ManageIQ/manageiq/issues/20162).  Watch the [demo](https://www.youtube.com/watch?v=uUgw50EeN2A)!
- Automate Engine Performance was improved [here](https://github.com/ManageIQ/manageiq-automation_engine/issues/409) and [here](https://github.com/ManageIQ/manageiq-automation_engine/issues/410)
- Added [Account Lockout Policy](https://github.com/ManageIQ/manageiq/issues/20043) to enforce account lockout after several failed login attempts

### Providers
- VMware inventory collection should be _much_ faster and more resource-efficient with [Streaming Refresh](https://youtu.be/qW_oQrTAGEw?t=882)
- Kubernetes [optimized targeted refresh of inventory](https://github.com/ManageIQ/manageiq-providers-kubernetes/issues/369) by leveraging the Kubernetes Watch API to receive efficient change notifications.  Watch the [demo](https://youtu.be/Sy1fs41PxL0)!
- [Added support for OpenShift 4.x](https://github.com/ManageIQ/manageiq-providers-openshift/issues/139) including the leveraging of [Kubernetes Watches](https://github.com/ManageIQ/manageiq-providers-openshift/issues/171).  Watch the [demo](https://youtu.be/JBdDoTOl42c)!
- Optional syndication of [events](https://github.com/ManageIQ/manageiq/issues/19583) and [metrics](https://github.com/ManageIQ/manageiq/issues/19584) over Kafka on both [podified](https://github.com/ManageIQ/manageiq/issues/20007) and [appliance](https://github.com/ManageIQ/manageiq/issues/20001)
- [Added support for Pluggable Configuration Managers](https://github.com/ManageIQ/manageiq/issues/19992) in preparation for [Terraform Integration](https://github.com/ManageIQ/manageiq/issues/20196)

You can download the Jansa Beta (jansa-1-beta1) release [here](http://manageiq.org/download/).

Since this is a beta release, we do expect a short period of stabilization before we release the GA version.  Please try it and let us know of any issues you encounter to help us squash any remaining bugs.  We are so proud of this release and looking forward to making it generally available soon!

Thanks again to everyone who keeps working on making ManageIQ better!

For questions, comments or support, please chime in on [Gitter](https://gitter.im/ManageIQ/manageiq) or the [Talk Forum](http://talk.manageiq.org/), or [open an issue](https://github.com/manageiq/manageiq/issues).

Thanks,
@chessbyte