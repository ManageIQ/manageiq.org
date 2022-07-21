---
title: inspectXML – Dump objects as XML
date: 2013-11-20
tags: external operations cloudforms vmware rhev kvm cluster vm datastore XML
author: John Hardy
---

This is pretty simple but very useful. I have done a little research and whilst inspect is a way of seeing inside of an object its also hard to read and not very re-usable. Being somewhat old now (crazy thought) XML used to be the way we described things. Yes I know yaml, json etc have come to replace XML in languages such as Ruby, but I cannot get away from XML is far easier to read and self describing than the aforementioned.

If you have used InspectME that ships with the product then this is the same but in XML format, with a few advantages…

* The code is self discovering, e.g. that it will traverse associations, virtual columns, attributes and options without the need to define the object type. This means as the product grows this routine requires no maintenance.

* As stated, the traversal of the associations is cool, as the XML format allows for nesting of the various attributes, objects, etc… so you can see easily even in XML who owns what.

Download examples here:

[< VMWARE_HOST>]     (<https://raw.githubusercontent.com/jonnyfiveiq/CloudFORMSNOW/master/CFME/inspectXML/vmware_host.xml>)

[< KVM_HOST>]        (<https://github.com/jonnyfiveiq/CloudFORMSNOW/blob/master/CFME/inspectXML/kvm_host.xml>)

[< VM>]              (<https://github.com/jonnyfiveiq/CloudFORMSNOW/blob/master/CFME/inspectXML/vm.xml>)

[< CLUSTER>]         (<https://github.com/jonnyfiveiq/CloudFORMSNOW/blob/master/CFME/inspectXML/cluster.xml>)

[< DATASTORE>]       (<https://github.com/jonnyfiveiq/CloudFORMSNOW/blob/master/CFME/inspectXML/datastore.xml>)

Here are the instructions for use.
Download the automate class here: [cfnow_inspectXML.xml](<https://github.com/jonnyfiveiq/CloudFORMSNOW/blob/master/CFME/inspectXML/cfnow_inspectXML_v1.xml>)

The import includes the following Namespace/Class/Instance/Method – cfnow/methods/inspectXML/inspectXML
Add a custom button to your desired area of the UI pointing to the inspectXML. When you execute your button you will have dumped to /tmp/ a file named after the object you have executed the button against. Example;

Add button to VM & Template, Click on vm named “Test01” then you will have a new file /tmp/Test01.xml on your CloudFORMS appliance.

The routine does dump to the automation log but its a little unreadable, only in the exported file is it beautified.

The intention is that now I have the ability to dump any object to XML, and can transform the XML, graphically into SVG and show the object model for any area of the product. So keep following and that will come soon!
