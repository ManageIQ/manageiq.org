---
layout: start_doc
doc_group: start
title: Get Started Using A Public Cloud Provider
---
The installation consists on two phases:

 1. Install ManageIQ in your local machine inside a Docker container and configure it
 2. Connect to a managed system, and start working with it.

We will use the Google Cloud Platform as an example, so you need to open an account. Free accounts can be opened in [Google Cloud](https://console.cloud.google.com/freetrial) for elegible users.

## 1. Installing ManageIQ as a cloud image ##
### Step 1. Create a new image ###
From console.cloud.google.com, go to "Compute Engine" and then "Images"

Create a new image:

**Name:** manageiq-darga-3

**Family:** centos-7

**Source:** cloud storage file

**Cloud storage file:** manageiq/darga-3.tar.gz

### Step 2. Create a new instance using the image you created
Once the image is created, you can create a new instance based on this
image. It's recommended to select the 2 CPU / 7.5GB instance.

While creating the image, select in firewalls:
~~~~
-[x] Allow HTTP traffic
-[x] Allow HTTPS traffic
~~~~


```
#### [NOTE]
Access to console via ssh is similar to other systems, but as the user is non-privileged, you will need to use 
 $ sudo appliance_console
====
```
## 2. Configure managed systems
### Step 3. Add an infrastructure or cloud provider ###

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
