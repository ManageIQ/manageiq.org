---
title: "ManageIQ Authentication Overview"
author: jvlcek
date: 2018-02-01
comments: true
published: true
tags: tutorials
---

This blog post provides a high level overview of the ways ManageIQ Authentication can be configured.
It also gives a brief summary of the steps used to configure them.

**Contents:**
---------------------------------------------------------------------
- [**Authentication Using Mode LDAP and LDAPS**](#authentication-using-mode-ldap-and-ldaps)
- [**External Authentication Using SSSD Directly**](#external-authentication-using-sssd-directly)
- [**External Authentication Using IPA**](#external-authentication-using-ipa)
- [**Additional Features of External Authentication Using IPA**](#additional-features-of-external-authentication-using-ipa)
  + [2 Factor Authentication With IPA](#2-factor-authentication-with-ipa)
  + [IPA AD Trust](#ipa-ad-trust)
- [**External Authentication With SAML**](#external-authentication-with-saml)

# Authentication Using Mode LDAP and LDAPS
---------------------------------------------------------------------

  + Authentication Using Mode LDAP and LDAPS is implemented using [MiqLdap](https://github.com/ManageIQ/manageiq/blob/master/lib/miq_ldap.rb)
  + MiqLdap is a legacy solution implemented by an LDAP client built into ManageIQ.
  + MiqLdap is enabled by configuring authentication *Mode LDAP* or secure *Mode LDAPS*.
  + MiqLdap is being deprecated in the MangeIQ *Gaprindashvili* release.
  + **Note:** In order to retrieve user group membership information, MiqLdap requires the
  [memberof overlay](https://technicalnotes.wordpress.com/2014/04/19/openldap-setup-with-memberof-overlay/) 
   be used on the LDAP server.
  + Configuring MiqLdap is currently only documented downstream in the Cloudforms documentation. See: [Configuring LDAP Authentication](https://access.redhat.com/documentation/en-us/red_hat_cloudforms/4.6-beta/html/general_configuration/configuration#ldap_settings)
  + For users currently using MiqLdap it is recommended they convert to using [Authentication *Mode: External (httpd)* with LDAP](http://manageiq.org/docs/reference/latest/auth/ldap)
  + The tool **miqldap_to_sssd** can be used to help convert an MiqLdap Configuration to SSSD.
  + See this [blog post](/blog/2017/09/miqldap-to-sssd/) describing how to use the **miqldap_to_sssd** conversion tool.

# External Authentication Using SSSD Directly
---------------------------------------------------------------------

  External authentication is supported through
  [Apache modules](http://httpd.apache.org/modules/)  over
  [SSSD](https://docs-old.fedoraproject.org/en-US/Fedora/16/html/System_Administrators_Guide/chap-SSSD_User_Guide-Introduction.html)


  Both direct to ***LDAP*** and direct to ***Active Directory*** configurations are supported.

  The instructions for manually configuring ManageIQ external Authentication can be found here:
  [Active Directory](http://manageiq.org/docs/reference/latest/auth/active_directory) and
  [LDAP](http://manageiq.org/docs/reference/latest/auth/ldap)

  + ***Active Directory***

    A summary of the steps involved for manually configuring ManageIQ external authentication to work against ***Active Directory*** are:

    1. Joining an AD Domain with ***realm(8) join***
    1. Allowing AD Users login access with ***realm(8) permit***
    1. Configure SSSD by modifying the ***/etc/sssd/sssd.conf*** configuration file.
    1. Configure the Apache module(s)
    1. Configure SELinux
    1. Configure ManageIQ Authentication with the ManageIQ Administrative UI 

  + ***LDAP***

    A summary of the steps involved for manually configuring ManageIQ external authentication to work against ***LDAP*** are:

    1. Install and test LDAPS ***SSL certificate***
    1. Configure SSSD by modifying the ***/etc/sssd/sssd.conf*** configuration file.
    1. Configure the Apache module(s)
    1. Configure SELinux
    1. Configure ManageIQ Authentication with the ManageIQ Administrative UI 

# External Authentication Using IPA
---------------------------------------------------------------------

  External authentication using [IPA](https://www.freeipa.org/page/About) is configured using the IPA client to connect
  to a preconfigured IPA server. ManageIQ makes configuration of the IPA Client simple by providing a wrapper around
  the ***ipa-client-install(1)*** command in the [appliance_console](https://github.com/ManageIQ/manageiq-appliance_console).

  ***Note:*** Under the covers IPA uses [SSSD](https://docs-old.fedoraproject.org/en-US/Fedora/16/html/System_Administrators_Guide/chap-SSSD_User_Guide-Introduction.html)

  + The Appliance Console option: ***Configure External Authentication (httpd)*** is used to configure the IPA client.

  + `Note:` The Appliance Console can not be used to configure external authentication for anything except for IPA.

  + `Note:` The ManageIQ Appliance hostname must be resolvable by FQDN on the IPA server and conversely the IPA
  server hostname must be resolvable by FQDN on the ManageIQ Appliance.

  + The instructions for configuring ManageIQ external Authentication using IPA can be found here:
    [External Authentication (httpd)](http://manageiq.org/docs/guides/external_auth)

# Additional Features of External Authentication Using IPA
---------------------------------------------------------------------

  IPA provides two useful features usable with ManageIQ:
  Both of these features are provided and configured on the IPA server, then leveraged on the ManageIQ Appliance.

## 2 Factor Authentication with IPA
---------------------------------------------------------------------

Here are the instructions for configuring [2 Factor Authentication with IPA](http://manageiq.org/docs/reference/latest/auth/ipa_2fa)

A summary of how to configure 2 Factor Authentication with IPA is as follows:

  1. Configure the ManageIQ Authentication with the ManageIQ Administrative UI 
  1. Enable the ManageIQ Appliance to use the configured IPA server with the [appliance_console](https://github.com/ManageIQ/manageiq-appliance_console) *as above*
  1. Enabling 2 Factor Authentication using the IPA Server's administrative UI

## IPA AD Trust
---------------------------------------------------------------------

Here are the instructions for configuring [IPA AD Trust](http://manageiq.org/docs/reference/latest/auth/ipa_ad_trust)

A summary of how to configure ***IPA AD Trust*** with IPA is as follows:

  1. Set up and configure an IPA server for [AD Trust Authentication](https://www.freeipa.org/page/Active_Directory_trust_setup)
  1. Enable the ManageIQ Appliance to use the configured IPA server with the [appliance_console](https://github.com/ManageIQ/manageiq-appliance_console) *as above*
  1. Configure the ManageIQ appliance to use external authentication
  1. Create groups on the ManageIQ appliance

# External Authentication with SAML
---------------------------------------------------------------------

  Configuring ManageIQ for external authentication using SAML following the [ManageIQ Authentication SAML documentation](http://manageiq.org/docs/reference/latest/auth/saml)

  The identity provider tool, [Keycloak](http://www.keycloak.org/), has been used to test the SAML functionality.

  A summary of how to configure a ManageIQ appliance to work with SAML is as follows:

  1. Configuration Apache 
  1. Configure SAML with mellon_create_metadata script
  1. Configure a Client on the Keycloak Administration Console following the [ManageIQ Authentication SAML documentation](http://manageiq.org/docs/reference/latest/auth/saml)
  1. Add the necessary mappers, paying close attention to the case for each field. Follow these screenshots:
  + [fullname](/assets/images/blog/auth_saml_mapper_fullname.png),
  [firstname](/assets/images/blog/auth_saml_mapper_firstname.png),
  [lastname](/assets/images/blog/auth_saml_mapper_lastname.png),
  [username](/assets/images/blog/auth_saml_mapper_username.png),
  [email](/assets/images/blog/auth_saml_mapper_email.png),
  [groups](/assets/images/blog/auth_saml_mapper_groups.png)
  1. Copy the Client Metadata file from the Keycloak server onto the ManageIQ appliance
  1. Configure the ManageIQ appliance to use external authentication
