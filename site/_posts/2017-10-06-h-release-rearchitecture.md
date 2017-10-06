---
title: "H-release Rearchitecture"
author: fryguy
date: 2017-10-06
comments: true
published: true
tags: developers
---

The ManageIQ team underwent a rearchitecture investigation during the summer of 2017.  In this blog
post I'm hoping to give a bit of an overview of why we did this, and some of the preliminary
results.  We did a lot of research, and there's no way I can fit all of it in a single blog post, so
this is just the first in a series on the rearchitecture efforts.

## Overview

The primary reason for us beginning this investigation was due to an increasing number of customer
escalations.  In looking at these customer escalations we found that many of them were consistent in
that they were problems of scalability and performance.  The problems were almost always in the form
of "Inventory collections are delayed or hit timeout errors"; "Metrics collections can’t keep up";
"Too many queue messages bog down the system".  Of greatest concern was that if these escalations
keep increasing at the current pace, then it will only get worse as we become distributed with other
platforms.

The secondary reason for us doing the investigation was a need to embrace OpenShift/Kubernetes as a
platform.  In particular, we can manage OpenShift/Kubernetes, but we can’t run on it, which is
confusing to users as they have a PaaS, but still need to deploy a virtual appliance.

In order to tackle these challenges, we set out to investigate what major changes would be required
by our product to run on OpenShift/Kubernetes, and once there, what features of it could we leverage
to tackle the scalability and performance problems.  Additionally, since Kubernetes gives us the
ability to play with numerous technologies, we would take this opportunity to try out new
technologies and see what those technologies can do for us, particularly in replacing the home-grown
things we’ve built over the last 10 years.

## OpenShift / Kubernetes

The team developed a proof of concept that ran various parts of our application as pods on
OpenShift.  While the ultimate goal is to run on Kubernetes, some OpenShift specific features were
leveraged in the PoC.  However upon deeper analysis, we believe we won't need those OpenShift
specific features and can run fully on Kubernetes.  Running on Kubernetes is preferable as it allows
us the opportunity to promote ManageIQ to a much wider audience.

![image](https://user-images.githubusercontent.com/52120/31258852-3b8796b2-aa10-11e7-900e-fd7e13d04d68.png)

### Orchestration

There will be a primary pod known as the ManageIQ Orchestrator.  The purpose of this pod is similar
to our current evmserverd process, and initially will be the same code as the evmserverd process.
The evmserverd process is aware of the state of workers, knows to spin up/down the number of
workers, watches heartbeats for liveness killing them as appropriate, and can also watch for CPU and
Memory thresholds.  These are all abilities of OpenShift, so marrying evmserverd with the OpenShift
API, will allow us to leverage OpenShift and let them do what they do best.

Our new ManageIQ Orchestrator communicates with the OpenShift API, dynamically deploying worker
pods, and scaling them up or down based on user changes in the ManageIQ UI.  Eventually, it would be
preferable to autoscale the workers based on some metrics such as number of requests or queue depth,
thereby removing that burden from the administrator, but for now we will leverage the existing code
to manually set worker counts.

The Orchestrator will also be responsible for launching dependent services.  Dependent services are
components of the architecture that are shared by all components, such as the PostgreSQL database
pod, memcached pod, and others.  These dependent service pods will have an OpenShift Service in
front on them so they can be internally routed to.

### Workers

There are 3 categories of workers: service workers, shared workers, and provider specific workers.
These workers will run as separate OpenShift Deployments that are dynamically requested by the
Orchestrator

Service workers are workers that need to be routed to and thus need to be load balanced behind an
OpenShift Service.  These include the UI worker, API worker, and Websocket worker.  Each one is a
separate deployment that can be scaled independently.  The user’s path to these workers starts at
the external OpenShift route, which will accept incoming connections on port 443, handling the SSL
negotiation.  This traffic will then pass through the external auth container for external
authentication.  Then, based on the incoming URL, the auth container will route to the appropriate
Service for UI, API, or Websockets, and the Service will handle load balancing across the workers of
that type.  Additionally, the Orchestrator will deal with role-enabled service workers, such as the
EmbeddedAnsible worker.  This type of worker is only deployed if the corresponding role is also
enabled.

Shared workers are workers that do not need to be routed to and thus don’t need a load balancing
Service.  They are the core workers of the ManageIQ platform.  There are 2 types of shared workers:
regular and provider-enabled.  The regular workers include Generic, Priority, Reporting, and
Schedule workers.  These will work nearly the same as they do now, and can be scaled up/down as
needed.  Provider-enabled shared workers, known as "persisters", will only be deployed if a provider
has been configured.  These "persisters" will be described in more detail in the next part.

Provider specific workers come into play when a provider has been configured, and when that happens
the Orchestrator will start a number of "collector" workers, "helper" workers, and shared
"persistor" workers.

First, the Orchestrator will start a number of provider specific "collector" workers, handling
inventory collection, metrics collection (if available), and event collection (if available).  These
"collector" workers will speak to the provider directly, collecting their information and placing
them in a well-defined format in the new messaging system.  Although the workers will start their
lives as mostly the same Ruby code as they are now, they are actually decoupled from the ManageIQ
application, and ultimately can be written in whatever language is best for that provider, and run
in whatever image environment they need.  This is what we are calling "Bring Your Own Image".

Additionally, if needed, the Orchestrator will start a number of provider specific "helpers".  These
include things like the existing VimBrokerWorker for VMware, or perhaps a future native-operations
microservice.

Finally, the Orchestrator will start a number of shared workers called "persisters".  These
persisters are responsible for watching the queues/topics for incoming data and persisting that data
to the database.   Since the data from the queue will be in a well-defined format, these persisters
can be provider agnostic, and so they will be shared across all providers.  The inventory persistor
can leverage a new stream-based, partial update refresh strategy that can update the database in a
more real-time fashion.  The old refresh strategies will still be available for providers that can’t
take advantage of this new strategy.

## Tell me more!

That's the end for now, but I'll be following up with some more blog posts detailing some of the
many other rearchitecture decisions.  If you just can't wait that long, you can read the GitHub
issue that details all of the work we've done:
[https://github.com/ManageIQ/manageiq-design/issues/32](https://github.com/ManageIQ/manageiq-design/issues/32)

See you in the next post!
