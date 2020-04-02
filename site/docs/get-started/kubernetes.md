---
layout: doc_page
title: Easy Install With Kubernetes
---

You can get ManageIQ up and running quickly on a Kubernetes
cluster using [Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)

{% assign release = site.data.releases["prerelease"] %}

Ensure minikube is installed and configured with enough resources:

```bash
$ minikube config view
- disk-size: 100G
- ingress: true
- memory: 10G
- cpus: 4
- dashboard: true
```

Ensure the `oc` command line tool is installed:

This can be downloaded from the [OpenShift Origin releases page](https://github.com/openshift/origin/releases)

### Step 1: Get the release templates

Clone the manageiq-pods repo and check out the latest branch

```bash
$ git clone https://github.com/ManageIQ/manageiq-pods
$ cd manageiq-pods
$ git checkout {{release.tag}}
```

### Step 2: Modify the deploy parameters

The `parameters` file dictates how the application will be deployed.
For a non-production use-case the memory and cpu requests and limits can be decreased.
Additionally, APPLICATION_DOMAIN should be set to a hostname which will route back to
your minikube VM.

### Step 3: Run the deploy script

```bash
bin/deploy parameters
```

### Step 4: Patch the httpd deployment

```bash
oc patch deployment httpd -p '{"spec":{"template":{"spec":{"containers":[{"name": "httpd", "securityContext":{"capabilities":{"add":["SYS_ADMIN"]}}}]}}}}'
```

ManageIQ is now up and running at the host provided in the APPLICATION_DOMAIN parameter.

For more detailed installation instructions see the guide in the [manageiq-pods repository](https://github.com/ManageIQ/manageiq-pods/blob/{{release.tag}}/README.md).

Next step is to perform some [basic configuration](/docs/get-started/basic-configuration).
