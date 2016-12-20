---
layout: doc_page
title: Easy Install Using A Public Cloud Provider
---

You can try ManageIQ in one of the public clouds that are supported. The
benefits of this option are that you don't need any hardware yourself, and that
you can also use the same public cloud as the platform to be managed.

In the instructions below we will use the Google Cloud Platform. The ManageIQ
project publishes ready-to-use images on [Google
Storage](https://console.cloud.google.com/storage/browser/manageiq). We will
assume that you have a Google account with an active payment method or a free
trial. You also need to make sure that you have a default keypair installed.

The ManageIQ project is working on making it easy to try out ManageIQ on other
clouds as well.

### Step 1: Create a new image

From console.cloud.google.com, go to "Compute Engine", "Images" and then click
on "Create Image":

![screenshot0040](/assets/images/docs/screenshot_0040.png){:.large_img}

Fill in the following data:

{% assign release = site.data.releases["stable"] %}

**Name:** manageiq-{{release.tag}}

**Family:** centos-7

**Source:** cloud storage file

**Cloud storage file:** manageiq/{{release.tag}}.tar.gz

### Step 2: Create a new instance using the image you created

Once the image is created, you can create a new instance based on this image.
Go to "Compute Engine", "VM instances and then click on "Create instance".

![screenshot0042](/assets/images/docs/screenshot_0042.png){:.large_img}

It's recommended to select the 2 CPU / 7.5GB instance. Under "boot disk",
select the image that you created above. You also need to make sure that HTTP
traffic is enabled.

Now hit "Create" to start the instance.

ManageIQ is now up and running.

Next step is to perform some [basic
configuration](/docs/get-started/basic-configuration).
