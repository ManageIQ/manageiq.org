---
title: Announcing Fine-4
author: jprause
date: 2017-10-25 08:35:39 UTC
comments: true
published: true
tags: releases announcements
---

We've just built Fine-4. This release contains bug fixes, UI tweaks, and stabilization.

Here are just a few of the things added since Fine-3 release:
- ADDED
  * Automate: Add missing service model change for calculating active quota counts for Service requests.
  * Providers: Add additional logging into the websocket proxy for easier debugging.
  * Services: Add group in manageiq payload for ansible automation.

- FIXED 
  * Authentication: Normalize the username entered at login to lowercase
  * Chargeback: Delete tag assignments when deleting a tag that is referenced in an assignment 
  * Providers: Choose build pod by name AND namespace
  * RBAC: Move rule for network manager to belongsto filter
  * REST API: Use correct identifier for VM Retirement
  * User Interface: Fix for custom button not passing target object to dynamic dialog fields

You can download the Fine-4 release [here](http://manageiq.org/download/).

Here is the complete changelog:
[Fine-4](https://github.com/ManageIQ/manageiq/blob/fine/CHANGELOG.md)

For questions or support,
[join in on the talk page](http://talk.manageiq.org/).
