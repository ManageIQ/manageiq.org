---
layout: start_doc
doc_group: start
title: Get Started With Vagrant
---

You can test ManageIQ running in a Vagrant box using images from [Atlas](https://atlas.hashicorp.com/vagrant).

The installation consists of two phases:

1. Install ManageIQ in your local machine inside a Vagrant box and configure it
2. Connect to a managed system, and start working with it.

## Installing ManageIQ as a Vagrant box ##
### Step 1. Install Vagrant in your machine
You can foolow instruction for your specific OS in the [Vagrant downloads](https://www.vagrantup.com/downloads.html)

For Fedora, you will need a 64-bit installation (all new ones) and [VirtualBox](https://www.virtualbox.org/). Instructions can be found on [Fedora Developer Portal](https://developer.fedoraproject.org/tools/vagrant/vagrant-virtualbox.html) and [Hashicorp(https://www.vagrantup.com/downloads.html):

Install the **vagrant** package:

$ sudo dnf -y install vagrant
You can install plugins to add additional functionality, for instance, OpenShift Origin recommends you install the following ones:
$ vagrant plugin install vagrant-registration
$ vagrant plugin install vagrant-service-manager
$ vagrant plugin install vagrant-sshfs

Additional details on how to configure the system properly can be found on the links above.

### Step 2. Download and deploy the appliance

1. Pull the ManageIQ Vagrant box from [Atlas](https://atlas.hashicorp.com/vagrant) and run it

$ mkdir manageiq-vagrant; cd manageiq-vagrant
$ vagrant init geertj/manageiq

2. Modify the Vagrantfile if you want to add more memory and CPU (currently configured for 6144 MB and 4 CPU)
For instance, this at the beginning of the Vagrant file will make sure that you always call it with virtualbox
# Vagrantfile
ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'


You can use other tags to get different versions of the container: *latest, latest-darga, etc*.

### Step 3. First connection and configuration

The Vagrant image is a self starting image that has already been configured. You can connect directly into the appliance and start working with it.

1. Log into the ManageIQ dashboard by connecting to the new running VM with a web [browser](http://172.28.128.3/). The initial username and password is ***admin/smartvm***

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
