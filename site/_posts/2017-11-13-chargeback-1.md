---
title: Chargeback and new features in Gaprindashvili
author: lpichler
date: 2017-11-13
tags: tutorials
comments: true
published: true
---

Upcoming release is approaching fast and we made some improvements 
in this area but first let's look how chargeback looks in ManageIQ.

Most articles about chargeback (or "it chargeback", "showback") are starting 
with its definition which is ussually about some mix of costs of it, resources, 
departments, it management, different models...in ManageIQ, core of chargeback
is basic chargeback formula (used in different variants):

**rate(currency per hour) * metric value(unit) * consumption period(hours)**

Example:

**$1(per hour) * 20 GB * 744 hours**

### Understanding formula regard to ManageIQ

metric value - is measurement of a particular characteristic of a resources's(VM, ContainerImage,...) 
               performance or efficiency like how many MB of memory has been used by virtual machine.
               This value is related to concrete time moment. As example can be, that virtual machine was using different
               amount of MB at 1:00 and different at 2:00.
               We are distiguishing two type of metrics: allocated and used. Allocated metrics is limit of 
               resource in examined metric, for example how many GB of storage is available and used metric would say
               how many GB is used on the storage. Metric value is related to consumption period. Value is taken as 
               average or maximum in this interval. You can choose it(Picture 3, Method for allocated metrics) for 
               allocated metrics and for used metric is used average.
               In ManageIQ we have 14 predefined metrics (see column Description):

![Picture 1: Compute Metrics with rates](/assets/images/blog/ratecompute.png)
![Picture 2: Storage Metrics with rates](/assets/images/blog/ratestorage.png)

*This section is in Cloud Intel -> Chargeback -> Rates in ManageIQ.*

rate - is how many dollars(or any currency) costs allocation or usage of any metric. For example you can set rate $1 for 
       each used hour of memory in virtual machine. See column Rate - Variable in pictures 1 and 2.

consumption period - is investigated period of metric values and costs. In ManageIQ it is related to report interval.
                     You can set this in chargeback report definition, in Filter tab, Show Cost by select box:

![Picture 3: Chargeback Report Definition: Filter tab](/assets/images/blog/reportfiltertab.png)

When you select 'Month' your consumption period will be 720 hours(for 30-day month).

For virtual machines, this period is related to its existence. When we will do month chargeback report of August,
consumption period will from 1st August 00:00 to 31st August 23:59:59 and it is 744 hours - but when virtual machine start
on 2nd August 00:00 and will be stopped on on 2nd August 10:00 - then consumption period will be only 10 hours.
There is taken into account existence of Virtual Machine.


In rate editor, you can select 'Per Time' for your rate and 'Per Unit'. For better transparency of calculation is recommended to
recalculate rate to basic units. Per Time has hour basic unit. Per Unit has basic unit according to metric. For example,
if we have rate $1 per month then hourly rate will be **$1/744 hours = $0,001344086022** per hours.

There was discussed rate called as variable rate. (see Picture 1 or 2: Rate Variable) but there is also fixed part 
(see Picture 1 or 2: Rate Fixed) which is not depending on metric values. Let's look on extended formula with fixed part:

**fixed rate(currency per hour) * consumption period(hours) + variable rate(currency per hour) * metric value(unit) * consumption period(hours)**

It is fixed addition for each consumed hour.

### Selection of Rates

In the section Cloud Intel -> Chargeback -> Rates you can manage rates in ManageIQ. You can create them.
We can select rate of chargeable entities (Vm, Container, ContainerImages) according to various criteria during
chargeback report generation. You can rate according to tags, tenants, selected providers, you can see it in section 
*Cloud Intel -> Chargeback -> Assigments*:

![Picture 4: Chargeback Rate Assignment: Filter tab](/assets/images/blog/assignmentchargeback.png)

### Chargeback Tiers

As you can see in picture 1 or 2, there is column Range with Start and End. It allows you to add any intervals and you 
can specify different rate for each interval. There is used only rate from related interval in calculation 
(No prior interval are taken into account). Rates are unblended.

## New features in Gapridashvilli

We added charging of Cloud Volume types and metering reports.

### Charging of Cloud Volumes

Speciality here is that we don't know which cloud volume types will be in the system so we had to add possibilty to 
add dynamic metrics according to cloud volume types.

If your provider has cloud volume types of storage - you can find it in *Storage -> Block Storage -> Volumes* and this list
is synchronized with provider. In chargeback, the Allocated Disk Storage metric is broken down into these types. You can see
all available types(if there are any in the system column sub metric is displayed) in rate editor and you can set 
specific rate for them, let's called this metrics as sub metrics:

![Picture 5: Chargeback Rate: Sub Metrics](/assets/images/blog/storagetyperate.png)

You can see it in report definition in available column for report.

### Metering Reports

This kind of report is almost like a chargeback but without costs and with focus on usage metrics. You can find Metering 
for VMs, ContainerProjects and ContainerImages report as we have for chargeback. It is report with metric values.

**Used metrics**
There is difference. In Chargeback we calculated metric value of used metric as average on the interval but in metering 
report used metric values sums on the interval see table:


| | Time        | CPU Average Usage | CPU Allocation  |Hour Count|
|---| -------------:|-------------:| -----:|---:
| | 0 - 1 AM | 20 Mhz     |1|1|
| | 0 - 1 AM | No metrics |1|0|
| | 0 - 1 AM | 100 Mhz    |1|1|
| | 0 - 1 AM | 2 Mhz      |1|1|
|TOTAL over 4 Hours Interval| 4 hours      | 122 Mhz    |1|3|

