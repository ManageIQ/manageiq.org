---
layout: start_doc
title: Basic Configuration
---

The Red Hat CloudForms appliance is a virtual machine image that runs on
a Red Hat Enterprise Linux-based operating system. It is advisable to
perform some tasks in the appliance (i.e changing the root password and
setting ssh keys)

1.  The appliance database has already been configured in the Docker and
    Vagrant installations. If you are using other types of appliances
    (like OpenStack, VMware or Openstack) follow the documentation for
    your provider to configure.
2.  Point your browser to its IP address

    1.  **Docker:** localhost (127.0.0.1)
    2.  **Vagrant:** 172.28.128.3

![screenshot0001](/assets/images/docs/screenshot_0001.png)

3.  Log in using default credentials

    1.  **Login:** admin
    2.  **Password:** smartvm



4.  ManageIQ uses vertical navigation. The main menus are available in
    the left of the screen, and secondary and tertiary menus are
    expanded when needed. You can pin a secondary or tertiary menu to
    easily navigate through its elements.

![screenshot0002](/assets/images/docs/screenshot_0002.png)

5.  Go to Settings → Configuration to change how the appliance behaves:

    1.  *CFME Region: Region 0* → *Zones* → *Zone:
        Default zone(current)* → *Server: EVM\[1\](current)* should be
        selected by default.  
        The hostname and IP address will be available here, in some
        cases this will be the internal IP address and not the one you
        connected to.  
        You can change the *Company Name* to your company names, and the
        interface will reflect the change.  
        *Change it to ManageIQ*  
        And *select your time zone  
        *If you want, you can change the language default.
    2.  Server control defines what roles each appliance executes in a
        multi-appliance deployment. For now, as we have only one
        appliance, select all C&U and Notification options. Don’t select
        Database synchronization, Git Repositories Owner, RHN Mirror or
        Smart Proxy unless you need them.
    3.  Configure your email server so ManageIQ can send you emails
    4.  *Press Save* to save your changes

6.  In the accordion, *select Access Control.*

    1.  You can see definitions for Users, Groups, Roles and Tenants.
        For now, let’s create a user with limited access to
        self-service.  
        Select Users  
        Click *Configuration → Add a new User  
        * Fill all the elements in the form (select
        Role EvmRole-user\_limited\_self\_service) and then press *Add*
    * Vagrant: 172.28.128.3

## Next: [Add A Provider](/docs/get-started/add-a-provider)
