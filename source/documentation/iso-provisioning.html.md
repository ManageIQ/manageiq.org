This document includes requirements for provisioning Virtual Machines from Red Hat Enterprise Virtualization Managers using PXE and ISO. *Important Note:  RHEV 3.0 only supports PXE Provisioning.*

### General Requirements for using CloudForms Management Engine with Red Hat Enterprise Virtualization Managers

| Item     | Requirements      |
| ---------- | ---------      |
| RHEV-M version 3.0       |RHEV-M properly installed with API in default location (https://server:8443/api)      |
| RHEV-M History Database       |RHEV-M-DWH properly installed with access to the PostgreSQL database on the RHEV-M server.  Port 5432 open in iptables.  Md5 authentication allowed to CloudForms Management Engine Appliances in pg_hba.conf.  PostgreSQL set to listen for connections on *:5432 in postgresql.conf.  Credentials provided during database setup to be used in CloudForms Management Engine UI      |
|Storage Supported for CloudForms Management Engine VM Analysis |NFS - CloudForms Management Engine server must be able to mount NFS storage domain. iSCSI / FCP - Cluster must use full RHEL (not RHEV-H) Hosts. DirectLUN Hook installed on each host and registered to RHEV-M. Must have CloudForms Management Engine Appliance in each Cluster with this storage type. CloudForms Management Engine appliance VM container must have DirectLUN attribute set. Local storage - Not yet supported (Red Hat does not recommend due to single point of failure) |

The following are requirements for provisioning Virtual Machines from RHEV-M:

* DHCP server configured with options for required PXE/iPXE implementations
* For Linux VM provisioning: gPXE and iPXE
* NFS read and write access to create and modify files on the PXE server.
* CloudForms Management Server uses NFS mount to read and write the response files.
* HTTP read access to the NFS share location as Virtual Machines use this URL to access PXE Images and Kickstart configuration files
* Operating System setup material available to be streamed from PXE server
* Images configured for desired Operating Systems
* Kickstart templates to configure Operating Systems with desired packages

Additional Requirements for provisioning Linux Virtual Machines:

* Linux distribution kernel and ramdisk available over HTTP
* Linux sources available over HTTP
* Sample iPXE menu item that will boot this kernel

Additional Requirements to provision Windows Virtual Machines:

* WinPE ISO built with proper rhev-agent-tools and configured to mount shares for Windows source files and sysprep files and configured to run customization script.
* Windows based WIM file with Operating System installed and sysprepped.
* Sample sysprep unattend file to be used with the Operating System.
* Sample iPXE menu item that will download WinPE ISO, mount in memdisk and boot into WinPE environment.

##About PXE Provisioning

PXE is a boot method that allows you to load files from across a network link.  CloudForms Management Engine uses it for files required for provisioning Virtual Machines.  PXE can be used for provisioning for either RHEV-M or VMware.

* [Connect to the PXE Server](#ConnecttothePXEServer).
* [Create a System Image Type](#CreateSystemImageTypePXE).
* [Associate each PXE image with an Image Type](#AssociatePXE).
* [Create a customization template](#CreateCusomtizationTemplate).

### Connect to the PXE Server # {#ConnecttothePXEServer}

1.	From Infrastructure, go to the PXE page.
2.	Click **Configuration**, then **Add a new PXE Server**.

3.	Type a Name that will be meaningful in your environment.
4.	For Depot Type, select either Network Files System (NFS) or Samba.  The fields to enter in the dialog depend on the Depot Type.

* For NFS, type in the URI, URI, Access URL, PXE Directory, Windows Image Directory and Customization Directory.  When you provision, EVM writes a text file to the PXE Directory. The file is named after the MAC address of the NIC that is assigned to the Virtual machine. It contains where to get the kernel and initrd image.  This file is removed after a successful provision. The Windows Image Directory is where the files are located on your NFS for the provisioning of Windows Operating Systems.  The Customization Directory is where your Kickstart and SysPrep files are located.
* If using a Depot Type of Samba, you will not need Access URL, but you will need, User ID, and Password, in addition to the items required for NFS.

5.	For PXE Image Menus, type the name of the file for the PXE Boot menu.
6.	Click **Add**.
7.	Select the new PXE Server from the tree on the left, and click **Configuration**, **Refresh** to see your existing images.
Next, you will need to create PXE Image types to associate with the Customization Templates and to specify if the Image type is for VM, Host, or both types of provisioning.

###To create System Image Types # {#CreateSystemImageTypePXE}

1.	From Infrastructure, PXE, click the System Image Types accordion.
2.	Click **Configuration**, then **Add a new System Image Type**.
3.	Type in a Name and select a Type.

    * Use Host if you want this image type to only apply to Hosts.
    * Use Vm if you want this image type to only apply to Virtual Machines.
    * Use Any if this image type can be used for either Hosts or Virtual Machines.

4.	Click **Add**.

The Image Types are added.

After creating the System Image Types, assign the types to each image on your PXE or ISO Servers.  To do this, you will select each image on the PXE or ISO Server and identify its type.

###To set the PXE Image Type for a PXE Image # {#AssociatePXE}

1.	From Infrastructure, go to the PXE page.
2.	Navigate to the PXE Server and image that you want to set a type for.
3.	Click **Configuration**, then  **Edit this PXE Image**.
4.	From the Basic Information area, select the correct Type.  If this PXE Image will be used as the Windows Boot Environment, check Windows Boot Environment.  At the time of this writing, only one PXE Image can be identified as the Windows Boot Environment.  Therefore, checking one as the Windows Boot Environment, will remove that from any other PXE Image with that check.
5.	Click **Save**.

The image type is saved.

##About ISO Provisioning
CloudForms Management Engine also allows ISO provisioning from RHEV-M Datastores.  To use this feature, you will need to do the following before creating a provision request.

* [Add the ISO Datastore](#AddISODatastore).  The RHEV-M system must have already been discovered or added into the VMDB.  For more information, see the Insight Guide.
* [Refresh the ISO Datastore](#RefreshISODatastore).
* [Create a System Image Type](#CreateSystemImageTypeISO).
* [Set the ISO Image Type](#SetISOImageType).
* [Create a customization template](#CreateCusomtizationTemplate) that includes the [ks.cfg file with certain additions](#KsAdditions).

###To add the ISO Datastore # {#AddISODatastore}

1.	From Infrastructure, PXE, click the ISO Datastores accordion.
2.	Click **Configuration**, **Add a new ISO Datastore**.
3.	Select the RHEV-M Management System hosting the ISO Datastore.
4.	Click **Save**.

###To refresh the ISO Datastore # {#RefreshISODatastore}

1.	From Infrastructure, PXE, click the ISO Datastores accordion.
2.	Select the ISO Datastore.
3.	Click **Configuration**, **Refresh**.

###To create System Image Types # {#CreateSystemImageTypeISO}

1.	From Infrastructure, PXE, click the System Image Types accordion.
2.	Click **Configuration**, then **Add a new System Image Type**.
3.	Type in a Name and select a Type.

    * Use Host if you want this image type to only apply to Hosts.
    * Use Vm if you want this image type to only apply to Virtual Machines.
    * Use Any if this image type can be used for either Hosts or Virtual Machines.

4.	Click **Add**.

The Image Types are added.

After creating the System Image Types, assign the types to each image on your PXE or ISO Servers.  To do this, you will select each image on the PXE or ISO Server and identify its type.

### To set the Image Type for an ISO Image # {#SetISOImageType}
1.	From Infrastructure, go to the PXE page.
2.	Navigate to the PXE Server and image that you want to set a type for.
3.	Click **Configuration**, then **Edit this ISO Image**.
4.	From the Basic Information area, select the correct Type.
5.	Click **Save**.

The image type is saved.

##Customization Templates for Virtual Machine Provisioning {#KsAdditions}

Add a customization template to provide Kickstart or Sysprep files for the initial loading of the Operating System.  For each of these types of customizations, there are certain sections to use to allow for interactions with the Provisioning Dialogs provided by CloudForms Management Engine.
Note the following additional requirements if you are performing ISO and PXE provisioning:

* When you get to the Catalog page in the Provisioning Dialogs, be sure to select Provision Type of ISO or PXE as appropriate.
* ISO Provisioning requires that the new Virtual Machine must be set to power down after provisioning is complete.
* ISO Provisioning on RHEV will write the content generated by the customization template to a file named ks.cfg that will be attached to the Virtual Machine using the RHEV floppy payload.  If this content is to be included in the installation, the ISO image must be aware of this and include the contents of the file.  This usually requires remastering  of the ISO to include a custom Kickstart file.  See table below for an example.

####Customization Script Additions for Virtual Machine Provisioning

**Kickstart file on custom ISO**:  RHEV-M does not currently overwrite the filesystem on the ISO, so we need to leverage the kickstart in the ISO to source the content that was written to the floppy.  This kickstart example uses the %pre section to mount the floppy disk, write partitioning information and include the ks.cfg file from the root of the floppy that will contain the rest of the customized content.

~~~
### Pre Install Scripts
%pre

modprobe floppy
mkdir /tmp/floppy
mount /dev/floppy /tmp/floppy

#Get the first hard disk and use it for installation
hd=/dev/`grep '[hsv]d[a-z]' /proc/partitions |sort |awk 'NR==1{print substr($4,0,4)}'`
echo 'clearpart --all --drives='$hd' --initlabel' >/tmp/partition
echo 'bootloader --location=mbr --driveorder='$hd' --append=" rhgb crashkernel=auto quiet"' >>/tmp/partition
echo 'part /boot --fstype=ext4 --size=500 --asprimary --ondrive='$hd >>/tmp/partition
echo 'part pv.008002 --grow --size=1' >>/tmp/partition
echo 'volgroup vg_rhtest --pesize=4096 pv.008002' >>/tmp/partition
echo 'logvol / --fstype=ext4 --name=lv_root --vgname=vg_rhtest --grow --size=1024 --maxsize=51200' >>/tmp/partition
echo 'logvol swap --fstype=swap --name=lv_swap --vgname=vg_rhtest --grow --size=2016 --maxsize=4032' >>/tmp/partition
%end
### Grab the partitioning information that was written to disk earlier
%include /tmp/partition
%include /tmp/floppy/ks.cfg
~~~

**Kickstart**:  Takes the values from the Customize tab in Provisioning Dialog and substitutes them into the script.

~~~
#Configure Networking based on values from provisioning dialog
<% if evm[:addr_mode].first == 'static' %>
  <% network_string = "network --onboot yes --device=eth0 --bootproto=static --noipv6" %>
  <% ["ip", :ip_addr, "netmask", :subnet_mask, "gateway", :gateway, "hostname", :hostname, "nameserver", :dns_servers].each_slice(2) do |ks_key, evm_key| %>
    <% network_string << " --#{ks_key} #{evm[evm_key]}" unless evm[evm_key].blank? %>
  <% end %>
<%= network_string %>
<% else %>
network --device=eth0 --bootproto=dhcp
<% end %>
~~~

**Kickstart**:  Sets the root password to an encrypted value that kickstart can use.  Sourced from the Customize tab in the Provisioning Dialog.

~~~
rootpw  --iscrypted <%= MiqPassword.md5crypt(evm[:root_password]) %>
~~~

**Kickstart**:  Sends status of the provision back to CloudForms Management Engine Server for display in the CloudForms Management Engine Console.

~~~
# Callback to CFME during post-install
wget --no-check-certificate <%= evm[:callback_url_on_post_install] %>
~~~

**Sysprep**:  Encrypts the root password from the Customize tab in the Provisioning Dialog.  The Value for the AdministratorPasword line must be inserted to use the password from the Provision Dialog and encrypt it.

~~~
<UserAccounts>
                <AdministratorPassword>
                    <Value><%= MiqPassword.sysprep_crypt(evm[:root_password]) %></Value>
                    <PlainText>false</PlainText>
                </AdministratorPassword>
            </UserAccounts>
~~~

###To add a Customization Template # {#CreateCusomtizationTemplate}
1.	From Infrastructure, PXE, click the Customization Templates accordion.
2.	Click **Configuration**, **Add a new Customization Template**.
3.	Type in a Name and Description.
4.	Select the Image Type. This list should include the System Image Types you created.
5.	In the Type, select Kickstart for Linux based systems, and Sysprep for Windows based system.
6.	In the Script area, either paste the script from another source or type the script directly into the CloudForms Management Engine interface.
7.	Click **Add**.

The Customization Template is added.


