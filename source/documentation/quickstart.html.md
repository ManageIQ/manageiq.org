
# ManageIQ Quickstart

1. TOC goes here
{:toc}


## Providers

A provider is a server with software to manage multiple virtual machines that reside on multiple hosts. The **Providers** page, found under the Infrastructure tab, displays all discovered or added providers in your enterprise.

**Note**

Any applied filters will be in effect on this page.

Use the **Providers** taskbar to manage the existence of your providers and to initiate a refresh of them. These buttons are used to manage multiple providers at one time. To manage one provider, click on that item in the main area of the screen.

Console uses virtual thumbnails to describe providers. Each thumbnail contains four quadrants by default. This allows a user to glance at a provider for a quick view of its number of hosts and authentication status.

![](doc/quickstart/2189.png)

1.  Top left quadrant: Number of hosts
2.  Bottom left quadrant: Management system software
3.  Top right quadrant: For future use
4.  Bottom right quadrant: Authentication status


|Icon|Description|
|:---|:----------|
|![](doc/quickstart/2190.png)|Validated: Valid authentication credentials have been added.|
|![](doc/quickstart/2191.png)|Invalid: Authentication credentials are invalid.|
|![](doc/quickstart/2192.png)|Unknown: Authentication status is unknown or no credentials have been entered.|


### Adding a Provider

After initial installation and creation of a ManageIQ Management Engine environment, add providers to the appliance with the following procedure.

**Procedure 5.1. To Add a Provider**

1.  Navigate to **Infrastructure** → **Providers**.
2.  Click ![](doc/quickstart/1847.png) **(Configuration)**, then click ![](doc/quickstart/1848.png) **(Add a New Infrastructure Provider)**.
3.  Type in the **Name** of the provider to add. The **Name** is how the device is labeled in the console.
4.  Select the **Type** of provider: **Red Hat Enterprise Virtualization Manager** or **VMware vCenter**.
5.  Type in the **Host Name**, and **IP Address** of the provider to add.
6.  For Red Hat Enterprise Virtualization providers, enter the **API Port** if your provider uses a non-standard port for access.
7.  If you have multiple zones, select the appropriate one from **Zone**.
8.  Type in a **User ID** and **Password** with administrator privileges to the provider. To refresh a provider, these credentials are required.
9.  Click **Validate** to confirm that the user and password connects.
10. Click **Save**.

Result:

ManageIQ Management Engine adds a new provider. Use this provider for virtual machine provisioning.

**Note**

To obtain historical Capacity and Utilization (C & U) data for Red Hat Enterprise Virtualization Manager, you will need to add credentials for the Red Hat C & U Database. Once discovered, and set up for C & U in ManageIQ Management Engine, you can use ManageIQ Management Engine to collect C & U from this point forward. For further information, refer to *Chapter 4. Data Collection Setup and Reports Installation* in the *Red Hat Enterprise Virtualization 3.1 Installation Guide*.


### Discovering Providers

After initial creation of a ManageIQ Management Engine environment, discover the providers in your environment. To do this, use ManageIQ Management Engine's ability to discover using a range of IP addresses.

**Procedure 5.2. To Discover Providers by Subnet Range**

1.  Navigate to **Infrastructure** → **Providers**.
2.  Click ![](doc/quickstart/1847.png) **(Configuration)**, then click ![](doc/quickstart/2119.png) **(Discover Infrastructure Providers)**.
3.  Check the type of provider to discover.

    ![](doc/quickstart/2195.png)

4.  Type in a **Subnet Range** of IP addresses staring with a **From Address** and ending with a **To Address**. The cursor automatically advances as you complete each octet.

    ![](doc/quickstart/2196.png)

5.  Click **Start** to confirm the discovery process.

Result:

The server searches for computers running supported providers. When available, the new providers display. These providers are named using a Hostname and IP address. To make them identifiable, edit the basic information for each provider.


### Editing Provider Information

Edit information about a provider such as the name, IP address, and login credentials.

**Procedure 5.3. To Edit Provider Information**

1.  Navigate to **Infrastructure** → **Providers**.
2.  Click the provider to edit.
3.  Click ![](doc/quickstart/1847.png) **(Configuration)**, and then ![](doc/quickstart/1851.png) **(Edit Selected Infrastructure Provider)**.
4.  In **Basic Info**, edit the following:
    -   Use **Name** to set an easily identifiable name for the provider.
    -   Use **Host Name** to specify the hostname for the device.
    -   Use **IP Address** to set the IP address for communication with the provider.
    -   You cannot change the **Type** of provider.
    -   Edit the **API Port** if your provider uses a non-standard port for access.
    -   Use **Zone** to isolate traffic and provide load balancing capabilities. Specify the **Zone** this ManageIQ Management Engine Appliance is a member. At startup, the zone is set to **Default**.

5.  Use **Credentials** to provide login credentials required for the provider.

    ![](doc/quickstart/2198.png)

    -   Use **User ID** to specify a login name.
    -   Use **Password** to specify the password for the **User ID**.
    -   Use **Verify Password** to confirm the password.

6.  Click **Validate** to confirm the user and password connects.
7.  Click **Save**.

Result:

The provider settings are updated and the changes take effect immediately.

**Note**

To obtain historical Capacity and Utilization (C & U) data for Red Hat Enterprise Virtualization Manager, you will need to add credentials for the Red Hat C & U Database. Once discovered, and set up for C & U in ManageIQ Management Engine, you can use ManageIQ Management Engine to collect C & U from this point forward. For further information, refer to *Chapter 4. Data Collection Setup and Reports Installation* in the *Red Hat Enterprise Virtualization 3.1 Installation Guide*.


### Refreshing Providers

Refresh a provider to find other resources related to it. Use **Refresh** after initial discovery to get the latest data about the provider and the virtual machines it can access. Ensure the provider has credentials to do this. If the providers was added using **Discovery**, see *Editing Provider Information*.

**Procedure 5.4. To Refresh Multiple Providers**

1.  Navigate to **Infrastructure** → **Providers**.
2.  Check the providers to refresh.
3.  Click ![](doc/quickstart/1847.png) **(Configuration)**, and then ![](doc/quickstart/2003.png) **(Refresh Relationships and Power States)**.
4.  Click **OK** to confirm the refresh.

Result:

The chosen providers are refreshed.


## Hosts

The **Hosts** page under **Infrastructure** displays the hosts discovered in your enterprise environment.

**Note**

Any applied filters will be in effect here.

![](doc/quickstart/2212.png)

After adding or sorting your hosts, click on one to examine it more closely and see its virtual machines, SmartProxy settings, and properties.

![](doc/quickstart/2222.png)

1.  Top left quadrant: Number of virtual machines on this host
2.  Bottom left quadrant: Virtual machine software
3.  Top right quadrant: Power state of host
4.  Bottom right quadrant: Authentication status

|Icon|Description|
|:---|:----------|
|![](doc/quickstart/2190.png)|Validated: Valid authentication credentials have been added.|
|![](doc/quickstart/2191.png)|Invalid: Authentication credentials are invalid.|
|![](doc/quickstart/2192.png)|Unknown: Authentication status is unknown or no credentials have been entered.|


### Requirements for Provisioning a Host

ManageIQ Management Engine can provision hosts using PXE and Intelligent Platform Management Interface (IPMI) technologies. To do this, complete the following steps before you provision your first host.

**Procedure 5.5. To Provision a Host**

1.  Make a PXE server accessible to the ManageIQ Management Engine server.
2.  Create a customization template for hosts. This customization template must contain host-specific additions, documented in the *Customization Templates for Host Provisioning* section.
3.  Create system image types for the host.
4.  Associate images with the image types.
5.  Enable IPMI on provisioning hosts and add them to the ManageIQ Management Engine Infrastructure.


#### PXE Provisioning

PXE is a boot method that allows you to load files from across a network link. ManageIQ Management Engine uses it for files required for provisioning virtual machines. PXE can be used for provisioning for either Red Hat Enterprise Virtualization Manager or VMware.

-   Connect to the **PXE Server**.
-   Create a **System Image Type**.
-   Associate each **PXE** image with an image type.
-   Create a customization template.


##### Connecting to a PXE Server

The following procedure connects to a PXE server and adds its details to ManageIQ Management Engine.

**Procedure 5.6. To connect to a PXE server**

1.  Navigate to **Infrastructure** → **PXE**.
2.  Click ![](doc/quickstart/1847.png) (**Configuration**), then ![](doc/quickstart/1848.png) (**Add a New PXE Server**).
3.  In **Basic Information**, type a **Name** that will be meaningful in your environment.

    ![](doc/quickstart/2316.png)

4.  For **Depot Type**, select either **Network File System** (NFS) or **Samba**. The fields to enter in the dialog depend on the **Depot Type**.
    -   For NFS, type in the **URI**, **Access URL**, **PXE Directory**, **Windows Images Directory** and **Customization Directory**. When you provision, ManageIQ Management Engine writes a text file to the **PXE Directory**. The file is named after the MAC address of the NIC that is assigned to the virtual machine. It contains where to get the kernel and initrd image. This file is removed after a successful provision. The **Windows Images Directory** is where the files are located on your NFS for the provisioning of Windows operating systems. The **Customization Directory** is where your Kickstart and Sysprep files are located.
    -   If using a **Depot Type** of **Samba**, you will not need **Access URL**, but you will need a **User ID**, and **Password**, in addition to the items required for NFS.

5.  For **PXE Image Menus**, type the **filename** for the PXE Boot menu.
6.  Click **Add**.
7.  Select the new PXE server from the tree on the left, and click ![](doc/quickstart/1847.png) (**Configuration**), then ![](doc/quickstart/2003.png) (**Refresh**) to see your existing images.

Result:

The PXE server is added to ManageIQ Management Engine.

**Note**

Next, create PXE Image types to associate with the customization templates and to specify if the image type is for a virtual machine, a host, or both.


##### Creating System Image Types for PXE

The following procedure creates a system image type for PXE servers.

**Procedure 5.7. To create system image types**

1.  Navigate to **Infrastructure** → **PXE**.
2.  Click the **System Image Types** accordion.

    ![](doc/quickstart/2318.png)

3.  Click ![](doc/quickstart/1847.png) **Configuration**, then ![](doc/quickstart/1848.png) **(Add a new System Image Type)**.
4.  In **Basic Information**, type in a **Name** and select a **Type**.

    ![](doc/quickstart/2317.png)

    -   Use **Host** if you want this image type to only apply to hosts.
    -   Use **Vm** if you want this image type to only apply to virtual machines.
    -   Use **Any** if this image type can be used for either hosts or virtual machines.

5.  Click **Add**.

Result:

System image types are added.

**Note**

After creating the System Image Types, assign the types to each image on your PXE servers. To do this, you will select each image on the PXE server and identify its type.


##### Setting the PXE Image Type for a PXE Image

The following procedure sets the image type for a chosen PXE image.

**Procedure 5.8. To set the PXE image type for a PXE image**

1.  Navigate to **Infrastructure** → **PXE**.
2.  Click the **PXE Servers** accordion and select the image that you want to set a type for.
3.  Click ![](doc/quickstart/1847.png) **(Configuration)**, then ![](doc/quickstart/1851.png) **(Edit this PXE Image)**.
4.  From the **Basic Information** area, select the correct type. If this PXE image will be used as the **Windows Boot Environment**, check **Windows Boot Environment**. At the time of this writing, only one PXE Image can be identified as the **Windows Boot Environment**. Therefore, checking one as the **Windows Boot Environment**, will remove that from any other PXE image with that check.

    ![](doc/quickstart/2319.png)

5.  Click **Save**.

    ![](doc/quickstart/2320.png)

Result:

The image type is saved.


#### ISO Provisioning

ManageIQ Management Engine also allows ISO provisioning from **Red Hat Enterprise Virtualization Manager** datastores. To use this feature, you will need to do the following before creating a provision request.

**Procedure 5.9. To prepare for an ISO provision request**

1.  Add the **ISO Datastore**. The **Red Hat Enterprise Virtualization Manager** system must have already been discovered or added into the VMDB. For more information, see the *Insight Guide*.
2.  Refresh the **ISO Datastore**.
3.  Create a **System Image Type**.
4.  Set the **ISO Image Type**.
5.  **Create** a customization template.

Result:

Your ISO is ready to be provisioned.


##### Adding an ISO Datastore

The following procedure adds an ISO Datastore from your Red Hat Enterprise Virtualization environment.

**Procedure 5.10. To add an ISO datastore**

1.  Navigate to **Infrastructure** → **PXE**.
2.  Click the **ISO Datastores** accordion.
3.  Click ![](doc/quickstart/1847.png) **(Configuration)**, ![](doc/quickstart/1848.png) **(Add a new ISO Datastore)**.
4.  Select the **Red Hat Enterprise Virtualization Manager** Provider hosting the ISO Datastore.
5.  Click **Add**.

Result:

The ISO datastore is added to ManageIQ Management Engine.


##### Refreshing an ISO Datastore

The following procedure refreshes the chosen ISO datastore and updates ManageIQ Management Engine with available ISOs.

**Procedure 5.11. To refresh the ISO datastore**

1.  Navigate to **Infrastructure** → **PXE**.
2.  Click the **ISO Datastores** accordion, and select an ISO datastore.
3.  Click ![](doc/quickstart/1847.png) **(Configuration)**, then click ![](doc/quickstart/2003.png) **(Refresh)**.

Result:

The ISO datastore refreshes and updates the available ISOs.


##### Creating System Image Types for ISO

The following procedure creates a system image type for ISO Servers.

**Procedure 5.12. To create System Image Types**

1.  Navigate to **Infrastructure** → **PXE**.
2.  Click the **System Image Types** accordion.
3.  Click ![](doc/quickstart/1847.png) **(Configuration)**, then ![](doc/quickstart/1848.png) **(Add a new System Image Type)**.
4.  In **Basic Information**, type in a **Name** and select a **Type**.

    ![](doc/quickstart/2317.png)

    -   Use **Host** if you want this image type to only apply to hosts.
    -   Use **Vm** if you want this image type to only apply to virtual machines.
    -   Use **Any** if this image type can be used for either hosts or virtual machines.

5.  Click **Add**.

    ![](doc/quickstart/2322.png)

Result:

The system image types are added.

**Note**

After creating the system image types, assign the types to each image on your ISO servers. To do this, you will select each image on the ISO server and identify its type.


##### Setting the Image Type for an ISO Image

The following procedure sets the image type for an ISO image.

**Procedure 5.13. To set the image type for an ISO image**

1.  Navigate to **Infrastructure** → **PXE**.
2.  Click the **PXE Servers** accordion, and select the image that you want to set a type for.
3.  Click ![](doc/quickstart/1847.png) **(Configuration)**, then ![](doc/quickstart/1851.png) **(Edit this ISO Image)**.
4.  From the **Basic Information** area, select the correct **Type**.

    ![](doc/quickstart/2323.png)

5.  Click **Save**.

Result:

The image type is saved.


#### Customization Templates for Host Provisioning

Add a customization template to provide Kickstart files for the initial loading of the operating system. There are certain sections to use to allow for interactions with the provisioning dialogs provided by ManageIQ Management Engine.


##### Customization Script Additions

**Table 5.1. Customization Script Additions**

|Customization Type|Reason to Include|
|:-----------------|:----------------|
|Kickstart|Takes the values from the **Customize** tab in **Provisioning Dialog** and substitutes them into the script.|

``` erb
# Configure Networking based on values from provisioning dialog
<% if evm[:addr_mode].first == 'static' %>
  <% network_string = "network --onboot yes --device=eth0 --bootproto=static --noipv6" %>
  <% ["ip", :ip_addr, "netmask", :subnet_mask, "gateway", :gateway, "hostname", :hostname, "nameserver", :dns_servers].each_slice(2) do |ks_key, evm_key| %>
    <% network_string << " --#{ks_key} #{evm[evm_key]}" unless evm[evm_key].blank? %>
  <% end %>
<%= network_string %>
<% else %>
  network --device=eth0 --bootproto=dhcp
<% end %>
```

---

|Customization Type|Reason to Include|
|:-----------------|:----------------|
|Kickstart|Encrypts the root password from the **Customize** tab in the **Provisioning Dialog**.|

``` erb
rootpw  --iscrypted <%= MiqPassword.md5crypt(evm[:root_password]) %>
```

---

|Customization Type|Reason to Include|
|:-----------------|:----------------|
|Kickstart|Sends status of the provision back to ManageIQ Management Engine for display in the ManageIQ Management Engine Console.|

``` erb
# Callback to EVM during post-install
wget --no-check-certificate <%= evm[:callback_url_on_post_install] %>
```


##### Adding a Customization Template

The following procedure adds a customization template to ManageIQ Management Engine.

**Procedure 5.14. To add a customization template**

1.  Navigate to **Infrastructure** → **PXE**.
2.  Click the **Customization Templates** accordion.
3.  Click ![](doc/quickstart/1847.png) **(Configuration)**, then ![](doc/quickstart/1848.png) **(Add a New Customization Template)**.
4.  In **Basic Information**, type in a **Name** and **Description**.

    ![](doc/quickstart/2325.png)

5.  Select the **Image Type** dropdown. This list should include the PXE image types you created.
6.  In **Type**, select **Kickstart** or **Cloudinit** for Linux based systems, and **Sysprep** for Windows based system.
7.  In the **Script** area, either paste the script from another source or type the script directly into the ManageIQ Management Engine interface.
8.  Click **Add**.

Result:

The customization template is added.

**Note**

The default dialogs show all possible parameters for provisioning. To limit the options shown, see *Customizing Provisioning Dialogs*.


#### IPMI Hosts

There are two ways to get the Intelligent Platform Management Interface (IPMI) Host into the VMDB. You can either use the ManageIQ Management Engine's discovery process or add the host using its IP address and credentials.


##### Discovering the Management Interface for an IPMI Host

Use the following procedure to discover the management interface for any IPMI hosts.

**Procedure 5.15. To discover the management interface for a IPMI host**

1.  Navigate to **Infrastructure** → **Hosts**.
2.  Click ![](doc/quickstart/1847.png) **(Configuration)**, then ![](doc/quickstart/2119.png) **(Discover Hosts)**.
3.  In **Discover**, check **IPMI**.
4.  Optionally, in **IPMI Credentials**, type in a **User ID** and **Password**.

    **Note**

    You can also add IPMI credentials after the host has been discovered. See *Adding IPMI Credentials to a Discovered Host*.

5.  In **Subnet Range**, type in a range of IP addresses. For quickest results, use the actual IP address in both fields.
6.  Click **Discover**.

Result:

The IPMI host discovery is initiated.

**Note**

After the host is discovered, you can add credentials for IPMI.


##### Adding IPMI Credentials to a Discovered Host

After discovering an IPMI host, add the credentials using the following procedures

**Procedure 5.16. To add IPMI credentials**

1.  Navigate to **Infrastructure** → **Hosts**.
2.  Click on the host you want to edit.
3.  Click ![](doc/quickstart/1847.png) **(Configuration)**, and then ![](doc/quickstart/1851.png) **(Edit this Host)**.
4.  In the **Credentials** area, **IPMI** tab, type in the IPMI credentials
    1.  Use **User ID** to specify a login ID.
    2.  Use **Password** to specify the password for the user ID.
    3.  Use **Verify Password** to confirm the password.

5.  Click **Validate** to test the credentials.
6.  Click **Save**.

Result:

The credentials are added and the changes take effect immediately.


##### Adding the Management Interface for an IPMI Host

This procedure shows you how to add a management interface for an IPMI host.

**Procedure 5.17. Add the management interface for the IPMI host**

1.  Navigate to **Infrastructure** → **Hosts**.
2.  Click ![](doc/quickstart/1847.png) **(Configuration)**, then ![](doc/quickstart/1848.png) **(Add a New Host)**.
3.  In **Basic Information**, type in a **Name** and the **IPMI IP address**.
4.  In the **Credentials** area, under **IPMI** tab, type in the IPMI credentials
    1.  Use **User ID** to specify a login ID.
    2.  Use **Password** to specify the password for the User ID.
    3.  Use **Verify Password** to confirm the password.

5.  Click **Validate** to test the credentials.
6.  Click **Add**.

Result:

The IPMI host is added to the ManageIQ Management Engine environment; an operating system can now be provisioned onto it.


### Provisioning a Host

After setting up the IPMI and PXE environments, you are ready to provision a host. Currently, you can only provision in the cluster where the template is located or you can create a template in each cluster and let a ManageIQ Management Engine Automate method automatically switch the selected template in the provision object.

**Important**

A customization template with host-specific script additions is required. Ensure especially that the customization template contains the post-installation callback to enable discovery in ManageIQ Management Engine.

**Procedure 5.18. To provision a host**

1.  Navigate to **Infrastructure** → **Hosts**.
2.  Select a host with IPMI enabled.
3.  Click ![](doc/quickstart/2007.png) **(Lifecycle)**, then ![](doc/quickstart/1848.png) **(Provision Hosts)**.
4.  In **Request Information**, type in at least a **First Name** and **Last Name** and an email address. This email is used to send the requester status emails during the provisioning. The other information is optional. If the ManageIQ Management Engine server is configured to use LDAP, you can use the **Look Up** button to populate the other fields based on the email address.

    ![](doc/quickstart/2341.png)

5.  On the **Purpose** page, select the appropriate tags for the provisioned host.

    ![](doc/quickstart/2342.png)

6.  On the **Catalog** page, select the hosts to provision.
    -   In the **Host** area, select the hosts you want to provision
    -   In the **PXE** area, select the PXE server and image.

7.  On the **Customize** page, you can select how you might want to customize the operating system of the new host. These options vary based on the operating system to be provisioned.
    -   Use **Credentials** to type in a root password
    -   In the **IP Address** area, select either **Static** or **DHCP** and enter any other address information you need. If needed, type in DNS specifications.
    -   Under **Customize Template**, select a script.

8.  On the **Schedule** page, decide if you want the provisioning to begin as soon as it is approved, or at a specific time.

    ![](doc/quickstart/2343.png)

    -   In **Schedule Info**, choose if you want the provisioning to begin as soon as it is approved, or at a specific time. If you select **Schedule**, you will be prompted to enter a date and time.
    -   Check **Stateless** if you do not want the files deleted after the provision completes. A stateless provision does not write to the disk so it will need the PXE files on the next boot.

9.  Click **Submit**.

Result:

The provisioning request is sent for approval. For the provisioning to begin, a user with the admin, approver, or super admin account role must approve the request. The admin and super admin roles can also edit, delete, and deny the requests. You will be able to see all provisioning requests where you are either the requestor or the approver.


## Virtual Machines

The heterogeneous virtual machine container and guest support combined with the ability to analyze information inside the virtual machine - such as disk space, patch level or installed applications - provides in-depth information across the virtual environment. This rich set of information enables ManageIQ Management Engine users to improve problem resolution times and effectively manage virtual machines.

The **Virtual Machines** pages display all virtual machines that were discovered by your Server. Note that if you have applied a filter to a user, it will be in effect here. The **Virtual Machines** taskbar is a menu driven set of buttons that provide access to functions related to virtual machines.

![](doc/quickstart/2124.png)

1.  History button
2.  Refresh screen button
3.  Taskbar
4.  Name search bar/Advanced Search button
5.  View buttons
6.  Download buttons
7.  Navigation bar
8.  Sort dropdown
9.  Main area in Grid View
10. Provider/Filter Navigation

Console uses **Virtual Thumbnails** to describe virtual machines and templates. Each thumbnail contains four quadrants by default. This allows you to glance at a virtual machine for a quick view of its contents.

![](doc/quickstart/2137.png)

1.  Top left quadrant: Operating system of the Virtual Machine
2.  Bottom left quadrant: Virtual Machine Hosts software
3.  Top right quadrant: Power state of Virtual Machine or Status icon
4.  Bottom right quadrant: Number of Snapshots for this Virtual Machine

|Icon|Description|
|:---|:----------|
|![](doc/quickstart/2138.png)|Template: Virtual Template|
|![](doc/quickstart/2139.png)|Retired: Virtual Machine has been retired|
|![](doc/quickstart/2140.png)|Archived: Virtual Machine has no Host or Datastore associated with it.|
|![](doc/quickstart/2141.png)|Orphaned: Virtual Machine has no Host but does have a Datastore associated with it.|
|![](doc/quickstart/2142.png)|Disconnected: Virtual Machine is disconnected.|
|![](doc/quickstart/2143.png)|On: Virtual Machine is powered on.|
|![](doc/quickstart/2144.png)|Off: Virtual Machine is powered off.|
|![](doc/quickstart/2145.png)|Suspended: Virtual Machine has been suspended.|


The **Virtual Machines** page has three accordions organizing your virtual machines and templates in different ways. All of these accordions share a set of common controls

-   Use **VMs and Templates** to view your virtual machines and templates organized by Provider. In addition, you can see archived and orphaned items here.
-   Use the **VMs** to view, apply filters, and collect information about all of your virtual machines.
-   Use **Templates** to view, apply filters, and collect information about all of your templates.

Through the console, you are able to view your virtual machines in multiple ways. For your virtual machines, you can:

-   Filter virtual machines
-   Change views
-   Sort
-   Create a report
-   Search by MyTags
-   Search by collected data


### Provisioning

When a virtual machine or cloud instance is provisioned, it goes through multiple phases. First, the request must be made. The request includes ownership information, tags, virtual hardware requirements, the operating system, and any customization of the request. Second, the request must go through an approval phase, either automatic or manual. Finally, the request is executed. This part of provisioning consists of pre-processing and post-processing. Pre-processing acquires IP addresses for the user, creates CMDB instances, and creates the virtual machine or instance based on information in the request. Post-processing activates the CMDB instance and emails the user. The steps for provisioning may be modified at any time using ManageIQ Management Engine.

![](doc/quickstart/2314.png)


#### Provisioning a Virtual Machine from a Template

Users provision virtual machines through various methods. One method is to provision a virtual machine directly from a template stored on a Provider.

**Procedure 5.19. To provision a virtual machine from a template**

1.  Navigate to **Infrastructure** → **Virtual Machines**.
2.  Click ![](doc/quickstart/2007.png) **(Lifecycle)**, and then ![](doc/quickstart/1848.png) **(Provision)**.
3.  Select a template from the list presented.
4.  Click **Continue**.
5.  On the **Request** tab, enter information about this provisioning request.

    ![](doc/quickstart/2326.png)

    In **Request Information**, type in at least a **First Name** and **Last Name** and an email address. This email is used to send the requester status emails during the provisioning process for items such as auto-approval, quota, provision complete, retirement, request pending approval, and request denied. The other information is optional. If the ManageIQ Management Engine server is configured to use LDAP, you can use the **Look Up** button to populate the other fields based on the email address.

    **Note**

    Parameters with a \* next to the label are required to submit the provisioning request. To change the required parameters, see *Customizing Provisioning Dialogs*.

6.  Click the **Purpose** tab to select the appropriate tags for the provisioned virtual machines.
7.  Click the **Catalog** tab to select the template to provision from. This tab is context sensitive based on provider.
8.  For templates on VMware providers:
    1.  For **Provision Type**, select **NetApp**, **VMware**, or **PXE**.

        ![](doc/quickstart/2328.png)

        1.  If **VMware** is selected, check **Linked Clone** if you want to create a linked clone to the virtual machine instead of a full clone. Since a snapshot is required to create a linked clone, this box is only enabled if a snapshot is present. Select the snapshot you want to use for the linked clone.
        2.  If **PXE** is selected, select a PXE **Server** and **Image** to use for provisioning

    2.  Under **Count**, select the number of virtual machines you want to create in this request.
    3.  Use **VM Naming** to specify a virtual machine name and virtual machine description. When provisioning multiple virtual machines, a number will be appended to the virtual machine name.

9.  For templates on Red Hat providers:
    1.  Select the **Name** of a template to use.
    2.  For **Provision Type**, select either **ISO**, **PXE**, or **Native Clone**.
        1.  If **Native Clone** is selected, check **Linked Clone** if you want to create a linked clone to the virtual machine instead of a full clone. This is equivalent to *Thin Template Provisioning* in Red Hat Enterprise Virtualisation. Since a snapshot is required to create a linked clone, this box is only enabled if a snapshot is present. Select the snapshot you want to use for the linked clone.
        2.  If **ISO** is selected, select an ISO **Image** to use for provisioning
        3.  If **PXE** is selected, select a PXE **Server** and **Image** to use for provisioning

    3.  Under **Count**, select the number of virtual machines you want to create in this request.
    4.  Use **VM Naming** to specify a **VM Name** and **VM Description**. When provisioning multiple virtual machines, a number will be appended to the **VM Name**.

10. Click the **Environment** tab to decide where you want the new virtual machines to reside.
    1.  If provisioning from a template on VMware, you can either let ManageIQ Management Engine decide for you by checking **Choose Automatically**, or select a specific cluster, resource pool, folder, host, and datastore.
    2.  If provisioning from a template on Red Hat, you can either let ManageIQ Management Engine decide for you by checking **Choose Automatically**, or select a datacenter, cluster, host and datastore.

11. Click the **Hardware** tab to set hardware options.

    ![](doc/quickstart/2330.png)

    1.  In **VM Hardware**, set the number of CPUs, amount of memory, and disk format: thin, pre-allocated/thick or same as the provisioning template (default).
    2.  For VMware provisioning, set the **VM Limits** of CPU and memory the virtual machine can use.
    3.  For VMware provisioning, set the In **VM Reservation** amount of CPU and memory.

12. Click **Network** to set the vLan adapter. Additional networking settings that are internal to the operating system appear on the Customize tab.

    ![](doc/quickstart/2335.png)

    1.  In **Network Adapter Information**, select the **vLan**.

13. Click **Customize** to select how you might want to customize the operating system of the new virtual machine. These options vary based on the *operating system* of the template.
14. For Windows provisioning:

    ![](doc/quickstart/2336.png)

    1.  To use a customer specification from the Provider, click **Specification**. To select an appropriate template, a list will be provided in the custom specification area. The values that are honored by ManageIQ Management Engine will display.

        **Note**

        Any values in the specification that do not show in the ManageIQ Management Engine console's request dialogs will not be used by ManageIQ Management Engine. For example, for Windows operating systems, if you have any run once values in the specification, they will not be used in creating the new virtual machines. Currently, for a Windows operating system, ManageIQ Management Engine honors the unattended GUI, identification, workgroup information, user data, windows options, and server license. If more than one network card is specified, only the first will be used.

        ![](doc/quickstart/2337.png)

        To modify the specification, check **Override Specification Values**.

    2.  Select **Sysprep Answer File**, to upload a Sysprep file or use one that exists for a custom specification on the Provider where the template resides. To upload a file, click **Browse** to find the file, and then upload. To use an answer file in **Customization Specification**, simply click on the item. The answer file will automatically upload for viewing. You cannot make modifications to it.

15. For Linux provisioning:
    1.  Under **Credentials**, enter a **Root Password** for the `root`{: .literal} user to access the instance.
    2.  Enter a **IP Address Information** for the instance. Leave as **DHCP** for automatic IP assignment from the provider.
    3.  Enter any **DNS** information for the instance if necessary.
    4.  Select a **Customize Template** for additional instance configuration. Select from the Kickstart scripts stored on your appliance.

16. Click the **Schedule** tab to decide if you want the provisioning to begin as soon as it is approved, or at a specific time.
    1.  In **Schedule Info**, choose if you want the provisioning to begin as soon as it is approved, or at a specific time. If you select **Schedule**, you will be prompted to enter a date and time.
    2.  In **Lifespan**, select if you want to power on the virtual machines after they are created, and if you want to set a retirement date. If you select a retirement period, you will be prompted for when you want a retirement warning.

        ![](doc/quickstart/2338.png)

17. Click **Submit**.

Result:

The provisioning request is sent for approval. For the provisioning to begin, a user with the administrator, approver, or super administrator account role must approve the request. The administrator and super administrator roles can also edit, delete, and deny the requests. You will be able to see all provisioning requests where you are either the requester or the approver.


#### Approving a Provisioning Request

After a user creates provisioning request, administrators have the ability to approve the request and allow ManageIQ Management Engine to complete virtual machine or instance creation.

**Procedure 5.20. To approve a provisioning request**

1.  Navigate to **Services** → **Requests**.
2.  Click on the request you want to approve.
3.  Type in a **Reason** for the approval.
4.  Click ![](doc/quickstart/1852.png) **(Approve this request)**.

Result:

The provision request is sent for completion.


### Controlling Virtual Machines

You can start, stop, and suspend a virtual machine through the ManageIQ Management Engine console. To do this, the following requirements must be met:

-   The virtual machine must be discovered.
-   The virtual machine must be registered to a host and have a SmartProxy associated with it. It may not be on a repository.


#### Controlling the Power State of Virtual Machines

Start, stop, and suspend any number of virtual machines through the ManageIQ Management Engine console using the following procedure.

**Procedure 5.21. To control the power state of virtual machines**

1.  Navigate to **Infrastructure** → **Virtual Machines**.
2.  Check the virtual machines that you want to change the power state for.
3.  Click ![](doc/quickstart/1998.png) (**Power Operations**). Note that the only operations that will be available are the ones that apply to the virtual machines' current power state.
4.  Click the button for the power operation you want.
    1.  Click ![](doc/quickstart/1999.png) (**Power On**) to start the selected virtual machines.
    2.  Click ![](doc/quickstart/2000.png) (**Power Off**) to stop the selected virtual machines.
    3.  Click ![](doc/quickstart/2004.png) (**Suspend**) to suspend the selected virtual machines.
    4.  Click ![](doc/quickstart/2001.png) (**Reset**) to stop the selected virtual machines
    5.  Click ![](doc/quickstart/2002.png) (**Shutdown Guest**) to stop the guest operating system.
    6.  Click ![](doc/quickstart/2003.png) (**Restart Guest**) to restart the guest operating system.

5.  Click **OK** to confirm the choice you selected.

Result:

The requested action is initiated.


### Analyzing Virtual Machines and Templates

Analyze a virtual machine to collect metadata such as user accounts, applications, software patches, and other internal information. If ManageIQ Management Engine is not set up for automatic analysis, perform a manual analysis of a virtual machine. To perform a SmartState analysis, ManageIQ Management Engine requires a running SmartProxy with visibility to the virtual machine's storage location. If the virtual machine is associated with a host or provider, ensure the virtual machine is registered with that system to be properly analyzed; the server requires this information since a snapshot might be created.

**Note**

SmartState Analysis of a virtual machine requires access to its host. To perform a successful analysis, edit the virtual machine's host and enter the host's authentication credentials.

**Procedure 5.22. To Analyze Multiple Virtual Machines Or Templates**

1.  Navigate to **Infrastructure** → **Virtual Machines**.
2.  Click the accordion for the items to analyze.
3.  Check the **Virtual Machines** and **Templates** to analyze.
4.  Click ![](doc/quickstart/1847.png) **(Configuration)**, and then ![](doc/quickstart/2147.png) **(Perform SmartState Analysis)** on the taskbar.
5.  Click **OK** to confirm.

Result:

The SmartProxy returns the current data.


#### Red Hat Enterprise Virtualization Prerequisites


##### SmartState Analysis on Red Hat Enterprise Virtualization Manager 3.1 - Storage Support Notes

Note the following requirements when performing a SmartState Analysis on Red Hat Enterprise Virtualization Manager 3.1.

**NFS**

-   The ManageIQ Management Engine Server requires a mount to the NFS Datastore.

**iSCSI / FCP**

-   Cluster must use full Red Hat Enterprise Linux (not Red Hat Enterprise Virtualization Hypervisor) Hosts.
-   CFME VM leverages the DirectLUN Disk to connect to each Storage Domain LUN.
-   A ManageIQ Management Engine Appliance *must* reside in each Datacenter with the iSCSI / FCP storage type.
-   Each ManageIQ Management Engine Appliance performing Smart State Analysis requires a *sharable*, *non-bootable* DirectLUN attached for each iSCSI/FCP storage domain. Only one DirectLUN for each storage domain may be mounted at a time.

**Other Notes**

-   **Set Server Relationship** - This is required to allow the VM SmartState Analysis job to determine what datacenter a ManageIQ Management Engine Appliance is running in and therefore identify what storage it has access to in a RHEV environment.
    1.  After setting up a ManageIQ Management Engine Appliance and performing a refresh of the Provider, find the ManageIQ Management Engine Appliance in the **Virtual Machine** accordion list and view its summary screen.
    2.  Click **Configuration** → **Edit Server Relationship**.
    3.  Select the server that relates to this instance of the ManageIQ Management Engine Appliance.

**Important**

If you attach a DirectLUN disk after configuring the ManageIQ Management Engine Database, access the Appliance in a terminal and run `pvscan`{: .command} to detect the DirectLUN disk. Alternatively, in ManageIQ Management Engine 5.2.1, you can restart the Appliance to detect the disk automatically.


##### SmartState Analysis on Red Hat Enterprise Virtualization Manager 3.0 - Storage Support Notes

There are two additional steps required to perform a SmartState Analysis on Red Hat Enterprise Virtualization Manager 3.0 using iSCSI or FCP storage. NFS storage does not have these requirements.

1.  Enable DirectLUN support for the host and ManageIQ Management Engine Appliance that performs the analysis.
    -   Enable DirectLUN on host.
    -   Enable DirectLUN on the ManageIQ Management Engine Appliance. To do this, edit the desired Red Hat Enterprise Virtualization storage and get the LUNID value. Then, on the ManageIQ Management Engine Appliance virtual machine in the Red Hat Enterprise Virtualization user interface, right-click and select **Edit**+**Custom Properties** and enter the following in the **Custom Properties** edit box:

        ```
        directlun=<LUN ID>:readonly
        ```

        If you have multiple storage domains separate them by a comma, similar to:

        ```
        directlun=<LUN ID 1>:readonly,<LUN ID 2>:readonly,<LUN ID N>:readonly
        ```

        **Note**

        The ManageIQ Management Engine Appliance must reside in the same data center as the storage you are trying to connect. If you have multiple data centers with iSCSI or FCP storage, you need a ManageIQ Management Engine Appliance in each data center to support virtual machine scanning.

2.  Set Server Relationship - This is required to allow the virtual machine SmartState analysis job to determine which data center a ManageIQ Management Engine Appliance is running and therefore identify what storage it has access to in a Red Hat Enterprise Virtualization environment.
    1.  After setting up a ManageIQ Management Engine Appliance and performing a refresh of the Provider, find the ManageIQ Management Engine Appliance in the **Virtual Machine** accordion list and view its summary screen.
    2.  Click ![](doc/quickstart/1847.png) **(Configuration)**, and then ![](doc/quickstart/2146.png) **(Edit Server Relationship)**
    3.  Select the server that relates to this instance of the ManageIQ Management Engine Appliance.


##### Upgrades from Red Hat Enterprise Virtualization Manager 3.0 to 3.1

Environments upgrading from Red Hat Enterprise Virtualization Manager 3.0 to 3.1 might encounter issues regarding SSL communications with ManageIQ Management Engine. This issue occurs from version 3.1 due to Apache being used as a front end to handle the SSL requests. The upgrade to 3.1 does not reconfigure the Management System for this. [^[2]^](#ftn.idm50354888)

A change to the Red Hat Enterprise Virtualization Manager configuration allows ManageIQ Management Engine to use SSL to connect rather than the current TLS.

1.  Log into the Red Hat Enterprise Virtualization Manager server's terminal as the `root`{: .literal} user.
2.  Modify the `/usr/share/ovirt-engine/service/engine-service.xml.in`{: .filename} file.
3.  Scroll to `protocols`{: .literal} inside the `ssl`{.literal} tag. The current value of the protocols attribute is `TLSv1`{.literal}.

    ``` xml
    <ssl>
      <protocols>TLSv1</protocols>
    </ssl>
    ```

4.  Replace the value of the `protocols`{: .literal} attribute with `SSLv3,TLSv1`{.literal}.

    ``` xml
    <ssl>
      <protocols>SSLv3,TLSv1</protocols>
    </ssl>
    ```

5.  Save the file.
6.  Restart the Red Hat Enterprise Virtualization Manager server.

In addition, set the **Server Relationship** for ManageIQ Management Engine.

1.  Select the ManageIQ Management Server's virtual machine from **Services** → **Virtual Machines**.
2.  Go to **Configuration** → **Edit Server Relationship** and select the appropriate ManageIQ Management Engine Server.


#### VMware vSphere Prerequisites


##### Installing VMware VDDK on ManageIQ Management Engine

Execution of SmartState Analysis on virtual machines within a VMware environment requires the Virtual Disk Development Kit (VDDK). ManageIQ Management Engine supports VDDK 5.5.

**Procedure 5.23. To install the VDDK on a ManageIQ Management Engine Appliance**

1.  Download VDDK 5.5 (`VMware-vix-disklib-5.5.0-1284542.x86_64.tar.gz`{: .filename} at the time of this writing) from the VMware website.

    **Note**

    If you do not already have a login ID to VMware, then you will need to create one. At the time of this writing, the file can be found by navigating to **Downloads** → **All Downloads, Drivers & Tools** → **VMware vSphere** → **Drivers & Tools**. Expand **Automation Tools and SDKs**, and select **vSphere Virtual Disk Development Kit 5.5**. Alternatively, find the file by searching for it using the **Search** on the VMware site.

2.  Download and copy the `VMware-vix-disklib-5.5.0-1284542.x86_64.tar.gz`{: .filename} file to the `/root`{.filename} directory of the appliance.
3.  Start an SSH session into the appliance.
4.  Extract and install VDDK 5.5. using the following commands:

    ```
    # cd /root
    # tar -xvf VMware-vix-disklib-5.5.0-1284542.x86_64.tar.gz
    # cd vmware-vix-disklib-distrib
    # ./vmware-install.pl
    ```

5.  Accept the defaults during the installation

    ```
    Installing VMware VIX DiskLib API.
    You must read and accept the VMware VIX DiskLib API End User License Agreement to continue.
    Press enter to display it.
    Do you accept? (yes/no) yes

    Thank you.
    What prefix do you want to use to install VMware VIX DiskLib API?
    The prefix is the root directory where the other folders such as man, bin, doc, lib, etc. will be placed.
    [/usr]

    (Press Enter)

    The installation of VMware VIX DiskLib API 5.5.0 build-1284542 for Linux completed successfully. You can decide to remove this software from your system at any time by invoking the following command: "/usr/bin/vmware-uninstall-vix-disklib.pl".
    Enjoy,
    --the VMware team
    ```

6.  Run `ldconfig`{: .command} in order for ManageIQ Management Engine to find the newly installed VDDK library.

    **Note**

    Use the following command to verify the VDDK files are listed and accessible to the appliance:

    ```
    # ldconfig -p | grep vix
    ```

7.  Restart the ManageIQ Management Engine Appliance.

Result:

The VDDK is now installed on the ManageIQ Management Engine Appliance. This enables use of the SmartState Analysis Server Role on the appliance.

* * * * *

[^[2]^](#idm50354888) This is documented in the following link on Red Hat Bugzilla: <https://bugzilla.redhat.com/show_bug.cgi?id=893979>


## Clouds

Cloud computing provides a set of pooled resources used to create a set of scalable virtual machine instances. Resources includes CPUs, memory, storage, and networking. While users of virtualization infrastructure environments provision whole virtual machines, users of cloud computing environments provision only the necessary resources to build their instances. This means the customer can easily scale their instances by provisioning more resources. Metric usage is focused on the hardware layer, and results in the user paying only the necessary resources.

For example, a user might use an instance to store a web server. During peak times of use, the user provisions more cloud resources to maintain the performance of the server. During quiet times, the user reduces the consumption of cloud resources. As a result, the user only uses and pays for the resources used.

ManageIQ Management Engine offers a set of tools for viewing and maintaining cloud providers and their associated resources. Supported cloud providers include:

-   Amazon EC2 (public cloud)
-   OpenStack (private cloud)


### Adding a Cloud Provider

After initial installation and creation of a ManageIQ Management Engine environment, add cloud providers with the following procedure.

**Procedure 6.1. To Add a Cloud Provider**

1.  Navigate to **Clouds** → **Providers**.
2.  Click ![](doc/quickstart/1847.png) **(Configuration)**, then click ![](doc/quickstart/1848.png) **(Add a New Cloud Provider)**.
3.  Enter a **Name** for the provider.
4.  Select the **Type** of cloud provider.
    -   If selecting an **Amazon EC2**, select an **Amazon Region**.
    -   If selecting an OpenStack provider, use the **AMQP** subtab to provide credentials required for the Advanced Message Queuing Protocol service on your OpenStack Nova component. Also enter the **API Port** of your Keystone service.

5.  Select the appropriate **Zone** if you have more than one available.
6.  Fill out the **Credentials** by typing in a **User ID**, **Password**, and a verification of this password (**Verify Password**).
    -   If selecting an **Amazon EC2**, generate an **Access Key** in the **Security Credentials** of your Amazon AWS account. The **Access Key ID** acts as your **User ID**, and your **Secret Access Key** acts as your **Password**.
    -   If selecting **OpenStack**, use the Keystone User ID and Password for your login credentials.

        **Important**

        To enable discovery of OpenStack cloud providers, ensure that the `iptables`{: .filename} for the OpenStack host providing Keystone services allows port 5000 access to all hosts on the same network.

7.  If editing an OpenStack provider, use the **AMQP** subtab to provide credentials required for the Advanced Message Queuing Protocol service on your OpenStack Nova component.
8.  Click **Validate** to validate the credentials.
9.  Click **Add**.

Result:

ManageIQ Management Engine adds a new cloud provider. Use this cloud provider for instance provisioning.


### Discovering Amazon EC2 Cloud Providers

ManageIQ Management Engine provides the ability to discover cloud providers associated with a particular set of Amazon EC2 account details.

**Procedure 6.2. To Discover an Amazon Ec2 Cloud Provider**

1.  Navigate to **Clouds** → **Providers**.
2.  Click ![](doc/quickstart/1847.png) **(Configuration)**, then click ![](doc/quickstart/2119.png) **(Discover Cloud Providers)**.
3.  Enter your Amazon EC2 **User ID** and **Password**. Reenter your password in the **Verify Password** field.
4.  Click **Start**.

Result:

The Amazon EC2 providers discovery begins. ManageIQ Management Engine adds all cloud providers associated with the chosen account.


### Editing a Cloud Provider

Edit information about a provider such as the name, IP address, and login credentials.

**Procedure 6.3. To Edit a Cloud Provider**

1.  Navigate to **Clouds** → **Providers**.
2.  Click the cloud provider to edit.
3.  Click ![](doc/quickstart/1847.png) **(Configuration)**, and then ![](doc/quickstart/1851.png) **(Edit Selected Cloud Provider)**.
4.  Edit the **Basic Information**. This varies depending on the **Type** of provider.

    **Note**

    The **Type** value is unchangeable. To use a different cloud provider, create a new one.

5.  Fill out the **Credentials** by typing in a **User ID**, **Password**, and a verification of this password (**Verify Password**).
    -   If selecting an **Amazon EC2**, generate an **Access Key** in the **Security Credentials** of your Amazon AWS account. The **Access Key ID** acts as your **User ID**, and your **Secret Access Key** acts as your **Password**.
    -   If selecting **OpenStack**, use the Keystone User ID and Password for your login credentials.

6.  If editing an OpenStack provider, use the **AMQP** subtab to provide credentials required for the Advanced Message Queuing Protocol service on your OpenStack Nova component.
7.  Click **Validate** and wait for notification of successful validation.
8.  Click **Save**.

Result:

ManageIQ Management Engine saves the modified provider details.


### Refreshing Cloud Providers

Refresh a cloud provider to find other resources related to it. Ensure the chosen cloud providers have the correct credentials before refreshing.

**Procedure 6.4. To Refresh Cloud Providers**

1.  Navigate to **Clouds** → **Providers**.
2.  Select the checkboxes for the cloud providers to refresh.
3.  Click ![](doc/quickstart/1847.png) **(Configuration)**, and then ![](doc/quickstart/2003.png) **(Refresh Relationships and Power States)**.
4.  Click **OK** to confirm the refresh.

Result:

ManageIQ Management Engine refreshes the details for the chosen cloud providers.


## Provisioning Instances

Cloud instances follow the same process (Request, Approval, Deployment) as a standard virtual machine from virtualization infrastructure. First, a user makes a request for instances and specifies the image, tags, availability zone and hardware profile flavor. Second, the request goes through the approval phase. Finally, ManageIQ Management Engine executes the request.


### Provisioning Instance


#### Provisioning an Instance from an Image

Users provision instances from images stored on their cloud provider. This procedure steps through the provisioning process.

**Procedure 6.5. To provision an instance from an image**

1.  Navigate to **Clouds** → **Instances**.
2.  Click ![](doc/quickstart/2007.png) (**Lifecycle**), then click ![](doc/quickstart/1848.png) **(Provision Instances)**.
3.  Select an image from the list presented.
4.  Click **Continue**.
5.  On the **Request** tab, enter information about this provisioning request. In **Request Information**, type in at least a first and last name and an email address. This email is used to send the requester status emails during the provisioning process for items such as auto-approval, quota, provision complete, retirement, request pending approval, and request denied. The other information is optional. If the ManageIQ Management Engine Server is configured to use LDAP, you can use the **Look Up** button to populate the other fields based on the email address.

    **Note**

    Parameters with a \* next to the label are required to submit the provisioning request. To change the required parameters, see *Customizing Provisioning Dialogs*.

6.  Click the **Purpose** tab to select the appropriate tags for the provisioned instance.
7.  Click the **Catalog** tab for basic instance options.
    1.  To change the image to use as a basis for the instance, select it from the list of images.
    2.  Select the **Number of VMs** to provision.
    3.  Type a **VM Name** and **VM Description**.

8.  Click the **Environment** tab to select the instance's **Availability Zone**. If no specific availability zone is require, select the **Choose Automatically** checkbox.
9.  Click the **Hardware** tab to set provider options such as hardware flavor and security settings.
    1.  Select a flavor from the **Instance Type** list.
    2.  Select a **Guest Access Key Pair** for access to the instance.
    3.  In **Security Groups**, select which security group suits your allowed port and IP address requirements. Otherwise, leave at the default group.
    4.  If provisioning from an Amazon EC2 provider, select the **CloudWatch** monitoring level. Leave as **Basic** for the default EC2 monitoring.
    5.  In **Public IP Address**, select the public IP address that suits your requirements.

10. Click the **Customize** tab to set additional instance options.
    1.  Under **Credentials**, enter a **Root Password** for the `root`{: .literal} user access to the instance.
    2.  Enter a **IP Address Information** for the instance. Leave as **DHCP** for automatic IP assignment from the provider.
    3.  Enter any **DNS** information for the instance if necessary.
    4.  Select a **Customize Template** for additional instance configuration. Select from the Cloudinit scripts stored on your appliance.

11. Click the **Schedule** tab to set the provisioning and retirement date and time.
    1.  In **Schedule Info**, choose whether the provisioning begins upon approval, or at a specific time. If you select **Schedule**, you will be prompted to enter a date and time.
    2.  In **Lifespan**, select whether to power on the instances after they are created, and whether to set a retirement date. If you select a retirement period, you will be prompted for when to receive a retirement warning.

12. Click **Submit**.

Result:

The provisioning request is sent for approval. For the provisioning to begin, a user with the admin, approver, or super admin account role must approve the request. The admin and super admin roles can also edit, delete, and deny the requests. You will be able to see all provisioning requests where you are either the requestor or the approver.


#### Approving a Provisioning Request

After a user creates provisioning request, administrators have the ability to approve the request and allow ManageIQ Management Engine to complete virtual machine or instance creation.

**Procedure 6.6. To approve a provisioning request**

1.  Navigate to **Services** → **Requests**.
2.  Click on the request you want to approve.
3.  Type in a **Reason** for the approval.
4.  Click ![](doc/quickstart/1852.png) **(Approve this request)**.

Result:

The provision request is sent for completion.


### Controlling Instances


#### Controlling the Power State of an Instance

Start, stop, and suspend an instance through the ManageIQ Management Engine console using the following procedure.

**Procedure 6.7. To control the power state of a instance**

1.  Navigate to **Cloud** → **Instance**.
2.  Click the instance to change the power state.
3.  Click **Power Operations**, then click the button for the desired power operation.
    1.  Click ![](doc/quickstart/1999.png) (**Power On**) to start the selected instances.
    2.  Click ![](doc/quickstart/2000.png) (**Power Off**) to stop the selected instances.
    3.  Click ![](doc/quickstart/2004.png) (**Suspend**) to suspend the selected instances.
    4.  Click ![](doc/quickstart/2001.png) (**Reset**) to stop the selected instances.
    5.  Click ![](doc/quickstart/2002.png) (**Stop Guest**) to stop the guest operating system.
    6.  Click ![](doc/quickstart/2003.png) (**Restart Guest**) to restart the guest operating system.

4.  Click **OK** to confirm the choice you selected.

Result:

The requested action is initiated.
