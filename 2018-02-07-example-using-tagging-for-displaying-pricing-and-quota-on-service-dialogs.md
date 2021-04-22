---     
title: Example using Tagging for Displaying Pricing and Quota on Service Dialogs
date: 2018-02-07
tags: cloudforms
author: ConnorJGilchrist
---

## Introduction ##

This post explains a solution whereby Red Hat CloudForms is enabled to show back to the users their remaining tenant budget when ordering services via the service catalog. The implementation uses CloudForms taxonomy and custom methods to display service costs, quota, and a message on the Service Dialog screen.

## Use-Case ##

As a user, I wish to be presented the cost of the service I am ordering, along with my current budget and remaining budget when the service is ordered. I would like my budget to be set and maintained at my tenant level.

## Solution ##

This article describes a possible solution which consists in adding a tab to the service dialog to display required information to the end-user.

You can create a tab for that: the ‘Service Costs’ which contains a number of dynamic elements that retrieve tags from your tenant and service template and calculates the quota status.  
Upon ordering, the Service state machine is updated to call a method that updates the remaining budget tag(s) on the tenant. \

In the state pre3 we have connected to an instance/method called “set_your_budget”. Each time a service is ordered the price of that service is deducted from the existing remaining balance tag on the tenant for the user ordering the service.
  
## Service Dialog Automation ##

The methods behind the service dialog are as follows;
Cost_of_this_service – This method obtains the cost of the service from a tag assigned to the service.
Example Tag: cost_of_this_service_10000 or cost_of_this_service_10
Remaining_budget_after_this_service – This method calculates the subtracting of the cost_of_this_service from the your_budget value.
Set_your_budget – Called from the state machine to maintain the state of the tags assigned at the tenant for the user ordering the service. Only one tag should exist and will contain the value for the remaining budget.
Example Tag : mycompany_budget_9500 or mycompany_budget_10000
Your_budget –  Returns the remaining budget from the tag assigned at the tenant level.
Status – Returns the status message.

Or

There are two tags required to be set for the system to work,

cost_of_this_service_(<)sum> – This tag you assign to the service template, you can have many of these covering different costs for many services, but only one can exist on any one service at any time. The sum is the cost of that service.
(<)companyname>_budget_(<)sum> – This tag is the tenant budget, it works by company name that is set in the appliance. Only one tag can exist on any one tenant at any time. The sum is the STARTING budget for the tenant. The solution will dynamically create more tags with the same company prefix, and control the assignment of the tags to the tenant when services are ordered. The budget sum decreases each time a service is ordered by the cost of the service being ordered.
  
## Implementation ##

Materials and instructions required to implement this solution are available [here] [https://github.com/jonnyfiveiq/CloudFORMSNOW/tree/master/Billing_Sample].
Step 0 – Red Hat Consulting Scripts (pre-requirement)
The Red Hat Consulting import/export scripts will be used in this example. They can be installed on the appliance following instructions on [https://github.com/rhtconsulting/cfme-rhconsulting-scripts]
Step 1 – Clone the Materials
git clone [https://github.com/jonnyfiveiq/CloudFORMSNOW.git]
Step 2 – Import the Tags
miqimport tags CloudFORMSNOW/Billing_Sample/tags/billing.yaml
Step 3 – Import the Sample Dialog
miqimport service_dialogs CloudFORMSNOW/Billing_Sample/dialogs/Billing_Example.yml  
Step 4 – Import the Automate domain
miqimport domain Billing CloudFORMSNOW/Billing_Sample/automate/
Step 5 – Import the Sample Service
miqimport service_catalogs CloudFORMSNOW/Billing_Sample/service_catalogs
Step 6 – Tag the Service
We will use the sample tags imported in Step 2.
Select the Service Item “Generic Sample Billing” and tag it with “cost_of_this_service_100”
Step 7 – Tag the Tenant
We will use the sample tags imported in Step 2.
Note, the tenant budget tag is prefixed with the “Company Name” without spaces and lowercase as configured in the CloudForms appliance, if you have changed from the default, you will need to change the tag NAME and VALUE. Example;
Company Name = Red Hat
then
Tag name & value = redhat_budget_10000
Select your TENANT and tag it with “mycompany_budget_10000”

And with the tag assigned.

## Validation ##

We can now order the service item from the service catalog.

As part of the service dialog, we can see all pricing and quota information:

Service Costs
Cost of this Service – Show the cost assigned to the service item.
Quota
Current Budget – Shows the Current Budget. If this is the first time Billing is being ran, then the value will be the tag you assigned at the tenant.
Remaining Budget – Is the Current budget minus the service cost.
Message
Status –  Plain English text to show status of quota.
Note: This service item example will not deploy anything, but run the generic state machine and return a success.  
  
## Debugging examples ##

In the Automation log on the appliance that is processing the request, you will find the following output from the “set_your_budget” method.
It shows the Tenant name, along with the currently assigned tag and what it will be changing it too.  

(<)AEMethod set_your_budget>  STARTED /Billing/Dialogs/DynamicElements/set_your_budget

(<)AEMethod set_your_budget> Tenant Name = My Company

(<)AEMethod set_your_budget> remaining_budget = 9900

(<)AEMethod set_your_budget> your_budget = 10000

(<)AEMethod set_your_budget> Created Tag = mycompany_budget_9900

(<)AEMethod set_your_budget> ASSIGN your_budget_tag = mycompany_budget_9900

(<)AEMethod set_your_budget> UNASSIGN your_budget_tag = mycompany_budget_10000

(<)AEMethod set_your_budget>  ENDED /Billing/Dialogs/DynamicElements/set_your_budget
Possible issues are
No Cost on service = you have not tagged the service with a cost.
No tenant budget = you have not tagged your tenant with a starting budget.
Tenant budget does not change = The company name does not match the tags.
Nothing being returned, could be automate issues with domain order, locked domain?

Share this:
[Twitter] [https://www.redhat.com/en/blog?share=twitter&nb=1]
[Facebook] [https://www.redhat.com/en/blog?share=facebook&nb=1]
