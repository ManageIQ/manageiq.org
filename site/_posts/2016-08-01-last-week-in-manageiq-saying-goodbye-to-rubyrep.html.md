---
title: 'Last Week in ManageIQ: Saying Goodbye to rubyrep'
author: syncrou
date: '2016-08-01 16:19:55 UTC'
tags: LWIMIQ
comments: true
published: true
---

Hello! [Drew](http://github.com/syncrou) here, 

I'm taking a breather from [provisioning](https://gitter.im/ManageIQ#provisioning) land to chat briefly with everyone about the
[community](https://github.com/ManageIQ/manageiq/graphs/contributors) accomplishments during an extremely active [*Last Week in ManageIQ*][PRs merged last week].


## Featured

On July 27 2016 we bid adieu to the final vestiges of [rubyrep](https://rubygems.org/gems/rubyrep) 
and now rely solely on [pglogical](https://github.com/2ndQuadrant/pglogical) to handle all of our replication needs.
[#9696](https://github.com/ManageIQ/manageiq/pull/9696) closed out a chapter and started a new book.
In this story all the people are singing! [Happiness and smiles abound](http://giphy.com/gifs/silicon-valley-3o6EhWeei7wsp2jc1G/tile), balloons and confetti are ...
Well, at least a lot less people are losing sleep at night!
Making the move from rubyrep to pglogical was a giant undertaking. A very huge thank-you to everyone involved!

## Improved

### [Allow for service templates to have multiple VM's](https://github.com/ManageIQ/manageiq/pull/8515)

When setting `option_1_number_of_vms` in a service dialog we would only provision 1 virtual machine
regardless of the value passed in.
This improvement reads the `number_of_vms` and exposes that change in the following 4 areas:

*Provision Request*

*Single Service Item Dialog*

*Service Bundle Dialog*

*Default: Allowing a single vm under a service*

### [Applying RBAC search to Automate Simulation](https://github.com/ManageIQ/manageiq/pull/10060)

The Automate Simulation tool includes two dropdowns `Type` and `Selection` in the Object Attribute panel.
The populated data used to allow a full object selection regardless of who was logged in.
This change locks the list down via RBAC and only shows the user what they are allowed to see.

## Fixed

### [Moved trees on group summary and editor out of session hash](https://github.com/ManageIQ/manageiq/pull/10099)

The existence of trees in the session was causing errors when a user had a large number of tags in their environment.
This fix pulls three trees from the Group Summary screen out of session and stores the data in instance variables.


### [Only migrate rows in the current region](https://github.com/ManageIQ/manageiq/pull/10124)

We found an issue with replication when rows which belonged to a region were migrated.
The join table received an id in the global region when it should have had a remote region
id assigned.

`cloud_subnets_network_ports` prior to the change:

```
vmdb_production=# select * from cloud_subnets_network_ports;
       id       | cloud_subnet_id | network_port_id | address 
----------------+-----------------+-----------------+---------
 99000000000001 |               2 |               1 |        |
 99000000000002 |               3 |               2 |        |
 99000000000003 |               3 |               3 |        |
 99000000000004 |               3 |               4 |        |
 99000000000005 |               3 |               5 |        |
```

The same table after the change:

```
vmdb_production=# select * from cloud_subnets_network_ports;
 id | cloud_subnet_id | network_port_id |    address     
----+-----------------+-----------------+----------------
  1 |               2 |               1 | 192.0.2.1     |
  2 |               3 |               2 | 192.0.2.2     |
  3 |               3 |               3 | 192.0.2.3     |
  4 |               3 |               4 | 192.0.2.4     |
  5 |               3 |               5 | 192.0.2.5     |
```

## New

### [Expose generic object and definition to automate](https://github.com/ManageIQ/manageiq/pull/9861)

New automate models for `GenericObjectDefinition` and `GenericObject` have been added.

### [Create a bundle service template and attach to blueprint](https://github.com/ManageIQ/manageiq/pull/9854)

Part of the Blueprint feature.  This PR builds a new method `create_bundle` in the `Blueprint` class.
It creates a bundle service template and places all copied item templates underneath it. All of these items are part
of a single Blueprint.

## Deleted

### [These files should not be executable](https://github.com/ManageIQ/manageiq/pull/10068)

Less about 'deletions' and more about security. This fix turned off the executable `0755` permission for 78 files!

### [MiqPolicyController - remove dead policy_options and cat_pressed](https://github.com/ManageIQ/manageiq/pull/10112)

The method `policy_options` was only used on vms and not for policies as the name implied. It also called the 
previously removed `build_policy_tree`.  Due to the above the method was removed.
`cat_pressed` is no longer used anywhere in the codebase and was [happily](https://github.com/himdel) removed!

## Wrapping up

Of the [103][PRs merged last week] PRs merged last week, I obviously only presented a small sampling. Look out for the next installment of *Last Week in ManageIQ!*

[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%222016-07-25+..+2016-07-31%22+sort%3Acreated-desc&utf8=%E2%9C%93
