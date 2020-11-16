---
title: "Troubleshooting OpenID-Connect Authentication on Containers"
author: jvlcek
date: 2020-09-21
comments: true
published: true
tags: tutorials
---

The goal of this blog post is to provide a basic understanding of how to troubleshoot ManageIQ 
configured for OpenID-Connect authentication when deploying ManageIQ on containers.

The examples were generated using OpenShift.

**Contents:**
---------------------------------------------------------------------


- [**Configure ManageIQ For OpenID-Connect Authentication**](#configure-manageiq-for-openid-connect-authentication)
- [**My ManageIQ OpenID-Connect Authentication Configuration Is Broken**](#my-manageiq-openid-connect-authentication-configuration-is-broken)
  - [**The ManageIQ Login Screen**](#the-manageiq-login-screen)
  - [**State Of The ManageIQ Pods**](#state-of-the-manageiq-pods)
  - [**ManageIQ Orchestrator Pod Log**](#manageiq-orchestrator-pod-log)
  - [**ManageIQ Operator Pod Log**](#manageiq-operator-pod-log)
  - [**ManageIQ HTTPD Pod Log**](#manageiq-httpd-pod-log)
  - [**OpenID-Connect Provider Accessible**](#openid-connect-provider-accessible)
  - [**Capturing User Request Headers**](#capturing-user-request-headers)
  - [**Adjusting Log Level**](#adjusting-log-level)
- [**Reporting Issues**](#reporting-issues)
- [**Known Issues**](#known-issues)

# Configure ManageIQ For OpenID-Connect Authentication
---------------------------------------------------------------------

Currently Containerized ManageIQ only supports the OpenID-Connect authentication configuration.

ManageIQ uses Apache’s <em>mod_auth_openidc</em> module to support OpenID-Connect authentication.
The instructions for configuring Apache’s <em>mod_auth_openidc</em> for ManageIQ differ for the
appliance deployment and the podified (Kubernetes) deployment.

  + The instructions for configuring OpenID-Connect for a ManageIQ appliance can be found here:
    [ManageIQ OpenID-Connect Authentication User Reference](https://www.manageiq.org/docs/reference/latest/auth/openid_connect.html)

  + The instructions for configuring OpenID-Connect for a podifed deployment of ManageIQ can be found here:
    [ManageIQ Operator README](https://github.com/ManageIQ/manageiq-pods/blob/master/manageiq-operator/README.md#configuring-openid-connect-authentication)

# My ManageIQ OpenID-Connect Authentication Configuration Is Broken
---------------------------------------------------------------------

The first thing a user of ManageIQ does is to log in. Therefore if there are any issues with authentication configuration
the user is likely to file an issue that ManageIQ is not usable for them.

Many of the issues reported as ManageIQ authentication problems are not directly related to ManageIQ.
Instead many are rooted in failures with the configuration of the underlying authentication technology.

This blog post attempts to provide some guidelines for troubleshooting Containerized ManageIQ authentication issues.
The guidelines in this blog post are specific to ManageIQ running in Containers (Kubernetes, OpenShift )

The below sections identify key items to check and/or ask the user to gather when reporting Containerized ManageIQ
authentication issues.

## The ManageIQ Login Screen
---------------------------------------------------------------------

**Question** Does the ManageIQ login screen contain the "Log In to Corporate System" button?

If ManageIQ is correctly configured for OpenID-Connect authentication the ManageIQ login
screen will have a blue **Log in to Corporate System** button.

Screenshot showing the ManageIQ login screen with the **Log in to Corporate System** button:
[![Screenshot showing the ManageIQ login screen with the button:](/assets/images/blog/miq_login_with_corp_login.png)](/assets/images/blog/miq_login_with_corp_login.png)

If ManageIQ is not correctly configured for OpenID-Connect authentication the ManageIQ login
screen may be missing the blue **Log in to Corporate System** button.

Screenshot showing the ManageIQ login screen without the **Log in to Corporate System** button:
[![Screenshot showing the ManageIQ login screen without the button:](/assets/images/blog/miq_login_without_corp_login.png)](/assets/images/blog/miq_login_without_corp_login.png)

## State Of The ManageIQ Pods
---------------------------------------------------------------------

**Question** Are all of the ManageIQ pods running?

After the ManageIQ Custom Resource (CR) has been created it may take a while for all the pods to transition to **Running** status.

For instructions on creating the ManageIQ CR see: [ManageIQ Operator README](https://github.com/ManageIQ/manageiq-pods/blob/master/manageiq-operator/README.md#configuring-openid-connect-authentication)

The following example shows how to check the state of the pods in the ManageIQ project.

  ```bash
  $ oc login -u admin -p <pw> https://<my-container-host>/
  $ oc get pods -n my-miq-project

    NAME                                 READY   STATUS    RESTARTS   AGE
    1-event-handler-abcdef1234-12345     1/1     Running   0          22d
    1-event-handler-abcdef1234-12345     1/1     Running   0          22d
    1-generic-abcdef1234-12345           1/1     Running   0          22d
    1-generic-abcdef1234-12345           1/1     Running   0          22d
    1-priority-abcdef1234-12345          1/1     Running   0          22d
    1-priority-abcdef1234-12345          1/1     Running   0          22d
    1-remote-console-abcdef1234-12345    1/1     Running   0          22d
    1-reporting-abcdef123-12345          1/1     Running   0          22d
    1-reporting-abcdef123-12345          1/1     Running   0          22d
    1-schedule-abcdef1234-12345          1/1     Running   0          22d
    1-ui-abcdef1234-12345                1/1     Running   0          22d
    1-web-service-abcdef1234-12345       1/1     Running   0          22d
    httpd-abcdef1234-12345               1/1     Running   0          22d
    manageiq-operator-abcdef1234-12345   1/1     Running   0          22d
    memcached-abcdef1234-12345           1/1     Running   0          22d
    orchestrator-abcdef123-12345         1/1     Running   0          22d
    postgresql-abcdef1234-12345          1/1     Running   0          22d

  ```

  If all of the pods in the ManageIQ project do not transition to **Running** Status something may have failed.

## ManageIQ Orchestrator Pod Log
---------------------------------------------------------------------

**Question** Are there any errors in the Orchestrator pod logs?

Many things could prevent the ManageIQ pods from transitioning to the **Running** status including issues with
the Container infrastructure. 

It is beyond the scope of this document to descibe how to evaluate container infrastructure soundness but that
should be confirmed. After the stability of the container infrastructure has been confirmed check the orchestrator
pod for errors.

The orchestrator pod will log any errors encountered creating the other pods in the ManageIQ deployment.
The following example shows how to check the orchestrator pod's logs.

  ```bash
  $ oc login -u admin -p <pw> https://<my-container-host>/
  $ oc logs orchestrator-abcdef123-12345 -n my-miq-project
  ```

## ManageIQ Operator Pod Log
---------------------------------------------------------------------

**Question** Did the orchestrator pod fail to start?

If the orchestrator pod failed to transition to the *Running* status the
manageiq-operator pod will log any errors encountered creating
the orchestrator pod.

The following example shows how to check the operator pod's logs.

  ```bash
  $ oc login -u admin -p <pw> https://<my-container-host>/
  $ oc logs manageiq-operator-abcdef1234-12345 -n my-miq-project
  ```

## ManageIQ HTTPD Pod Log
---------------------------------------------------------------------

**Question** Are there any errors in the HTTPD pod logs?

When deploying ManageIQ in containers one pod is used to manage the authentication
configuration. This blog post is specific to the OpenID-Connect configuration,
which is implemented using the [mod_auth_openidc](https://github.com/zmartzone/mod_auth_openidc/blob/master/README.md)
Apache module.

The HTTPD pod is used to configure Apache's mod_auth_openidc module.

Therefore the httpd pod's log file may contain errors related to mod_auth_openidc configuration.

The orchestrator pod will log any errors encountered creating the other pods in the ManageIQ deployment.

The following example shows how to check the httpd pod's logs.

  ```bash
  $ oc login -u admin -p <pw> https://<my-container-host>/
  $ oc logs httpd-abcdef123-12345 -n my-miq-project
  ```

## OpenID-Connect Provider Accessible
---------------------------------------------------------------------

**Question** Can user data be obtained from the OpenID-Connect Provider?

ManageIQ has a REST API. There is a blog post that describes how to use the ManageIQ REST API
when configured with OpenID-Connect. 
see: [Using the API with OpenID-Connect Authentication](https://www.manageiq.org/blog/2020/09/oidc-auth-api-usage/)

One of the steps described in this blog post in the **Example: Using a JWT Token** contains an optional
step to do an introspection to the OpenID-Connect provider for a specific user.

The following snippet from the [Using the API with OpenID-Connect Authentication](https://www.manageiq.org/blog/2020/09/oidc-auth-api-usage/) blog post shows the commands that will
directly query the OpenID-Connect Provider for a specific user.

  ```bash
  # Accessing the ManageIQ API with the access_token from a JWT Token

  # Step 1: Request the JWT Token from the OpenID-Connect provider
  jwt_token=$(curl -k -L --user ${user}:${password} -X POST -H "Content-Type: application/x-www-form-urlencoded" -d "grant_type=password" -d "client_id=${oidc_client_id}" -d "client_secret=${oidc_client_secret}" -d "username=${user}" -d "password=${password}" ${oidc_provider_token_endpoint} )

  # Step 2: Retrieve the access_token from the JWT
  access_token=$(echo $jwt_token | jq -r '.access_token')

  # Step 3 (OPTIONAL) Use the access_token to do an introspection to get the details for the user associated with the JWT
  curl -k -L --user ${oidc_client_id}:${oidc_client_secret} -X POST -H "Content-Type: application/x-www-form-urlencoded" -d "token=${access_token}" ${oidc_auth_introspection_endpoint}
  ```

The output from the above introspection *curl* command should look similar to this:

  ```json
  "name": "Bob Youruncle",
  "given_name": "Bob",
  "family_name": "Youruncle",
  "preferred_username": "byouruncle",
  "email": "byouruncle@example.com",
  ...
  "domain": "byouruncle.example.com",
  "groups": [
    "EvmGroup-super_administrator"
  ],
  "username": "byouruncle",
  ```

If an issue is encountered where a specific user is unable to log in it would be valuable to confirm this introspection returns the expected data, when performed for the failing user.

## Capturing User Request Headers
---------------------------------------------------------------------

**Question** Are the user request headers valid?

It is possible to request extra debug output from the ManageIQ authentication code. If enabled, when a user attempts to log in
the user claims returned from Apache's mod-auth-openidc module will be written to the UI pod's log.

To enable the authentication debug data to be logged, first log into the MangeIQ user interface as the **admin** user and access the **Advanced** settings on the configuration page.

Screenshot showing the ManageIQ **Advanced** settings tab
[![Screenshot showing the ManageIQ **Advanced** settings tab:](/assets/images/blog/miq_advanced_settings.png)](/assets/images/blog/miq_advanced_settings.png)

From the **Advanced** settings screen scroll down to the **:authentication:** section and set **:debug:** to **true**

Screenshot showing the :authentication: :debug: set to **true**
[![Screenshot showing the :authentication: :debug: set to **true**](/assets/images/blog/miq_authentication_debug.png)](/assets/images/blog/miq_authentication_debug.png)

Once the **:authentication:** / **:debug:** is to **true** tail the ui pod's log while attempting to authenticate a user.

The following example shows how to check for the user's request headers from the ui pod's logs.

  ```bash
  $ oc login -u admin -p <pw> https://<my-container-host>/
  $ oc logs -f 1-ui-abcdef1234-12345
  _content omitted_
  ... "message":"MIQ(Authenticator::Httpd#log_auth_debug) user_details_from_headers(username=byouruncle)"}
  ... "message":"MIQ(Authenticator::Httpd#log_auth_debug) External-Auth remote user request.headers:"}
  ... "message":"MIQ(Authenticator::Httpd#log_auth_debug)   X-REMOTE-USER            = \"byouruncle\""}
  ... "message":"MIQ(Authenticator::Httpd#log_auth_debug)   X-REMOTE-USER-FIRSTNAME  = \"Bob\""}
  ... "message":"MIQ(Authenticator::Httpd#log_auth_debug)   X-REMOTE-USER-LASTNAME   = \"Youruncle\""}
  ... "message":"MIQ(Authenticator::Httpd#log_auth_debug)   X-REMOTE-USER-FULLNAME   = \"Bob Youruncle\""}
  ... "message":"MIQ(Authenticator::Httpd#log_auth_debug)   X-REMOTE-USER-EMAIL      = \"byouruncle@byouruncle.example.com\""}
  ... "message":"MIQ(Authenticator::Httpd#log_auth_debug)   X-REMOTE-USER-DOMAIN     = \"byouruncle.example.com\""}
  ... "message":"MIQ(Authenticator::Httpd#log_auth_debug)   X-REMOTE-USER-GROUPS     = \"EvmGroup-super_administrator\""}
  ```

## Adjusting Log Level
---------------------------------------------------------------------

To gain additional insight to authentication issues adjust the log level to **debug** on the httpd pod,
which can be done with the following commands:

  + Login

  ```bash
  $ oc login -u admin -p <pw> https://<my-container-host>/
  ```

  + Edit the httpd configmap:

  ```bash
  $ oc edit configmaps/httpd-configs -n my-miq-project
  ``` 

  + This command will open an editor where you can adjust the log level:

  Search for **LogLevel** and change it from: **LogLevel warn** To: **LogLevel debug**, 
  and save the changes.

  + Get the name of the httpd pod

  ```bash
  $ oc get pods -n my-miq-project | grep httpd
    httpd-abcdef1234-12345               1/1     Running   0          22d
  ```

  + Delete this httpd pod, which will result in a new one being created.

  ```bash
  $ oc delete pod httpd-abcdef1234-12345 -n my-miq-project
  ```

  + Within a short time a new httpd pod will be created with the new LogLevel

  ```bash
  $ oc get pods -n my-miq-project | grep httpd
    httpd-abcdef7892-65432               1/1     Running   0          22d
  ```

  + Now the httpd logs will have additinal debug information

  ```bash
  $ oc logs -f httpd-abcdef7892-65432 -n my-miq-project
  ```

# Reporting Issues
---------------------------------------------------------------------

When reporting issues, in addition to the **Questions** presented in the above sections, it is also
helpful to include the contents of the orchestrator log, which can be captured with the following command:

  ```bash
  $ oc login -u admin -p <pw> https://<my-container-host>/
  $ oc logs orchestrator-abcdef123-12345 -n my-miq-project > my_orchestrator_pod.log 2>&1
  ```

If an issue is encountered it is important to capture the logs when the issue is reproduced and not just
the logs from the time ManageIQ was initially deployed. To do this, stream the pods' logs with the -f flag while
the issue is being recreated.


  In one window run these commands to capture the UI pod's logs:
  ```bash
  $ oc login -u admin -p <pw> https://<my-container-host>/
  $ oc logs -f ui-abcdef123-12345 -n my-miq-project > my_ui_pod.log 2>&1
  ```

  In another window run these commands to capture the httpd pod's logs:
  ```bash
  $ oc login -u admin -p <pw> https://<my-container-host>/
  $ oc logs -f httpd-abcdef123-12345 -n my-miq-project > my_httpd_pod.log 2>&1
  ```

  While the above commands are running in separate windows reproduce the authentication issue.
  Then save the output of the commands and include them in the issue report.

  It would also be valuable to capture the Apache OpenID-Connect configuration file in the issue report.

  The following example shows how to capture the Apache OpenID-Connect configuration file.

  ```bash
  $ oc login -u admin -p <pw> https://<my-container-host>/
  $ mkdir tempdir
  $ oc rsync httpd-5656b77789-vjgnm:/etc/httpd/conf.d ./tempdir
  $ ls ./tempdir/conf.d/authentication.conf 
  ```

# Known Issues
---------------------------------------------------------------------

When a user being authenticated belongs to a large number of groups, on the order of hundreds,

see: [OIDC Auth fails with "oidc_cache_set: could NOT store X bytes"](https://github.com/ManageIQ/manageiq/issues/20511)

This issue is resolved by adding the following line to the OpenID-Connect configuration.

  ```
  OIDCCacheShmEntrySizeMax           65536
  ```

Although this has been addressed upstream in ManageIQ by these two PRs, it is worth mentioning here in case
a user is not running the version with this fix.

  - [Add OIDCCacheShmEntrySizeMax parameter #290](https://github.com/ManageIQ/manageiq-appliance/pull/290)
  - [Add OIDCCacheShmEntrySizeMax parameter #618](https://github.com/ManageIQ/manageiq-pods/pull/618)

