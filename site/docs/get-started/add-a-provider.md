---
layout: doc_page
title: Add A Provider
---

In this chapter we will use ManageIQ with the [Google Cloud Platform](https://console.cloud.google.com/).

Many other platforms are available including Amazon Web Services, VMware
vSphere and OpenStack.

Capabilities between providers can be different
and evolve with time, so don’t forget to check the [support options
document](https://manageiq.org/docs/reference/latest/doc-Managing_Providers/miq/)

### Create a Google Cloud Platform account (if needed)

Create the Google Cloud Platform free trial account if you don’t have
one already. You will need an existing Google account that you will use
to create a new GCP project and billing account.

[Google Cloud Platform free trial](https://console.cloud.google.com/freetrial)

Once you have your billing account created and you have started your
trial, create a VM to make sure that everything is working.

Press ***Get started*** in the Google Cloud Platform console to follow a
tutorial on the platform.

1.  Enable billing in the account
2.  Create a project, Google Compute Engine will take some minutes to
    start
3.  Create an instance or follow the tutorial. For instance, a CentOS 7
    VM with 10 GB hard drive

![screenshot0007](/assets/images/docs/screenshot_0007.png){:.large_img}

After you finish the tutorial, you should have at least 1 instance in your account

### Add the provider to ManageIQ


#### 1.  Connect to ManageIQ as admin (admin/password)####

1.  Connect to the appliance via ssh and make sure that the appliance is configured in the same zone that
        the GUI and that is synchronized 
        (`sudo systemctl restart chronyd`)
2.  Access the console to see available options
       `appliance_console` or `sudo appliance_console`

#### 2.  Generate a private JSON key for your project in Google Cloud####
Platform (API → Credentials), don’t forget your key as you will
    need it. And enable API for the
    project (https://support.google.com/cloud/answer/6158841)

![screenshot0008](/assets/images/docs/screenshot_0008.png){:.large_img}

#### 3.  Add a new Cloud provider ####
In ManageIQ, go to ***Compute→Cloud → Providers*** and select Add New
    Cloud Provider.

![screenshot0009](/assets/images/docs/screenshot_0009.png){:.large_img}

#### 4. Select Google Cloud Platform ####

Select Google Cloud Platform as type

![screenshot0010](/assets/images/docs/screenshot_0010.png){:.large_img}

#### 5. Enter credentials ####
Enter your Google Compute Engine Project ID for *Project*.
Copy your project’s *Service Account* JSON key contents to the
    *Service Account JSON* field.

![screenshot0011](/assets/images/docs/screenshot_0011.png){:.large_img}

#### 6. Store the provider configuration  ####
 Press ***Validate*** and then ***Add***

### Refresh the provider in ManageIQ

1.  Providers are refreshed every few minutes and when events happen in
    the system. If you don’t see all the data the first time you will
    need to go to the Provider and then to *Configuration → Refresh
    Relationships and Power States*
2.  Sometimes the credentials for the Cloud need to be refreshed, go to
    the Provider and then press *Authentication → Re-check
    Authentication Status* to trigger a refreshment.

![screenshot0012](/assets/images/docs/screenshot_0012.png){:.large_img}

## Next: [Review Provider](/docs/get-started/review-provider)
