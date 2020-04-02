---
title: Announcing Jansa Alpha Release
author: chessbyte
date: 2020-03-31 19:12:13 UTC
comments: true
published: true
tags: releases announcements
---

The first alpha release of ManageIQ Jansa is here!  It has a bunch of interesting new stuff that you can see in the [roadmap](https://github.com/orgs/ManageIQ/projects/13#column-7337345). There are 2 major changes that I want to draw your attention to.

- Podification - A new release format for running ManageIQ on Kubernetes and OpenShift. This is the culmination of the [rearchitecture](https://github.com/ManageIQ/manageiq-design/issues/32) we started in 2017. While we've had a "podified" version for some time, it was structurally different and not really supported nor advertised, being more of a stepping stone to this new format.  The current implementation does not yet represent the complete architecture described in the link above, but it is far enough along that we are proud of what has been accomplished and look forward to improving it with every release of ManageIQ.  To install a podified ManageIQ, please read this Getting Started [guide](https://www.manageiq.org/docs/get-started/kubernetes).
- VMware VimBroker Removal - In addition to the various performance issues with the VMware VimBroker, one of the underlying technologies, [DRb](https://en.wikipedia.org/wiki/Distributed_Ruby), was incompatible with Podification. As such, we redesigned the VMware interaction in such a way that the broker was removed completely. Much more detail can be found [here](http://talk.manageiq.org/t/vmware-vimbroker-removal/4775).

Since this is an alpha release, we do expect some period of stabilization before we release the GA version.  Please try it and let us know of any issues you encounter to help us squash any remaining bugs.

You can download the Jansa Alpha (jansa-1-alpha1) release [here](http://manageiq.org/download/).

It is amazing that, after all these years, the improvements just keep on coming.  Thanks again to everyone who keeps working on making ManageIQ better!

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).

Thanks,
@chessbyte