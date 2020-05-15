---
layout: doc_page
title: Easy Install With Docker
---

You can test ManageIQ running in a Docker container using the images that the
ManageIQ project makes available on the [Docker Hub](https://hub.docker.com/r/manageiq).
This is a great option if you have a Linux PC (but it works everywhere Docker
is available).

{% assign release = site.data.releases["stable"] %}

If you are on Linux, make sure the Docker service is running:

```bash
$ sudo systemctl start docker
```

### Step 1: Download and deploy the appliance

Pull the ManageIQ docker image:

```bash
$ docker pull manageiq/manageiq:{{release.tag}}
```

### Step 2: Run the container

```bash
$ docker run -d -p 8443:443 manageiq/manageiq:{{release.tag}}
```

ManageIQ is now up and running.

Next step is to perform some [basic
configuration](/docs/get-started/basic-configuration).
