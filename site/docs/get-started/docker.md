---
layout: start_doc
title: Get Started With Docker
permalink: /docs/get-started/docker
---

You can test ManageIQ running in a Docker container using images from the [Docker hub](https://hub.docker.com/).

The installation consists on two phases:

 1. Install ManageIQ in your local machine inside a Docker container and configure it
 2. Connect to a managed system, and start working with it.

## Installing ManageIQ as a docker container ##
### Step 1. Install docker in your machine
You can follow instructions for your specific OS in the [Get Started with Docker](https://docs.docker.com/engine/getstarted/step_one/#step-1-get-docker)

Additional details on how to configure the system properly can be found on the links above.

### Step 2. Download and deploy the appliance

 1. Pull the ManageIQ docker image from [Docker hub](https://hub.docker.com/) and run it

    $ docker run --privileged -di -p 80:80 -p 443:443 docker.io/manageiq/manageiq:darga-3

You can use other tags to get different versions of the container: [*latest, latest-darga, etc*](https://hub.docker.com/r/manageiq/manageiq/).

### Step 3. First connection and configuration

The Docker image is a self starting image that has already been configured. You can connect directly into the appliance and start working with it.

 1. Log into the ManageIQ dashboard by connecting to the new running VM with a web [browser](https://127.0.0.1). The initial username and password is ***admin/smartvm***

 2. There are a number of basic settings, located under <u>"Configure → Configuration"</u> in the web interface, or under <u>"Advanced Settings"</u> in the VM's console, that you may wish to change when starting ManageIQ for the first time. Among the most common are:

    * Time and date settings
    * Hostname
    * Admin password

## Configure managed systems
### Step 4. Add an infrastructure or cloud provider ###

Now that your ManageIQ Appliance is up and running, it's time to connect up with your Providers (Cloud or Infrastructure) and gather data about them. There are detailed instructions for each provider in the documentation.

#### Discover a new infrastructure provider

For Microsoft SCVMM, RHEV, oVirt, or vSphere

 * Navigate to ***Infrastructure → Providers***
 * Click ***Configuration → Discover Infrastructure Providers***
 * Select the type.
 * Enter an IP Range.
 * Click ***Add***.

#### Discover a new cloud provider

For OpenStack, Amazon EC2, Azure, Google Cloud Engine:

 * Navigate to ***Clouds → Providers***
 * Click ***Configuration → Add a New Cloud Provider***
 * Select the type.
 * Enter required credentials.
 * Click ***Add***.

## Next: [Basic Configuration](/docs/get-started/basic-configuration)
