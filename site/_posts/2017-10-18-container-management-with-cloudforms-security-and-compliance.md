---     
title: Container Management with CloudForms – Security & Compliance
date: 2017-10-18
tags: cloudforms container management compliance openscap security
author: Jerome Marc
---

This blog is part 4 of our series on Container Management with CloudForms.
  
This blog post focuses on the security and compliance aspects of managing containerized  environments.
In a container based infrastructure, the container software is often built directly by developers, usually via continuous integration (CI/CD). Once it comes to deploying this software in production, we need to make sure it is securely validated.
  
Another challenge is the source of those containers. Developers can use any base images for their builds, including insecure container images downloaded from the Internet. On the other hand, Enterprise IT needs to ensure all containers running in production are built based on trusted and approved sources.
  
And finally, it is also important to validate that all containers images, as well as containers instantiated from those images, are up to date with respect to security fixes.
  
CloudForms provides specific capabilities for managing security and compliance for container based infrastructures.
  
It can enforce policies for container hosts, and marks the nodes that are not compliant (e.g. outdated versions, configuration issues, security risks, etc). Those policies take into account information about the container host itself, but also about any resources that are connected to this host. If needed, it can trigger an action to start automatic remediation. We could for example automatically trigger an update of a package when a new security fix is available.
  
CloudForms also provides reporting for container sources. For example, it can identify containers that come from untrusted registries.
  
Finally it can scan the content of container images using [OpenSCAP](<https://www.open-scap.org>) for standardized security checks. When an image is identified as non-compliant, all running containers instantiated from this image can be flagged automatically.
  
The following video demonstration highlights these capabilities in CloudForms:

* Compliance with Enterprise Policies
* Trusted Sources (flagging Unknown Registries)
* Container Images Validation
* Out-of-Compliance Containers
  
(<https://www.youtube.com/watch?v=GczLIpIC3LA>)
