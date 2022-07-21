---
title: Playing with REST API
date: 2018-07-30
tags: cloudforms api rest
author: Imaanpreet Kaur
---

## Overview ##

In this article, I will describe how REST API works natively in Red Hat CloudForms.

REST stands for Representational State Transfer. REST is a web standard based architecture and uses HTTP protocol for data communication. It revolves around resources where every component is a resource and is accessed by a common interface using HTTP standards method.

Red Hat CloudForms provides APIs to integrate external systems and initiate provisioning via CloudForms. In CloudForms, REST can be accessed by adding “/api” prefix to the URL.
  
https:// IP or hostname of appliance/api/

## How to play ##

In order to work with REST APIs, there are various REST API client tools  :

* Internet Browser : Put a REST API call into the browser Address Bar

* CURL :  Command line tool for HTTP client
  
curl -k -u username:password -X GET "Accept: application/json" https:// IP or hostname of appliance/api/

* Insomnia : A powerful REST API client with cookie management, code generation, authentication for Linux, Mac and Window etc.

## HTTP Methods ##

Red Hat CloudForms API uses JSON (Javascript Object Notation Format) for data exchange format.  JSON is a commonly used format for data exchange and storing. The primary or most commonly used HTTP verbs are POST, GET, PUT, PATCH, OPTIONS, HEAD and DELETE. These correspond to create, read, update, delete (or CRUD) operations respectively.  

|Method     |DEFINITION                          |Example (Using CURL)                                                                                                          |
|---------- |------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
|GET        |Return a specific resource          |curl -k -u user:password -X GET “Accept:application/json”                                                                     |
|POST       |Perform an action on the resource   |curl -k –user user:password -i -X POST -H “Accept: application/json” -d ‘ { “type” : “ManageIQ::Providers::Redhat::           |
|           |                                    |InfraManager”, “name” : “RHEVM Provider”, “hostname” : “hostname of provider”, “ipaddress” :“IP”, “credentials” : { “userid”  |
|PUT        |Update or replace a resource        |curl -k –user username:password -i -X PUT -H “Accept: application/json” -d ‘{ “name” : “updated service name” }’              |
|DELETE     |Delete a resource                   |curl -k –user user:password -i -X DELETE -H “Accept: application/json”                                                        |
|OPTIONS    |Get the metadata                    |curl -k –user username:password -X OPTIONS “Accept: application/json”                                                         |
|HEAD       |GET                                 |HEAD method is identical to GET except that the server MUST NOT return a message body in response.This method is often used   |
                                                 |for testing hypertext links for validity, accessibility, and recent modification.                                             |
|PATCH      |Update or modify a resource         |curl -k –user username:password -i -X PATCH -H “Accept: application/json” -d ‘[{ “action”: “edit”, “path”: “name”, "value": "A|
|           |                                    |new Service name” },{ “action”: “add”, “path”: “description”, “value”: “A Description for the new Service” }, { “action”:     |
|           |                                    |“remove”, “path”: “display” } ]'                                                                                              |

## Updating resources ##

As shown in the above table, there are a couple of ways to update attributes in a resource. You can update a resource with PUT or PATCH method. Now, the question is When to use PUT and When PATCH?
  
For Example

“When a client needs to replace an existing Resource entirely, they can use PUT. When they’re doing a partial update, they can use HTTP PATCH.”

For instance, when updating a single field of the Resource, sending the complete Resource representation might be cumbersome and utilizes a lot of unnecessary bandwidth. In such cases, the semantics of PATCH make a lot more sense.
  
How to authenticate REST APIs
REST APIs authentication can be done by two ways :
  
* Basic Authentication : The most simple way to deal with authentication is to use HTTP basic authentication in which the username and password credentials are passed with each HTTP request.

* Token Based Authentication: For multiple API calls to the appliance, it is recommended to use this approach. In this approach, client requests a token for the username and password. Then the token is used instead of username and password for each API call.  
  
Acquiring a Token :

Request:

 curl -k -u user:password -X GET "Accept: application/json" [https://IP/api/auth]

Response:

{"auth_token":"4cb1fb32508350796caf32c12808fee2","token_ttl":600,"expires_on":"2017-12-01T11:25:06Z"}
  
Query with Token

curl -k -i -X GET "Accept: application/json" -H “X-Auth-Token: “token” https:// IP/api/hosts

Delete a Token

curl -k -i -X DELETE -H "Accept: application/json" -H "X-Auth-Token: 21fe54dd14dc89c219d62f651497a54" https:// IP/api/auth

Moreover, the duration of token is about 10 minutes and we can change/modify the duration from CloudForms operational portal by navigating to Configuration -> Server -> Advanced -> api: -> token_ttl

## Query Specification ##

Query specification identifies the controls available when querying collections. While querying, we can specify control attributes in the GET URL as value paris. There are three main techniques comes under query specifications. Let’s take a look on them.
  
Paging : In this capability, there are two attributes available as offset and limit. Offset means first item to return and limit means the number of items to return.

Sorting: In sorting, we can sort the attributes by order , options and attributes. For example: by specifying “sort_by=atr1,atr2” , “sort_order=asc or des”

Filtering:  This helps user to filter the data according to the use case. The syntax for filters is :

filter[]=attribute op value
where op means operators  
  
## Return Codes ##

Success :  200 : OK, 201 : Created, 202 : Accepted, 204 : No content
  
Client Errors: 400 : Bad Request, 401 : Unauthorized, 403 : Forbidden, 404 : Not Found, 415 : Unsupported Media Type
  
Server Errors: 500 : Internal Server error
  
## Troubleshooting  ##

A good place to troubleshoot is to look into standard log files under /var/www/miq/vmdb/log on the CloudForms appliance. All the api related logs are recorded under /var/www/miq/vmdb/log/api.log. In order to dig deeper, changing the level of log is much recommended. You can change the log level by navigating to Configuration → Server → Advanced → :level_api: debug.

## Conclusion ##

I hope after reading this article you will get basic understanding about how CloudForms can be managed via REST API’s. You can find the full Rest API [documentation](<https://access.redhat.com/documentation/en-us/red_hat_cloudforms/4.6/html/red_hat_cloudforms_rest_api/index>) here.
