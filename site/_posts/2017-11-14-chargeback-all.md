---
title: Chargeback in next release: Charge all the things!
author: lpichler
date: 2017-11-14
tags: tutorials
comments: true
published: true
---

I'm honored that I can announce we successfully intergrated ManageIQ with new chargeback backend. This new backend
lives in [this repository](https://github.com/ManageIQ/manageiq-consumption). It will bring some new possibilities,
performance improvements and different view. Let me mention some highlights:
 
- Another layer of rollups, there is used model DataRollup where is stored metric value for related time range and resource. 
Thanks to that we will not ask to collection of MetricRollups but only one record of DataRollup. This will separate part of metric values and
rating.

- We can easily charge each entity, everything depends on fact how we will populate DataRollup

- Possibility to use multiple price plans

- Improvements in rating to cover user cases - screen, new method of calculation and additions to tiers calculations

## Architecture: Domain Model


## Explanation of models


