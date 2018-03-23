---
title: "Troubleshooting ManageIQ Authentication"
author: jvlcek
date: 2018-01-31
comments: true
published: true
tags: tutorials
---

The goal of this blog post is to provide a basic understanding of:
1. ManageIQ authentication configurations
1. How to *troubleshoot* the technologies supporting ManageIQ authentication.
1. What to provide to engineering when an irresolvable ManageIQ authentication issue is encountered.

**Contents:**
---------------------------------------------------------------------

- [**Technologies Supporting ManageIQ Authentication Modes**](#technologies-supporting-manageiq-authentication-modes)
- [**ManageIQ Groups and Roles**](#manageiq-groups-and-roles)
- [**ManageIQ Authentication Data**](#manageiq-authentication-data)
- [**SAML A different beast**](#saml-a-different-beast)
- [**Common Misconceptions**](#common-misconceptions)
- [**Reporting Authentication Issues**](#reporting-authentication-issues)
- [**Appendix: The Gory Details**](#appendix)
  - [Capturing ManageIQ Log Files](#capturing-manageiq-log-files)
  - [Capturing Authentication Data From ManageIQ DB](#capturing-authentication-data-from-manageiq-db)
  - [Confirming LDAP Configuration](#confirming-ldap-configuration)
  - [Confirming SSSD Configuration](#confirming-sssd-configuration)
  - [Diagnosing Failed dbus Commands](#diagnosing-failed-dbus-commands)
  - [Adding Groups In ManageIQ](#adding-groups-in-manageiq)


# Technologies Supporting ManageIQ Authentication Modes
---------------------------------------------------------------------

ManageIQ supports a rich set of different authentication configurations, as outlined in the blog post:
[**ManageIQ Authentication Overview**](../auth-overview)

Many of the issues reported as ManageIQ authentication problems are not directly related to ManageIQ. Instead
many are rooted in failures with the configuration of the underlying authentication technology.

Different technologies are used to implement the supported ManageIQ authentication *modes*.

Below is a list of the technologies used to implement each of the authentication modes, with pointers to troubleshooting tips.

### **Mode: Database**

  ManageIQ configuration: **Mode: Database**, relies on all **User**, **Group** and **Role** information being stored
  directly in the ManageIQ database to support authentication and authorization.

  + See: [**Capturing Authentication Data From ManageIQ DB**](#capturing-authentication-data-from-manageiq-db) for tips
    on how to capture the authentication information stored in the ManageIQ Database.

### **Mode: LDAP and Mode: LDAPS**

  ManageIQ configurations: **Mode: LDAP and Mode: LDAPS**, are implemented with the MiqLdap driver, which queries LDAP
  servers directly via the [**net-ldap Rubygem**](https://rubygems.org/gems/net-ldap/).

  + See: [**Confirming LDAP Configuration**](#confirming-ldap-configuration) for tips on how to verify an LDAP configuration.

### **Mode: External (httpd)**

  ManageIQ configurations: **Mode: External (httpd)** is implemented with the *The System Security Service Daemon*
  [**(SSSD)**](https://docs-old.fedoraproject.org/en-US/Fedora/16/html/System_Administrators_Guide/chap-SSSD_User_Guide-Introduction.html).

  + **NOTE:** *Mode: External (httpd)* for ***SAML*** does not use *SSSD*: See: [**SAML A different beast**](#saml-a-different-beast)

  + See: [**Confirming SSSD Configuration**](#confirming-sssd-configuration) for tips on how to verify an SSSD configuration.

### **Mode: Amazon**

  ManageIQ configuration: **Mode: Amazon**, is used to connect directly to Amazon Cloud Services for authentication.

  + Information regarding troubleshooting this configuration will be added in the future. 

# ManageIQ Groups and Roles
---------------------------------------------------------------------

Authentication groups are used to associate a user to ManageIQ **Authorization Roles**

ManageIQ uses the concept of a **Role** to limit the functionality a user is *Authorized* to perform.

For an overview of ManageIQ **Roles** see: [**ManageIQ Basic Configuration**](http://manageiq.org/docs/get-started/basic-configuration)

In brief:
  1. A user is associated with groups in the Identity Provider (**IdP**)
  1. A group is associated with an ManageIQ role in ManageIQ
  1. When a user logs in to ManageIQ their credentials are **Authenticated** by the IdP.
  1. The IdP can the provide a list of groups the user belongs to.
  1. ManageIQ determines if one of the groups reported by the IdP for the user is stored in the ManageIQ database.
  1. If found ManageIQ will **Authorize** the user to have the **Role** associated with the **Group**

**NOTE:** **Groups** with associated **Roles** must be manually created in the ManageIQ database.

# ManageIQ Authentication Data
---------------------------------------------------------------------

ManageIQ authentication related configuration data is maintained in the ManageIQ Database and ManageIQ authentication related events are recorded in the ManageIQ logs.

### **Authentication settings**, **User** and **Group** information are stored in the ManageIQ database.

  + See: [**Capturing Authentication Data From ManageIQ DB**](#capturing-authentication-data-from-manageiq-db) for tips
    on how to capture the authentication information stored in the ManageIQ Database.

### **ManageIQ Authentication Events are captured in log files.**

  + See: [**Capturing ManageIQ Log Files**](#Capturing ManageIQ Log Files) for tips on how to capture the ManageIQ logs.

# SAML A different beast
---------------------------------------------------------------------

Authentication using SAML is a bit of a different beast. Although it is configured in ManageIQ as *Mode: External (httpd)* it does not use *SSSD*.
Instead, Apache modules are used to make the connection to an Identity Provider (IdP) that supports SAML, e.g. [**Keycloak**](http://www.keycloak.org/).

Because SAML does not use SSSD, unlike the other ManageIQ *Mode: External (httpd)* configurations, it is not possible to verify
a SAML configuration with [**dbus-send**](https://dbus.freedesktop.org/doc/dbus-send.1.html)

Here is a list of ways to help diagnose SAML configurations independently from ManageIQ.

  - Use [**SAML tracer**](https://addons.mozilla.org/en-US/firefox/addon/saml-tracer/)  web browser plug in. 
  - Configure Keycloak to ***Do not encrypt assertions*** so **SAML Tracer** can display text
  - Debugging the Apache modules.

A future update to this blog will expand this section and provide more information regarding troubleshooting SAML

# Common Misconceptions
---------------------------------------------------------------------

- Groups are not auto-created

  + The groups a user belongs to must be manually created in the ManageIQ DB, unless they already exist.

- External Authentication LDAP is not the same as Mode: LDAP(S) 

  + For a description of the difference see - [**ManageIQ Authentication Overview**](../auth-overview)

- Authentication is not Authorization

  + **Authentication** addresses if the specified user and password are valid.
  + **Authorization** addresses what an valid ***Authenticated*** user is allowed to do.

- External authentication can not be configured with the ***appliance_console*** against non-[**IPA**](https://www.freeipa.org/page/Main_Page) servers.

  + The ***appliance_console's*** option: ***Configure External Authentication (httpd)*** runs [**ipa-client-install**](https://www.freeipa.org/page/Client) to configure an IPA client and ***requires*** an IPA server be configured as the IdP.

<!--
- Unicorns do exist. They're just not authentic.
-->

# Reporting Authentication Issues
---------------------------------------------------------------------

  When reporting an ManageIQ Authentication issue the below information should be gathered and included
  in the report.

  1. The **Authentication settings**, **User** and **Group** information from the ManageIQ database as described
     in section: [**Capturing Authentication Data From ManageIQ DB**](#capturing-authentication-data-from-manageiq-db)
  1. Attach the ManageIQ log files. See: [**Capturing ManageIQ Log Files**](#capturing-manageiq-log-files)
  1. If configured for ***Mode: LDAP(S)*** is the [**memberof overlay**](https://technicalnotes.wordpress.com/2014/04/19/openldap-setup-with-memberof-overlay/)
     being used on the LDAP server?
  1. Can a list of groups for a specific user be found in the ***Adding a new Group*** configuration page?
     see: [**Adding Groups In ManageIQ**](#adding-groups-in-manageiq)
  1. If configured for ***Mode: LDAP(S)*** provide the output from ldapsearch. See: [**Confirming LDAP Configuration**](#confirming-ldap-configuration)
  1. If configured for ***Mode: External (httpd)***:
  +  attach the `/etc/sssd/sssd.conf`
  + provide the output from dbus-send. See: [**Confirming SSSD Configuration**](#confirming-sssd-configuration)
  + If the dbus-send commands fail to return the required information the SSSD configuration must be diagnosed and fixed before attempting to use ManageIQ.
    See: [**Diagnosing Failed dbus Commands**](#diagnosing-failed-dbus-commands)

# Appendix
---------------------------------------------------------------------

**The Gory Details**

## Capturing ManageIQ Log Files
---------------------------------------------------------------------

ManageIQ log files are stored in directory ***/var/www/miq/vmdb/log*** which on some releases is a symbolic link.
Be sure to include the "h" flag, as indicated below when generating the tar ball of the symbolically linked log directory.

These shell commands shows how to generate the tar ball and verify it's contents:

<pre><code style="white-space: pre">
  miq_bash> cd /var/www/miq/vmdb
  miq_bash> tar cvfzh my_log_files.tar.gz log 
  miq_bash> tar ztvf my_log_files.tar.gz 
</code></pre>

## Capturing Authentication Data From ManageIQ DB
---------------------------------------------------------------------

The below commands can be used on the appliance where the database resides to capture 
the authentication configuration settings, group and user information from the database.

  + This shell command can be used to query the database for the ***authentication settings***:

  <pre><code style="white-space: pre">
  miq_bash> /var/www/miq/vmdb/bin/rails runner 'puts Settings.authentication'
  </code></pre>

  + This shell command can be used to query the database for the list of known ***groups***:

  + The groups returned from the IdP for users expected to be authenticated on ManageIQ must match at least one
    group reported by this command. If not one must be manually added using the ManageIQ UI.

  <pre><code style="white-space: pre">
  miq_bash> /var/www/miq/vmdb/bin/rails runner 'puts MiqGroup.pluck(:description)'
  </code></pre>

  + This shell command can be used to query the database for the list of known ***users***:

  + ManageIQ will auto create authenticated and authorized users if **Get User Groups** from the IdP is configured on the ManageIQ Authentication page.

  <pre><code style="white-space: pre">
  miq_bash> /var/www/miq/vmdb/bin/rails runner 'puts User.pluck(:userid)'
  </code></pre>

## Confirming LDAP Configuration
---------------------------------------------------------------------

An LDAP configuration can be confirmed independently from ManageIQ by using the ldapsearch command.

The LDAPSEARCH(1) man page can be found by searching for ***ldapsearch*** in the [**Open LDAP man pages**](http://www.openldap.org/software/man.cgi).

Follow these steps to run ldapsearch.

  + Step 1. Get the certs from the OpenLdap Serve if using secure LDAP**S** *These commands may vary depending on how the certs are managed on the LDAP server.*

  <pre><code style="white-space: pre">
  # Remove any old certs
  miq_bash> rm /etc/openldap/certs/&ast;

  # Copy the certs from the LDAP server:
  miq_bash> scp root@ldaphost.example.com:/etc/pki/tls/certs/cacert.pem  /etc/openldap/certs/
  miq_bash> scp root@ldaphost.example.com:/etc/pki/tls/certs/server&ast;.pem /etc/openldap/certs/

  # Rehash the certs
  miq_bash> /usr/sbin/cacertdir_rehash /etc/openldap/certs/
  </code></pre>

  + Step 2. Update `/etc/openldap/ldap.conf` to:

  Here is an example of an `ldap.conf`. *The values will vary depending on how the certs are managed on the LDAP server.*

  <pre><code style="white-space: pre">
  SASL_NOCANON    on
  URI             https://ldaphost.example.com:636
  BASE            dc=example,dc=com
  TLS_REQCERT     demand
  TLS_CACERTDIR   /etc/openldap/certs
  TLS_CACERT      /etc/openldap/certs/cacert.pem
  </code></pre>

  + Step 3. Verify the cert with openssl and LDAP configuration with openssl. For example:

  <pre><code style="white-space: pre">
  miq_bash> openssl s_client -connect ldaphost.example.com:636 -CAfile /etc/openldap/certs/cacert.pem
  miq_bash> openssl s_client -showcerts -connect ldaphost.example.com:636
  </code></pre>

  + The flags used in the `ldapsearch` examples are:

  <pre><code style="white-space: pre">
  -x Use simple authentication instead of SASL.

  -H ldaphost

  -b searchbase
     Use  searchbase  as the starting point for the search instead of the default.

  -D binddn
     Use the Distinguished Name binddn to bind to the LDAP directory.
     For SASL binds, the server is expected to ignore this value.

  -w passwd
     Use passwd as the password for simple authentication.

  -d debuglevel
     Set the LDAP debugging level to debuglevel. ldapsearch must be compiled with
     LDAP_DEBUG defined for this option to have any effect.
  </code></pre>

  + Step 4. Run non-secure `ldapsearch`

  Specify `ldap` protocol and port with a binddn and password

  <pre><code style="white-space: pre">
  miq_bash> ldapsearch -x -H ldap://ldaphost.example.com:389  -b "dc=example,dc=com"  -D "cn=Manager,dc=example,dc=com" -w password
  </code></pre>

  + Step 5. Run `ldapsearch` using Transport Layer Security ***TLS***

  Specify `ldap` protocol and port but do not specify binddn or password will result in a TLS exchange.

  <pre><code style="white-space: pre">
  miq_bash> ldapsearch -x -H ldap://ldaphost.example.com:389  -b "dc=example,dc=com"
  </code></pre>

  + Step 6. Run `ldapsearch` using Secure Sockets Layer ***SSL***

  Specify `ldaps` protocol and port will result in SSL exchange.

  <pre><code style="white-space: pre">
  miq_bash> ldapsearch -x -H ldaps://ldaphost.example.com:636  -b "dc=example,dc=com"
  </code></pre>

  The `-d` flag can be used to produce debugging information.

  Diagnosing `ldapsearch` failures is beyond the scope of this blog.

## Confirming SSSD Configuration
---------------------------------------------------------------------

  ManageIQ configurations: **Mode: External (httpd)** is implemented with the *The System Security Service Daemon*
  [**(SSSD)**](https://docs-old.fedoraproject.org/en-US/Fedora/16/html/System_Administrators_Guide/chap-SSSD_User_Guide-Introduction.html).

  For more information see: [**Technologies Supporting ManageIQ Authentication Modes**](#technologies-supporting-manageiq-authentication-modes)

  SSSD can be exercised independently of ManageIQ using [**dbus-send**](https://dbus.freedesktop.org/doc/dbus-send.1.html)

  Before attempting to configure ManageIQ authentication directly the ***dbus-send*** command should be used to confirm the external
  authentication technology is functioning and correctly configured.

### ***dbus-send / GetUserAttr***

This ***dbus-send / GetUserAttr*** command can be used to confirm all of the user attributes used
by ManageIQ authentication are correctly provided by the underlying technology.

<pre><code style="white-space: pre">
  miq_bash> dbus-send \
  --print-reply \
  --system \
  --dest=org.freedesktop.sssd.infopipe /org/freedesktop/sssd/infopipe org.freedesktop.sssd.infopipe.GetUserAttr \
  string:mshiffrin array:string:mail,givenname,sn,displayname,domainname
</code></pre>

The output from the above ***dbus-send / GetUserAttr*** command should look similar to the following:

`Note:` The ***domainname*** attribute is only available in newer releases of ManageIQ.

<pre><code style="white-space: pre">
method return sender=:1.40 -> dest=:1.48 reply_serial=2
   array [
      dict entry(
         string "mail"
         variant             array [
               string "mshiffrin@example.com"
            ]
      )
      dict entry(
         string "givenname"
         variant             array [
               string "Mikaela"
            ]
      )
      dict entry(
         string "sn"
         variant             array [
               string "Shiffrin"
            ]
      )
      dict entry(
         string "displayname"
         variant             array [
               string "Mikaela Shiffrin"
            ]
      )
      dict entry(
         string "domainname"
         variant             array [
               string "example.com"
            ]
      )
   ]
</code></pre>

### ***dbus-send / GetUserGroups***

This ***dbus-send / GetUserGroups*** command can be used to confirm all of the user's groups are correctly provided by the underlying technology.

<pre><code style="white-space: pre">
  miq_bash> dbus-send \
  --print-reply \
  --system \
  --dest=org.freedesktop.sssd.infopipe /org/freedesktop/sssd/infopipe org.freedesktop.sssd.infopipe.GetUserGroups \
  string:mshiffrin
</code></pre>

The output from the above ***dbus-send / GetUserAttr*** command should look similar to the following:

<pre><code style="white-space: pre">
method return sender=:1.40 -> dest=:1.189 reply_serial=2
   array [
      string "evmgroup-super_administrator"
      string "gs-group"
   ]
</code></pre>

+ If these dbus-send commands fail to return the required information the SSSD configuration must be diagnosed and fixed before attempting to use ManageIQ.
  See: [**Diagnosing Failed dbus Commands**](#diagnosing-failed-dbus-commands)

## Diagnosing Failed dbus Commands
---------------------------------------------------------------------

If the ***dbus-send*** commands described in section [**Confirming SSSD Configuration**](#confirming-sssd-configuration)
do not succeed the SSSD configuration can be diagnosed by doing the following:

  + Add ***debug_level=9*** to each of the sections of the SSSD configuration file: ***/etc/sssd/sssd.conf***

  + Restart the sssd service and confirm it is running.

  If it does not restart there could be errors in the `/etd/sssd/sssd.conf` file that need to be addressed.

  <pre><code style="white-space: pre">
  miq_bash> systemctl restart sssd.service
  miq_bash> systemctl status sssd.service
  </code></pre>

  + `Note:` If updates are done to the  ***/etc/sssd/sssd.conf*** file and not immediately seen when authenticating,
     then clean the SSSD cache as follows and restart the service:

  <pre><code style="white-space: pre">
  miq_bash> sss_cache -E
  </code></pre>

  + tail the sssd log files
  <pre><code style="white-space: pre">
  tail -f /var/log/sssd/&ast;.log
  </code></pre>

  + Rerun the ***dbus-send*** commands described in section [**Confirming SSSD configuration**](#confirming-sssd-configuration)

## Adding Groups In ManageIQ
---------------------------------------------------------------------

Groups can be manually added in ManageIQ ***and*** they can be retrieving for a specified user from the configured IdP.
Retrieving them is a good test to confirm connectivity to the IdP server and it is reporting group membership for
the specified user. Doing this is analogous to using the ***dbus-send / GetUserGroups*** command.

`Note:` ***Look up Groups*** does not work with SAML.

Look up groups for a specific user with ManageIQ by doing:

  1. Using the ManageIQ UI navigate to *Configuration* -> *Access Control* -> *Groups* -> *Configuration* -> *Add a new Group*
  1. Check ***Look up Groups***, provide the credentials if necessary for the specific configuration.
  1. Click *Retrieve*
  1. Near the top of the page a new drop-down should appear populated with group names the specified user is associated with on the IdP

