---
title: CloudForms in AWS part 2 
date: 2018-03-27
tags: aws cloudforms series
author: Laurent Domb
---

This part of the CloudForms in AWS blog series will walk you through how to make sure that CloudForms reaches its full potential in AWS.

IMPORTANT: If you want SmartState analysis to work you need to register your AWS account with the cloud access program. Use the link below to enable cloud access:

(<https://engage.redhat.com/forms/cloud-access-registration>)

Once you’ve registered and got confirmation you will see the RHEL-Atomic_7.4_HVM_GA-20180104-x86_64-1-Access2-GP2 AMI under the “Private images” tab

Before we configure CloudForms we need go to the AWS console and perform some configurations. First create the SNS topic for AWSConfig so that CloudForms can subscribe to messages. SNS stands for simple notification service. It enables CloudForms to subscribe to a topic which contains information about configuration change of AWS resources.

Once created you will something similar to the below:

Next, create an AWS S3 bucket to store logs of AWS Config and CloudTrail (api logs).

Enable AWS Config and make sure to choose the created S3 bucket as well as the SNS topic we created above.

To get events via CloudWatch and CloudTrail we will need to configure a new trail in CloudTrail. In CloudTrail create a new Trail with the following information. As you can see we can also reuse the previously created S3 bucket to store the logs.

The last step to get events properly delivered through SNS. Therefore we need to create a new CloudWatch event rule.

If you’ve done everything correctly, CloudForms will automatically create a new SQS queue named manageiq-awsconfig-queue which pulls data from the SNS AWSConfig_topic:

INFO -- : MIQ(ManageIQ::Providers::Amazon::CloudManager::EventCatcher::Stream#) Amazon SQS Queue manageiq-awsconfig-queue-5f61a1e9-6555-4f06-9c37-f3e6b7539a86 does not exist; creating queue

INFO -- : MIQ(ManageIQ::Providers::Amazon::CloudManager::EventCatcher::Stream#) Subscribing Queue https:// sqs.us-east-1.amazonaws.com/XXXXXXXXXXX/manageiq-awsconfig-queue-5f61a1e9-6555-4f06-9c37-f3e6b7539a86 to arn:aws:sns:us-east-1:XXXXXXXXX:AWSConfig_topic

INFO -- : MIQ(ManageIQ::Providers::Amazon::CloudManager::EventCatcher::Stream#) Created Amazon SQS Queue manageiq-awsconfig-queue-5f61a1e9-6555-4f06-9c37-f3e6b7539a86 and subscribed to AWSConfig_topic

Also, you can test the for incoming events by stopping and starting an instance. This should be caught by the event catcher

INFO -- : MIQ(ManageIQ::Providers::Amazon::CloudManager::EventCatcher::Stream#) Found SNS Message with message type AWS_API_CALL_StartInstances coming from

INFO -- : MIQ(ManageIQ::Providers::Amazon::CloudManager::EventCatcher::Stream#) Parsed event from SNS Message AWS_API_CALL_StartInstances coming from

Next and this is kind of optional. The new smart state analysis in CloudForms is supposed to create the correct roles, policies and instance profiles for you. I prefer to create the policy myself for two main reasons.

1. I know exactly what is happening
2. When having CloudForms create the policies you might run into a race condition and CloudForms will complain about “No agent is set up to process requests: Value (smartstate) for parameter iamInstanceProfile.name is invalid. Invalid IAM Instance Profile name”

Create a trust policy for the role smartstate. Name the file ec2trustpolicy.json

{

 "Version": "2012-10-17",

 "Statement": {

   "Effect": "Allow",

   "Principal": {"Service": "ec2.amazonaws.com"},

   "Action": "sts:AssumeRole"

 }

}

Go ahead and create the role smartstate

[ec2-user@ip-172-31-14-85 ~]$ aws iam create-role --role-name smartstate --assume-role-policy-document file://ec2trustpolicy.json

We now create a custom policy which we will assign to the smartstate role.

[ec2-user@ip-172-31-14-85 ~]$cat ssa_cfme_policy.json

{

   "Version": "2012-10-17",

   "Statement": [

       {

           "Effect": "Allow",

           "Action": [

               "ec2:*",

               "s3:*",

               "sqs:*"

           ],

           "Resource": [

               "*"

           ]

       }

   ]

}

Add the policy to the role smartstate

 [ec2-user@ip-172-31-14-85 ~]$ aws iam put-role-policy --role-name smartstate --policy-name cfmepermissions --policy-document file://ssa_cfme_policy.json

The next step is to create the instance profile. This is needed that the smartstate instance is allowed to perform actions against s3,sqs and ec2

[ec2-user@ip-172-31-14-85 ~]$ aws iam create-instance-profile --instance-profile-name smartstate

[ec2-user@ip-172-31-14-85 ~]$ aws iam add-role-to-instance-profile --instance-profile-name smartstate --role-name smartstate

Finally, you can now login to CloudForms.
On the top right corner go and click configure:

Turn on the smartproxy under roles. We will need that for the smart state analysis

Next click on the advanced tab on the right. Now, this is SUPER important! The OOTB configuration is not going to work. Search for agent_ami_login_user and change the value from ec2-user to cloud-user. It should look like this:

This is the user CloudForms will login with when it will initiate a SmartState analysis.

Finally let’s add the AWS provider. You should be familiar with what access and secret keys you need to add. Important, CloudForms will need at least poweruser access.

Next hit validate on save. Don’t bother filling out the “SmartState Docker” tab as it doesn’t do anything if you fill it out at the same time.

Once saved go edit the provider again. Now go to the SmartState Docker tab. I am wondering who named these fields and the comment below. Would have been better to say “Use registry.access.redhat.com credentials or RHN credentials required to perform ….“. What you need is your RHN credentials. These are needed so that you can pull the smartstate image from the redhat docker registry.

Hit save and you´re done.

You have now configured everything to perform a SmartState analysis in AWS.

Go to your AWS provider and click on an instance. Under the instance configurations tab click

You can then go to the top right corner and click on Configuration -> tasks. You should see something like this

When everything is finished you will see

The next post is going to be for the geeks under us. It will explain what is going on under the hood when smart state happens.

You can check the previous one as well [here](<https://www.redhat.com/en/blog#more-2351>)
