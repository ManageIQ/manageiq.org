---
title: CloudForms in AWS part 5 (authentication)
date: 2018-04-09
tags: aws cloudforms
author: Laurent Domb
---

If you want to use IAM authentication for CloudForms so that IAM users can authenticate with CFME
you need to do the following.

The current code requires you to add root (account owner credentials) to the authentication field.
So the Access key and the Secret Key are from the root user, not the IAM user.

Next, you can login into the IAM console and create groups which map the groups which we have in
CFME. For example the EvmGroup-super_administrator

Once done create a new user and assign it to the EvmGroup-super_administrator.  In my case the user
brad.

Now, this is important. The
[CloudForms authentication guide](<https://access.redhat.com/documentation/en-us/red_hat_cloudforms/4.6/html-single/managing_authentication_for_cloudforms/index#amazon_settings>)
says clearly that the username and password is the user’s Access Key and Secret Key password. This
means that the user needs programmatic access at creation time.

Once you created the user and added it to the group you can login via CFME

Once logged in you will see the cfme dashboard. You can now go to the configuration access control
page and click on users. You will see
