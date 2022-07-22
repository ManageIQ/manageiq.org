---
title: Notify VM Owner of Upcoming Retirement
date: 2016-09-20
tags: cloudforms management
author: Brant Evans
---

One side effect of quick and easy provisioning of virtual machines (VMs) is VM sprawl. To keep the number of VMs manageable, administrators set retirement dates to automatically retire the VM and free the hardware resources.

The risk with setting a retirement date is that the VM owner may not know (or may forget) that an active VM will be automatically retired. CloudForms has the ability to warn the VM owner that retirement of a VM is approaching. Customers want to be able to send multiple retirement warning emails to the VM owner. This can be achieved by modifying the retirement email methods in the Automate model.

As an administrator of CloudForms that has both Cloud and Infrastructure providers in the environment, it is most effective if Cloud Instances and Infrastructure VMs send the same email for retirement warnings. Imagine the request is to send warnings 30 days before, 7 days before, and 1 day before the retirement date.

First, create a namespace to place our Email class in. Create the System / CommonMethods namespace in your domain.
Next, modify the ManageIQ / Infrastructure / VM / Retirement / vm_retirement_emails instance and method. To be able to modify the instance and method, they need to be copied to the System / CommonMethods namespace in your domain. (As a side effect of the copy the Email class will be created.) With the vm_retirement_emails method selected select Configuration → Copy this Method button. In the Copy Automate Method dialog uncheck the “Copy to same path” checkbox. In the “Namespace” box select the System / CommonMethods namespace. Finally press the Copy button. Repeat this process for the vm_retirement_emails instance.

To allow for easily changing the number of days for each warning we will modify the schema for the Email class to add warn_days_1, warn_days_2, and warn_days_3 integer attributes. Navigate to the Email class and select the Schema tab. With the schema displayed select Configuration → Edit selected Schema. Click the plus icon to add the new fields. The picture below shows the schema with all of the new attributes. After the new fields have been added click Save.

The newly added attributes are added to the end of the schema, but they need to be moved to the top. To adjust the order select Configuration → Edit sequence to move the newly added fields to the top using the arrows and then click Save.

Next, the vm_retirement_emails instance is modified to set the number of days to warn in the vm_retirement_emails instance. Edit the instance, setting warn_days_1 to 30, warn_days_2 to 7, and warn_days_3 to 1. While editing the instance you may want to also change the from_email_address, to_email_address, and signature.

The vm_retirement_emails method is modified to add the update_retirement_warning function. This function changes the number of warning days for the VM. A call to the function is added to the VM Retirement Warning Email and VM Retirement Extended Email sections. The modified method code can be found at (<https://github.com/branic/cloudforms/blob/master/multiple_retirement_emails/vm_retirement_emails.rb>)

Now that the modified code is in place, plumb in our new method by copying the ManageIQ / System / Event / MiqEvent / Policy Event / vm_retire_warn instance to your domain. This time when copying, leave the “Copy to same path” option selected.

After the vm_retire_warn instance has been copied, edit the instance and change the rel5 field to point to the modified vm_retirement_emails instance.

With these changes CloudForms will now send warning emails to VM owners at the defined intervals. This can further be extended to ensure that the number of warning days are reset when the retirement date is modified by creating a custom button and supporting automation code.
