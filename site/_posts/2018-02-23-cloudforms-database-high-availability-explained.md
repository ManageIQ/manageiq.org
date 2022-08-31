---
title: CloudForms Database High Availability Explained 
date: 2018-02-23
tags: cloudforms HA
author: Giovanni Fontana
---

In this article, we describe how High Availability (HA) works natively in Red Hat CloudForms. The
mechanism uses PostgreSQL feature, and does not require external tools like Virtual IP (VIP),
HAProxy, or Load Balancer. We will use a two-node active/passive architecture as an example to
investigate what is happening when failover occurs.

The following diagram describes our setup.

In this architecture, server A is the primary VMDB, server B is the standby, and C1 to C4 are
workers connected to server A database. The CloudForms HA mechanism is based on two elements:
repmgr and evm failover monitor.

The repmgr tool (see (<https://repmgr.org/>)) runs on both VMDB appliances to keep the databases
synchronized.

The evm-failover-monitor tool runs on all workers and identifies when the primary VMDB is down to
point workers to the standby VMDB.

Let’s simulate a failure on our primary database.

Repmgr tool in server B identifies that server A is down and promotes itself as primary VMDB.

The evm-failover-monitor services, running on worker appliances C1 to C4, notice that server A is
down and that standby server B was promoted. evm-failover-monitor reconfigures each worker’s
database setup by modifying their configuration file database.yml to point to the new primary
server B.

Server B is now our primary database. Server A needs to be manually reintroduced to the cluster as
the standby vmdb.

Additional details on HA deployment procedures and configuration can be found on the Red Hat
CloudForms High Availability Guide.

## Conclusion ##

The Red Hat CloudForms database high availability feature explained in this article is
active/passive. The solution uses simple tools, is easy to configure, and is cost effective (as
opposed to solutions using HAProxy, VIP, keepalived, etc).

Being active/passive means that we might observe few seconds of unavailability (*) while repmgr and
evm-failover-monitor tools detect the primary vmdb failure and promote the standby vmdb as primary.
This minor downtime is acceptable in most cases.

(*) The frequency with which CloudForms checks for database failover can be configured in the
vmdb/config/ha_admin.yml configuration file.
