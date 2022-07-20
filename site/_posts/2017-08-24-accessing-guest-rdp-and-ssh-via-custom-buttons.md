---
title: Accessing Guest RDP and SSH via Custom Buttons
date: 2017-08-24
tags: cloudforms management operations cloudforms, custom, button, operations, rdp, ssh 
author: John Hardy
---
 
First let’s talk about Remote Session vs Remote Console, they are often confused.

* Remote Session – Provides the user a server session on the remote host. Multiple sessions can be established with same or different credentials.
* Remote Console (Also known as Remote Control) – Provides the actual console screen to the user, still a session but the systems local session. Only one console session can exist. Any credentials with rights to log on locally can obtain the system session. (Default in Windows is Deny)

In CloudForms you will have full visibility of all Virtual Machines and Instances in the providers configured. The inventory for any of these objects will include the Hostnames configured. Given that the hostname is available, you can with any Remote Desktop Protocol (RDP) or Secure Shell (SSH) client make a connection.

Question : Can we make CloudForms call our client?

Answer : Yes, assuming your clients for RDP or SSH have an association scheme in the browser you are using to access CloudForms, normally the case.

The association scheme is the prefix to the address, normally known as the URI protocol. Example:

* HTTP://…… – In a browser will take you to a web site.
* FTP://….. – In a browser should open a file view to a FTP source.

And in our case we want;

* RDP://….. – In a browser will ask you to launch a RDP client installed locally to the browser.
* SSH://….. – Similarly, if you use this prefix, it should launch Terminal or whatever SSH client is associated to the scheme SSH://.

Therefore this capability is available CLIENT SIDE. It is advised that you test with your browser first a simple connection such as;

ssh://

This should prompt you to launch an external program to the browser, and you should get a terminal opening with a login prompt to the server. If this works correctly, we can configure CloudForms to do the same.
  
## Configuring CloudForms ##

Creating the Button

We will create two buttons in a button group.

First we need a button group.

I called my button group “VM Ops”, we will add two buttons to this group after we have created them, the graphic shows these buttons present in my VM Ops group.

Create a Button for RDP
  
Set the Request to “launch_url_rdp”, and select the “Open URL” check box.

Create a button for SSH

Again set the request to “launch_url_ssh”, similarly check the “Open URL” check box.

Recap

We have two buttons in a button group, both of which launch a request called “launch_url_”, type being SSH or RDP.

## Automate Methods ##

The buttons call into Automate to an instance named “launch_url_”. We need to create instances and methods for the buttons to follow.

Copy Request Class

First copy the ManageIQ/System/Request Class to an enabled domain of your choice.

If you already have domain with the request class present you can use this class and bypass this step. Continue with Creating Instances.  Here is my example copied to a domain called Sample. Yours won’t have any instances or methods yet.

Create Instance for RDP

Create a new instance as follows
Set the first “meth1” connection to “launch_url_rdp”

Create Instance for SSH

Create another new instance in the same Request Class in your domain as follows;
Set the first “meth1” connection to “launch_url_ssh”

Create Methods

The instances are now created and configured to methods that do not exist, so let’s create those.

Create Method for RDP

Create a new method and enter the code shown.

The ruby method code is very simple,

* Line 1 – First we load the current VM in view as an object called “VM”.
* Line 2 – Log to the automate log file the hostname that we are going to use.
* Line 4 – Set in the VM object loaded the attribute “remote_console_url” with the value of the  VM hostname, with the scheme set to RDP.

Create Method for SSH

Create a new method and enter the code shown.
The method for “launch_url_ssh” is virtually identical to the previous one created for “launch_url_rdp” with only the name of the method and the url scheme changing.

## Try it out ##

Windows/RDP Test

Navigate to a Windows VM.

You can see your new “VM Ops” button group.

Select the RDP console button, after 2-5 seconds the browser should launch your local RDP client.

You maybe prompted by your browser as follows;

CoRD is the RDP client I have installed, click Open CoRD launches the application as follows;
  
Linux/SSH Test

Navigate to a Linux VM.

You can see your new “VM Ops” button group.

Select the SSH console button, after 2-5 seconds the browser should launch your local SSH client, usually Terminal.

You maybe prompted by your browser as follows;

Terminal is default installed on Mac OS X, CentOS, Red Hat Enterprise Linux but you will need to install a terminal application on Windows machines, such as [PuTTY](<https://www.putty.org>).

## Summary ##

This concludes how to add custom buttons to CloudForms for SSH and RDP virtual machine access.
Further information to the actual implementation of “Open URL” in custom buttons can be found in this ManageIQ [Pull Request](<https://github.com/ManageIQ/manageiq/pull/10118>).

We will improve this blog in time by showing you how you can use wildcard instances and assertions in Automate so that you have “launch_url_console”, and instances and methods automatically select the right scheme based on the operating system type. Also some more robustness around using public or private ip addresses and hostnames.
