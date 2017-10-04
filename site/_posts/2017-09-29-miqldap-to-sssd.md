---
title: "MiqLdap To SSSD conversion tool"
author: jvlcek
date: 2017-09-29
comments: true
published: true
tags: tutorials
---

How does one use the *miqldap_to_sssd* conversion tool?

# MiqLdap To SSSD Conversion Tool

**Contents:**
---------------------------------------------------------------------

- **A brief Why before The How:**
- **The How**
- **Let's kick the tires**
  + **Example 1:** The simple Case:
  + **Example 2:** A case with a small complication:
  + **Example 3:** A case with a different small complication:
- **The other miqldap_to_sssd arguments**
- **Debugging Failed Conversions**

**A brief Why before The How:**
=====================================================================

Why did the *miqldap_to_sssd* conversion tool come to be?

ManageIQ (MiQ) is delivered with the built in LDAP client, *MiqLdap*. Maintaining our own LDAP
client is unnecessary as there are multiple mechanisms built into the operating system that provide an interface to an LDAP directory.

**The How**
=====================================================================

The *miqldap_to_sssd* conversion tool will convert an MiQ appliance configured to use the *MiqLdap* client to using external authentication.

To perform this re-configuration *miqldap_to_sssd* simply automates the instructions for manually configuring an MiQ Appliance’s external authentication to work against LDAP [(as documented here)](http://manageiq.org/docs/reference/latest/auth/ldap). It then customizes the configuration to emulate the *MiqLdap* configuration settings. 

The *MiqLdap* client is enabled when the appliance authentication mode is set to **LDAP(S)**
The external authentication mechanism is enabled when the appliance authentication mode is set to **External (httpd)**


**Let's kick the tires**
=====================================================================

I'll present 3 examples:

- **Example 1:** The simple Case:
  + Authentication *Mode LDAP* and with *Get User Groups from LDAP* **checked**
- **Example 2:** A case with a small complication:
  + Authentication *Mode LDAP* but with *Get User Groups from LDAP* **un-checked**
- **Example 3:** A caser with a different small complication:
  + Authentication *Mode LDAPS* using certificate files 

**Example 1:** The simple Case:
=====================================================================

Prior to running the *miqldap_to_sssd* conversion the appliance is configured with:

Authentication *Mode LDAP* and with *Get User Groups from LDAP* **checked**

Authenticaiton Configuration Settings:

|                               |                 |
|:-----------------------------:|:----------------|
| *Mode:*                       | **LDAP**        |
| *Get User Groups from LDAP:*  | **checked**     |
| *Get Roles from Home Forest:* | **checked**     |
| *Base DN:*                    | **filled in**   |
| *Bind DN:*                    | **filled in**   |
| *Bind Password:*              | **filled in**   |


Screenshot showing the appliance configuration for Mode: LDAP:
[![Screenshot Showing Appliance Configuration Mode: LDAP](/assets/images/blog/miqldap_to_sssd_auth_config_mode_ldap.png)](/assets/images/blog/miqldap_to_sssd_auth_config_mode_ldap.png)

**Note the username (userid)**
---------------------------------------------------------------------

- When the **LDAP Host** is an LDAP directory the username field stored in the MiQ database is a **Distinguished Name**
  + e.g.: *cn=user,ou=people,ou=proc,dc=example,dc=com*

- When the **LDAP Host** is an AD directory the username field stored in the MiQ database is a **User Principal Name**.
  + e.g.: *example.com*

- After the conversion to external authentication the username field stored in the MiQ database will always be **User Principal Name**.

Screenshot showing usernames in **Distinguished Name** form
[![UserID Mode: LDAP](/assets/images/blog/miqldap_to_sssd_userid_mode_ldap.png)](/assets/images/blog/miqldap_to_sssd_userid_mode_ldap.png)

**Snapshot your ManageIQ Virtual machine.**
---------------------------------------------------------------------

The miqldap_to_sssd conversion is **not reversible**.

It is recommended that your ManageIQ appliance be backed up and/or a snapshot be made of the virtual machine prior to running the *miqldap_to_sssd* conversion tool.

**Run the conversion**
---------------------------------------------------------------------

To run the conversion from this *simple* *MiqLdap* configuration simply execute the command *miqldap_to_sssd* with no arguments

Note the warning regarding the unsecure LDAP and unencrypted passwords. To avoid this start by using
LDAPS with certificates or, after running *miqldap_to_sssd*, update the */etc/sssd/sssd.conf* file to
include certificates. See the LDAPS example below and the SSSD(8) man page for more information about
certificates.

<pre><code style="white-space: pre">
miq> miqldap_to_sssd 
Converting from unsecured LDAP authentication to SSSD. This is dangerous. Passwords are not encrypted
tools/miqldap_to_sssd.rb Conversion Completed
miq> 
</code></pre>


**miqldap_to_sssd log**
---------------------------------------------------------------------

*miqldap_to_sssd* logs progress in file */var/www/miq/vmdb/log/miqldap_to_sssd.log*

**Authentication Mode External(httpd)**
---------------------------------------------------------------------

The *miqldap_to_sssd* will reconfigure the appliance for authentication **Mode: External (httpd)**

[![Appliance Configuration Mode: External (httpd)](/assets/images/blog/miqldap_to_sssd_auth_config_mode_ext_auth.png)](/assets/images/blog/miqldap_to_sssd_auth_config_mode_ext_auth.png)

**Note the username are User Principal Name**
---------------------------------------------------------------------

Now that conversion to external authentication has completed the username field will always be *User Principal Name*.

[![UserID Mode: LDAP](/assets/images/blog/miqldap_to_sssd_userid_mode_ext_auth.png)](/assets/images/blog/miqldap_to_sssd_userid_mode_ext_auth.png)

**Example 2:** A case with a small complication:
=====================================================================

Prior to running the *miqldap_to_sssd* conversion the appliance is configured with Authentication *Mode LDAP* but, and
this creates the *small complication*,  with *Get User Groups from LDAP* **un-checked**. The reason this creates the
*small complication* is because without  *Get User Groups from LDAP* checked the **Base DN** is not prompted for and the
*miqldap_to_sssd* conversion tool requires a **Base DN**

Authenticaiton Configuration Settings:

|                               |                 |
|:-----------------------------:|:----------------|
| *Mode:*                       | **LDAP**        |
| *Get User Groups from LDAP:*  | **un-checked**  |
| *Get Roles from Home Forest:* | **un-checked**  |
| *Base DN:*                    | **empty**       |
| *Bind DN:*                    | **empty**       |
| *Bind Password:*              | **empty**       |


Screenshot showing the appliance configuration for Mode: LDAP:
[![Screenshot Showing Appliance Configuration Mode: LDAP](/assets/images/blog/miqldap_to_sssd_auth_config_mode_ldap_get_groups_unchecked.png)](/assets/images/blog/miqldap_to_sssd_auth_config_mode_ldap_get_groups_unchecked.png)

**Snapshot your ManageIQ Virtual machine.**
---------------------------------------------------------------------

**I feel compelled to repeat this.**

The miqldap_to_sssd conversion is **not reversible**.

It is recommended that your ManageIQ appliance be backed up and/or a snapshot be made of the virtual machine prior to running the *miqldap_to_sssd* conversion tool.

**Run the conversion**
---------------------------------------------------------------------

To run the conversion from this *MiqLdap* configuration the *miqldap_to_sssd* command needs to be passed the **--basedn-domain** argument.
This is because the **Base DN** is not available in the appliance configuration.

*miqldap_to_sssd* supports 5 arguments. This example uses the **--basedn-domain** argument.
<pre><code style="white-space: pre">
miqldap_to_sssd --help
Usage: ruby tools/miqldap_to_sssd.rb [options]
  -d, --basedn-domain=                       The Base DN domain name, e.g. example.com
  -c, --tls-cacert=                          Path to certificate file
  -n, --only-change-userids                  normalize the userids then exit
  -s, --skip-post-coversion-userid-change    Do the MiqLdap to SSSD conversion but skip the normalizing of the userids
  -h, --help                                 Show this message
</code></pre>

**Note:** The Base DN must be in "dot" form e.g.: *example.com*
<pre><code style="white-space: pre">
miq> miqldap_to_sssd --basedn-domain example.com
Converting from unsecured LDAP authentication to SSSD. This is dangerous. Passwords are not encrypted
tools/miqldap_to_sssd.rb Conversion Completed
miq> 
</code></pre>

**Authentication Mode External(httpd)**
---------------------------------------------------------------------

The *miqldap_to_sssd* will reconfigure the appliance for authentication **Mode: External (httpd)** and *Get User Groups from External Authentication* **un-checked**

[![Appliance Configuration Mode: External (httpd)](/assets/images/blog/miqldap_to_sssd_auth_config_mode_ext_auth_get_groups_uncheck.png)](/assets/images/blog/miqldap_to_sssd_auth_config_mode_ext_auth_get_groups_uncheck.png)


**Example 3:** A case with a different small complication:
=====================================================================

Prior to running the *miqldap_to_sssd* conversion the appliance is configured with Authentication Mode LDAP**S** for secure LDAP.
The source of the certificates must be passed to the *miqldap_to_sssd* conversion tool.

Authenticaiton Configuration Settings:

|                               |                 |
|:-----------------------------:|:----------------|
| *Mode:*                       | **LDAPS**       |
| *Get User Groups from LDAP:*  | **checked**     |
| *Get Roles from Home Forest:* | **checked**     |
| *Base DN:*                    | **filled in**   |
| *Bind DN:*                    | **filled in**   |
| *Bind Password:*              | **filled in**   |


Screenshot showing the appliance configuration for Mode: LDAP:
[![Screenshot Showing Appliance Configuration Mode: LDAP](/assets/images/blog/miqldap_to_sssd_auth_config_mode_ldaps.png)](/assets/images/blog/miqldap_to_sssd_auth_config_mode_ldaps.png)

**Snapshot your ManageIQ Virtual machine.**
---------------------------------------------------------------------

**I feel compelled to repeat this.**

The miqldap_to_sssd conversion is **not reversible**.

It is recommended that your ManageIQ appliance be backed up and/or a snapshot be made of the virtual machine prior to running the *miqldap_to_sssd* conversion tool.

**Run the conversion**
---------------------------------------------------------------------

To run the conversion from this *MiqLdap* configuration the *miqldap_to_sssd* command needs to be passed the **--tls-cacert** argument
with the path to the certificate file.

*miqldap_to_sssd* supports 5 arguments. This example uses the **--tls-cacert** argument.

Note the warning, regarding the unsecure LDAP and unencrypted passwords, is not displayed because the conversion from LDAP**S**
preserves the certificate security.

<pre><code style="white-space: pre">
miqldap_to_sssd --help
Usage: ruby tools/miqldap_to_sssd.rb [options]
  -d, --basedn-domain=                       The Base DN domain name, e.g. example.com
  -c, --tls-cacert=                          Path to certificate file
  -n, --only-change-userids                  normalize the userids then exit
  -s, --skip-post-coversion-userid-change    Do the MiqLdap to SSSD conversion but skip the normalizing of the userids
  -h, --help                                 Show this message
</code></pre>

<pre><code style="white-space: pre">
miq> miqldap_to_sssd --tls-cacert  /etc/openldap/certs/cacert.pem
tools/miqldap_to_sssd.rb Conversion Completed
miq> 
</code></pre>

**Authentication Mode External(httpd)**
---------------------------------------------------------------------

The *miqldap_to_sssd* will reconfigure the appliance for authentication **Mode: External (httpd)**

[![Appliance Configuration Mode: External (httpd)](/assets/images/blog/miqldap_to_sssd_auth_config_mode_ext_auth.png)](/assets/images/blog/miqldap_to_sssd_auth_config_mode_ext_auth.png)

**The other miqldap_to_sssd arguments**
=====================================================================

So far only 3 of the 5 arguments supported by *miqldap_to_sssd* have been used.
The other 2 will be explained here.

Again the 5 supported argument are:

<pre><code style="white-space: pre">
miqldap_to_sssd --help
Usage: ruby tools/miqldap_to_sssd.rb [options]
  -d, --basedn-domain=                       The Base DN domain name, e.g. example.com
  -c, --tls-cacert=                          Path to certificate file
  -n, --only-change-userids                  normalize the userids then exit
  -s, --skip-post-coversion-userid-change    Do the MiqLdap to SSSD conversion but skip the normalizing of the userids
  -h, --help                                 Show this message
</code></pre>

As mentioned earlier :

When the **LDAP Host** is an LDAP directory the username field stored in the MiQ database is a **Distinguished Name**

When the **LDAP Host** is an AD directory the username field stored in the MiQ database is a **User Principal Name**.

After the conversion to external authentication the username field stored in the MiQ database will always be **User Principal Name**.

To ensure that the username field stored in the MiQ database will always be **User Principal Name** the *miqldap_to_sssd* conversion
tool will convert the username fields to **User Principal Name** if they are not.

If for any reason this conversion of the username field to  **User Principal Name** is not desired the --skip-post-coversion-userid-change
argument can be used.

If, on the other hand, the conversion from authentication **Mode: LDAP(s):** to **Mode: External (httpd)**
is not desired the username userids can still be normalized to **User Principal Name** format by using the **--only-change-userids** argument.

**Debugging Failed Conversions**
=====================================================================

There are many different possible authentication configurations. Some may be encountered that result in the *miqldap_to_sssd* conversion tool
not fully completing. If things go wrong, to diagnose why, start by examining the log file */var/www/miq/vmdb/log/miqldap_to_sssd.log* 

For more help diagnosing failures see the instructions for manually configuring an MiQ Appliance for external authentication.
[(as documented here)](http://manageiq.org/docs/reference/latest/auth/ldap)

This document has diagnostics tips, including:
  - How to use **ldapsearch**, with usage examples.
  - How to use **dbus-send**, with usage examples
  - Adding **debug_level=9** to the sssd.conf to produce more sssd logging information


