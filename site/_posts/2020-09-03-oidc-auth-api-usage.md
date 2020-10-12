---
title: "Using the API with OpenID-Connect Authentication"
author: jvlcek
date: 2020-09-03
comments: true
published: true
tags: tutorials
---

The goal of this blog post is to provide a basic understanding of how to use the ManageIQ REST API when configured with OpenID-Connect authentication.

All the content in this blog post is only relevant when ManageIQ is configured for OpenID-Connect Authentication.

**Contents:**
---------------------------------------------------------------------

- [**Configure ManageIQ For OpenID-Connect Authentication**](#configure-manageiq-for-openid-connect-authentication)
- [**Using The ManageIQ REST API**](#using-the-manageiq-rest-api)
- [**The OpenID-Connect REST API Authentication Modes**](#the-openid-connect-rest-api-authentication-modes)
- [**Examples**](#examples)
  - [Example Variables](#example-variables)
  - [Example Using a JWT Token](#example-using-a-jwt-token)
  - [Example Using a ManageIQ API Auth Token](#example-using-a-manageiq-api-auth-token)
  - [Example Using Basic Auth For Admin](#example-using-basic-auth-for-admin)

# Configure ManageIQ For OpenID-Connect Authentication
---------------------------------------------------------------------

ManageIQ uses Apache’s <em>mod_auth_openidc</em> module to support OpenID-Connect authentication.
The instructions for configuring Apache’s <em>mod_auth_openidc</em> for ManageIQ differ for the
appliance deployment and the podified (Kubernetes) deployment.

  + The instructions for configuring OpenID-Connect for a ManageIQ appliance can be found here:
    [ManageIQ OpenID-Connect Authentication User Reference](https://www.manageiq.org/docs/reference/latest/auth/openid_connect.html)

  + The instructions for configuring OpenID-Connect for a podifed deployment of ManageIQ can be found here:
    [ManageIQ Operator README](https://github.com/ManageIQ/manageiq-pods/blob/master/manageiq-operator/README.md#configuring-openid-connect-authentication)

# Using The ManageIQ REST API
---------------------------------------------------------------------

Please see the [ManageIQ REST API documentation](https://www.manageiq.org/docs/api) for an overview
and detailed reference.

# The OpenID-Connect REST API Authentication Modes
---------------------------------------------------------------------

When configured for OpenID-Connect there are three different authentication modes:

  + A Java Web Token (JWT) obtained from the OpenID-Connect provider for a non-admin user.
  + A ManageIQ API Auth Token for a non-admin user.
    A JWT is required to obtain the ManageIQ API Auth Token but performance is improved using the ManageIQ API Auth Token for consecutive API requests
  + Basic authentication, username:password format, is only supported for the *admin*  user.

# Examples
---------------------------------------------------------------------

The below examples are BASH(1) shell script commands. They assume the
*JQ(1)*  <em>Command-line JSON processor</em> is available, the client
has been created in Keycloak with the realm name miq 

## Example Variables
---------------------------------------------------------------------

The following variables must be defined for each of the examples:

```bash
# The user to be authenticated
user="user1"

# The password for the user being authenticated
password="user1s_password"

# The password for the admin user
admin_password="admins_password"

# The ManageIQ server name. ServerName from the config file without the https:// prefix
miq_server_name="my-miq.example.com"

# OIDCClientSecret from the OpenID-Connect configuration.
oidc_client_secret="12345678-1234-1234-1234-01234567abcd"

# OIDCClientID from the OpenID-Connect configuration.
oidc_client_id="my-oidc-client"

```

Each OpenID-Connect Provider defines its own endpoints for token generation and introspection. Consequently
the value of these variables depend on the OpenID-Connect Provider being used.

**Example for IBM's Identity Access Management (IAM):**

> Given this configuration:
> ```bash
> OIDCOAuthIntrospectionEndpoint https://cp-console.apps.iam.example.com/idprovider/v1/auth/introspect
> OIDCProviderTokenEndpoint      https://cp-console.apps.iam.example.com/idprovider/v1/auth/token
> ```
>
> Then **oidc_auth_introspection_endpoint** and **oidc_provider_token_endpoint** will be:
> ```bash
> oidc_auth_introspection_endpoint="https://cp-console.apps.iam.example.com/idprovider/v1/auth/introspect"
> oidc_provider_token_endpoint="https://cp-console.apps.iam.example.com/idprovider/v1/auth/identitytoken"
> ```

**Example for Keycloak:**

> Given this configuration:
> ```bash
> OIDCOAuthIntrospectionEndpoint https://keycloak.example.com/auth/realms/miq/protocol/openid-connect/token/introspect 
> ```
> 
> Then **oidc_auth_introspection_endpoint** and **oidc_provider_token_endpoint** will be:
> ```bash
> oidc_auth_introspection_endpoint="https://keycloak.example.com/auth/realms/miq/protocol/openid-connect/token/introspect"
> oidc_provider_token_endpoint="https://keycloak.example.com/auth/realms/miq/protocol/openid-connect/token/"
> ```

## Example Using a JWT Token
---------------------------------------------------------------------

This example details the steps for using a Java Web Token (JWT) obtained from the OpenID-Connect provider for a non-admin user.

The steps are:
1. Request the JWT Token from the OpenID-Connect provider
1. Retrieve the access_token from the JWT
1. (OPTIONAL) Use the access_token to do an introspection to get the details for the user associated with the JWT
1. Accessing MiQ API using the access_token in the header

The bash example commands:

```bash
# Accessing the ManageIQ API with the access_token from a JWT Token

   # Step 1: Request the JWT Token from the OpenID-Connect provider
   jwt_token=$(curl -k -L -X POST -H "Content-Type: application/x-www-form-urlencoded" -d "grant_type=password" -d "client_id=${oidc_client_id}" -d "client_secret=${oidc_client_secret}" -d "username=${user}" -d "password=${password}" -d "scope=openid" ${oidc_provider_token_endpoint} )

   # Step 2: Retrieve the access_token from the JWT
   access_token=$(echo $jwt_token | jq -r '.access_token')

   # Step 3 (OPTIONAL) Use the access_token to do an introspection to get the details for the user associated with the JWT
   curl -k -L --user ${oidc_client_id}:${oidc_client_secret} -X POST -H "Content-Type: application/x-www-form-urlencoded" -d "token=${access_token}" ${oidc_auth_introspection_endpoint} | jq

   # Step 4: Accessing MiQ API using the access_token in the header
   curl -L -vvv -k -X GET -H "Authorization: Bearer ${access_token}" https://${miq_server_name}/api/users | jq
```


## Example: Using a ManageIQ API Auth Token
---------------------------------------------------------------------

This example details the steps for using a ManageIQ API Auth Token for a non-admin user.

The steps are:
1. Request the JWT Token from the OpenID-Connect provider
1. Retrieve the access_token from the JWT
1. Request an MiQ API Authentication Token using the access_token in the header:
1. Retrieve the API authentication token from the result
1. Accessing MiQ API Using the MiQ API Auth Token

The bash example commands:

```bash
# Accessing the ManageIQ API using a ManageIQ API Auth Token

   # Step 1: Request the JWT Token from the OpenID-Connect provider
   jwt_token=$(curl -k -L -X POST -H "Content-Type: application/x-www-form-urlencoded" -d "grant_type=password" -d "client_id=${oidc_client_id}" -d "client_secret=${oidc_client_secret}" -d "username=${user}" -d "password=${password}" -d "scope=openid" ${oidc_provider_token_endpoint} )

   # Step 2: Retrieve the access_token from the JWT
   access_token=$(echo $jwt_token | jq -r '.access_token')

   # Step 3: Request an MiQ API Authentication Token:
   result=$(curl -L -vvv -k -X GET -H "Authorization: Bearer ${access_token}" https://${miq_server_name}/api/auth)

   # Step 4: Retrieve the API authentication token from the result
   api_auth_token=`echo $result | jq -r '.auth_token'`

   # Step 5: Accessing MiQ API Using the MiQ API Auth Token:
   curl -L -vvv -k -X GET  -H "Accept: application/json" -H "X-Auth-Token: ${api_auth_token}" https://${miq_server_name}/api/users | jq

```

## Example Using Basic Auth For Admin
---------------------------------------------------------------------

The ManageIQ OpenID-Connect is configured to treat the admin user as a special case.
The admin user is not authenticated by the OpenID-Connect provider. 

More examples of basic and token based auth in the API can be found in the [REST API Authentication Documentation]( https://www.manageiq.org/docs/reference/latest/api/overview/auth.html)
Keep in mind that, when configured for OpenID-Connect authentication, the admin user is the only user where basic authentication is supported.


The bash example command:

```bash
# Accessing the MiQ API Using basic admin:password

  # Using basic authentication for the admin user.
   curl -L -vvv -k --user admin:${admin_password} -X GET -H 'Accept: application/json' https://${miq_server_name}/api/users | jq
```


