---
title: Open Source License Change - April 2
author: chessbyte
date: 2016-04-01 15:42:00 UTC
tags: announcements
comments: true
published: true
---

When ManageIQ was open-sourced in June 2014, the project was carrying some bits that made it necessary to dual-license as GPL and Apache License.  The intention was always to be single-licensed under the Apache license.

With the merging of [PR 7481](https://github.com/ManageIQ/manageiq/pull/7481) and [PR 7629](https://github.com/ManageIQ/manageiq/pull/7629), ManageIQ has transitioned to use the Apache License exclusively.  We have chosen the Apache License for a number of reasons.

We could have chosen a number of other popular open source licenses, such as the GPL; however, the Apache License 2.0 currently enjoys widest acceptance among the businesses and organizations that we anticipate will be interested in using and contributing to ManageIQ.  Part of that popularity is due to the minimal legal friction associated with the Apache License.  We want there to be as few barriers to adopting ManageIQ as possible.

Permissive open source licenses are also popular in the Ruby and Ruby on Rails communities (although the MIT license is more commonly used than the Apache License).  It is possible that some of the code in ManageIQ may be of general interest to these project ecosystems, and developers coming from those communities, who will tend to share such license preferences, are a potential source of contributors to ManageIQ.

The Apache License has certain advantages over the MIT license, especially from the perspective of corporate users and contributors, mainly because of its explicitness around grants of patent rights.  We wish users of ManageIQ to have the assurances embodied in the patent license provision of the Apache License.  We think the Apache License may be better suited than the MIT license to a project of ManageIQ's scope.

When a large project emerges from a previously-proprietary codebase of a single company, as is true of ManageIQ, a permissive license like the Apache License helps build trust and confidence among potential users and contributors.  In essence, it sends a strong signal that the original corporate author is not reserving any special legal privileges; all existing and potential community members enjoy equal status from a legal perspective.

Finally, the Apache License is the license of certain important open source projects having significant points of connection with ManageIQ, such as OpenStack.  When we originally open-sourced ManageIQ and settled on the Apache License, we were particularly inspired by OpenStack's license choice.

Special thanks to Richard Fontana for helping with the licensing pull requests and the content of this blog post.
