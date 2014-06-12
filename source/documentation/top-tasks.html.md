#Top Tasks to Get Your Hands Dirty
{: .no_toc}

1. TOC Goes here
{:toc}


##Discover VMware Providers

<iframe width="560" height="315" src="//www.youtube-nocookie.com/embed/A30qJOp-AGY" frameborder="0" allowfullscreen class="video video-side-right"></iframe>

1.  Go to **Infrastructure - Providers**.
2.  Click **Configuration - Discover**
2.  Click **VMware vCenter** and put in the IP Range.
3.  Wait a few minutes and refresh the browser page.
3.  Click the new Provider, then click **Configure - Edit this Provider**.
3.  Add and validate the credentials.
3.  Click **Configure - Refresh Relationships**.


##Discover RHEV-M Providers

<iframe width="560" height="315" src="//www.youtube-nocookie.com/embed/piYrBn4DYrw" frameborder="0" allowfullscreen class="video video-side-right"></iframe>

1.  Go to **Infrastructure - Providers**.
2.  Click **Configuration - Discover**
2.  Click **RHEVM** and put in the IP Range.
3.  Wait a few minutes and refresh the browser page.
2.  Click the new Provider, then click **Configure - Edit this Provider**.
3.  Add and validate the credentials for the Provider and for the C & U Database.
3.  Click **Save**.
3.  Click **Configure - Refresh Relationships**.


## Add Host Credentials

<iframe width="560" height="315" src="//www.youtube-nocookie.com/embed/gyBkw3cxy2E" frameborder="0" allowfullscreen class="video video-side-right"></iframe>

(Required to do SmartState Analysis on Virtual Machines on any Infrastructure Provider)

1.  Go to **Infrastructure - Hosts**.
2.  Click on the Host to edit.
3.  Click **Configuration - Edit this Host**.
4.  Add the Host's Credentials, then click **Validate**.
5.  Click **Save**.
6.  Click **Configuration - Perform SmartState Analysis**.


##Edit Server Settings

<iframe width="560" height="315" src="//www.youtube-nocookie.com/embed/W6xIh8cyYS4" frameborder="0" allowfullscreen class="video video-side-right"></iframe>

1.  Go to **Configure-Configuration-Settings-Zones-Servers**.
2.  Click on your ManageIQ Appliance.
3.  Edit the **Company Name** and **Appliance Name**.
4.  Under **Server Control**, enable the SmartProxy Role.  *(Required for SmartState Analysis on Virtual Machines.)*
5.  Click **Save**.
Information on the other settings can be found in the *Settings and Operations Guide*.


##Run SmartState Analysis on VMware Virtual Machines

1.  Fulfill the Requirements (install VMware vddk on Appliance).
2.  Confirm that credentials are valid for the Hosts.
3.  Confirm that SmartProxy Server Role is enabled and running.
3.  From **Infrastructure - Virtual Machines**, click on a Virtual Machine.
4.  Click **Configure - Perform SmartState Analysis**.
4.  Optional - schedule SmartState Analysis.  See GUIDE LINK.


##Run SmartState Analysis on RHEV-M Virtual Machines

1.  Requirements
    *  NFS: The CloudForms Management Engine Server must be able to mount the NFS Datastore
    *  iSCSI / FCP: CFME VM will leverage the Direct LUN Disk to connect to each Storage Domain LUN. A CloudForms Management Engine Appliance MUST reside in each Datacenter with the iSCSI / FCP storage type. On each CloudForms Management Engine Appliance that will be performing Smart State Analysis a â€˜sharableâ€™, â€˜non-bootableâ€™ Direct LUN disk must be attached for each iSCSI/FCP storage domain.

     *Important Note*: If the Direct LUN disk is attached after the CFME Database is configured, console into the Appliance and run pvscan so the Direct LUN disk is detected. Alternatively, in CFME 5.2.1 you can also accomplish this by restarting the CFME Appliance. Note: Only one VM can be connected to a LUN at any time.

2.  Set Server Relationship
    *  Perform a Refresh on the Provider where the ManageIQ resides.
    *  Select the ManageIQ Appliance.
    *  Click **Configuration - Edit Server Relationship**.
    *  Select the ManageIQ Appliance from the drop down.

3.  From **Infrastructure - Virtual Machines**, click on a Virtual Machine.
4.  Click **Configure - Perform SmartState Analysis**.


##Add Red Hat OpenStack Providers

<iframe width="560" height="315" src="//www.youtube-nocookie.com/embed/d3XHPzXAiuw" frameborder="0" allowfullscreen class="video video-side-right"></iframe>

1.  Go to **Cloud - Providers**.
2.  Click **Configuration - Add**.
2.  For **Type**, select **OpenStack**.
3.  Type in the **Host Name** and **IP Address**.
3.  Add and validate the credentials (must be admin user for the Admin Tenant).
3.  Click **Save**.
3.  Click **Configure - Refresh Relationships**.


##Discover Amazon EC2 Providers

1.  Go to **Cloud - Providers**.
2.  Click **Configuration - Discover**.
3.  Type in the **User Name** and **Password**.
3.  Click **Start**.  ManageIQ will adds all cloud providers associated with this account.
3.  Click **Configure - Refresh Relationships**.


##Collecting Capacity and Utilizatsion (C&U) Data

<iframe width="560" height="315" src="//www.youtube-nocookie.com/embed/dmqdJc1EPP0" frameborder="0" allowfullscreen class="video video-side-right"></iframe>

1.  Go to **Configure-Configuration-Settings-Zones-Servers**.
2.  Enable all C & U Roles from the **Server Roles** section.
3.  Click **Save**.  (It will take a few minutes for the roles to start).
4.  Go to **Configure-Configuration-Settings-Region-C & U Collection**.
5.  For *Cloud Providers*, check **Collect for All Clusters**.
6.  For *Infrastructure Providers*, check the required Clusters and Datastores.
7.  Click **Save**.  It will take some time for the data to collect and process.


##Generate a Report

1.  Go to **Cloud Intelligence-Reports-Reports**.
2.  Using the tree, navigate to the type of report you want.
3.  Click on the report.
5.  Click **Queue**. (The report will be queued for creation.)
6.  When the generation is complete, view the report under **Saved Reports**.
