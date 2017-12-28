---
title: "Hawkular Alerts in ManageIQ"
author: israel-hdez
date: 2017-10-20
comments: true
published: true
tags: tutorials
---

_**Note:** Hawkular was deprecated as of December 18th, 2017. New releases of
ManageIQ won't include support for Hawkular as a Middleware Provider._

Hello! This is [Edgar][IsraelHdez] from the Middleware team. This is my first
time writing in the ManageIQ blog. Nevertheless, I hope you'll enjoy this post
explaining the basics of the alerting integration between ManageIQ and Hawkular.

Probably, you've already seen the _Middleware_ entry in the main menu of
ManageIQ. This is where you can manage _servers_ in ManageIQ. In the
_Middleware_ context, a _server_ is the software providing a service or serving
applications. Like other parts of ManageIQ, _Middleware_ features are made
available through providers.

At the time of writing, [Hawkular][Hawkular] is the only available provider and
the supported servers are [WildFly][Wildfly] and its downstream product [JBoss
EAP][EAPWeb]. In the future, the list of supported servers is expected to grow.

Hawkular project includes its own alerting module that can be used to send
notifications when certain conditions are met. The alerting module is bundled
in Hawkular Middleware Manager (aka. Hawkular Services)

ManageIQ also has alerting capabilities and Hawkular Middleware Manager
integrates to it. Once Hawkular is added as a provider, ManageIQ alerting
features can be used to monitor servers managed by Hawkular.

I'm assuming that you already have added a Hawkular provider in ManageIQ (i.e
you know how to setup a Hawkular Middleware Manager instance and connect it to
ManageIQ). So, let's move directly to the alerting matter and start explaining
some concepts.

## ManageIQ alerting terminology

In ManageIQ, two terms are used:

Alert
: Defines the which type of infrastructure item should be monitored, the
conditions and the actions to take when the conditions are met.

Alert profile
: It is a relation between a set of alerts and a set of
infrastructure items. The set of alerts in the profile will all be applied to
the set of infrastructure items. If any of the infrastructure items met the
conditions in one of the alerts, the actions of the alert will run.

Remember that Hawkular, as a Middleware provider, will only support features
related to middleware infrastructure items, but ManageIQ has support for
other types of infrastructure items.

## Hawkular alerting terminology

Hawkular's alerting module has several kinds of objects (and terms). The two
objects that are relevant from a ManageIQ perspective are:

Group trigger
: Defines the set of conditions that should be met to fire an
alert or an event. A group trigger is a template and no alert nor events will
be fired until a member is added to it.

Group member
: It's an association of a group trigger with the actual data to be
evaluated. Internally to Hawkular, group members are managed instances of group
triggers. Changes to the group trigger are pushed down to the members.

An implementation note: currently, ManageIQ creates group triggers that raise
Hawkular events (not alerts) and polls Hawkular to catch the events and run
ManageIQ configured actions, if needed.

## Terminology relationships

When a user creates a ManageIQ alert, a Hawkular group trigger is created in
the background. From then, any changes to the ManageIQ alert are replicated to
the associated Hawkular group trigger until the alert is deleted, which causes
the group trigger to also be deleted.

While ManageIQ alerts have a direct relation with Hawkular group triggers,
ManageIQ alert profiles are a little bit more complicated. For each alert in a
ManageIQ profile, one Hawkular group member is created for each infrastructure
item in the profile.

This means that nothing is created in Hawkular if:

* The alert profile is empty (has no alerts nor infrastructure items)
* The alert profile has alerts but has no infrastructure items
* The alert profile has infrastructure items but has no alerts

If a ManageIQ alert profile has one alert and has assigned multiple
infrastructure items, then the relevant Hawkular group trigger will have as
many members as infrastructure items are in the ManageIQ alert profile.

![Mapping of a ManageIQ alert profile with one alert and three infrastructure items][OneAlertRelationship]

If a ManageIQ alert profile has multiple alerts and has assigned only one
infrastructure item, then each Hawkular group trigger will have one member.

![Mapping of a ManageIQ alert profile with three alerts and one infrastructure item][ThreeAlertsRelationship]

With these two examples, you should be able to guess what will happen if the
ManageIQ alert profile has a set of alerts and a set of infrastructure items.

## Creating ManageIQ alerts

Alerts are created by navigating to _Control > Explorer > Alerts_. In the alerts
tree, select the _All alerts_ folder. This will enable the _Add a New Alert_ option
under the _Configuration_ button.

![Create new ManageIQ alert][CreateAlert]{:.large_img}

In the form to create/edit an alert, be sure to select _Middleware server_ in
the _Based On_ field. Currently, this is the only infrastructure item supported
by Hawkular provider for alerting purposes. If you choose something else, the alert
won't be managed by Hawkular.  All other options can be filled as desired.

![Form to create new ManageIQ alert][NewAlertForm]

When the alert is created, it will be available in the control explorer and
will be available to be included in an alert profile. In the background, a
Hawkular group trigger is also created.

## Creating an alert profile

Alert profiles are created by navigating to _Control > Explorer > Alert
Profiles_. In the alerts tree, select the _Middleware server Alert Profiles_ item.
This will enable the _Add a Middleware Server Alert Profile_ option under the
_Configuration_ button.

![Create new ManageIQ alert profile][CreateAlertProfile]{:.large_img}

In the form to create/edit an alert profile, write a description and select the
desired alerts to evaluate. At least, one alert is required to be able to
create the alert profile.

![Form to create new ManageIQ alert profile][NewAlertProfileForm]

When the alert profile is created, it will be available in the control explorer
which will also list the alerts contained in the profile. Nothing will be
created in Hawkular because when the profile is created it is still not
assigned to middleware servers.

## Assigning middleware servers to an alert profile

To assign middleware servers to an alert profile, select the desired profile in
the control explorer. In the toolbar, use the _Edit assignments for this Alert
Profile_ options under the _Configuration_ button.

![ManageIQ edit assignments option for alert profiles][EditAssignmentsButton]

This will show the assignments page. An alert profile can be assigned to
specific middleware servers or to all inventoried middleware servers (The
Enterprise).

![ManageIQ edit assignments screen for alert profiles][EditAssignmentsScreen]

Once you have chosen the desired middleware servers (or the enterprise) and
changes are saved, the view page of the alert will be displayed again.

In the background, Hawkular group members will be created to make effective the
configuration and alerts should start triggering.

## Viewing alerts in the timeline

The timeline of ManageIQ Hawkular provider will log events if the configuration
of an alert is enabled to show timeline events.  Hawkular’s provider timeline
can be accessed through the summary page of the provider, under the _Monitoring_
menu:

![ManageIQ Hawkular provider timeline menu button][TimelineButton]{:.large_img}

If the alert has enabled the standard _Show on Timeline_ configuration, the
options to query the events are:

* Event type: Management Events
* Category: Alarm/Status Change/Errors

![Hawkular timeline alerts][Timeline]{:.large_img}

## Conclusion

ManageIQ and Hawkular, albeit being two independent projects, they can be
connected together to complement each other features. In this post is discussed
how the alerting integration works and how to configure a basic alert.

At the time of writing, ManageIQ supports only _Middleware Servers_ as targets
and, also, only a limited set of metrics is available to configure alerts.
There is ongoing work to provide a wider range of metrics and this is expected
to be available in following versions.

_This post was originally published on the [Hawkular Blog][HBlog] on 11 October 2017._

[IsraelHdez]: https://github.com/israel-hdez
[Hawkular]: http://www.hawkular.org/
[Wildfly]: http://wildfly.org/
[EAPWeb]: https://www.redhat.com/en/technologies/jboss-middleware/application-platform
[OneAlertRelationship]: http://www.hawkular.org/img/blog/2017/miq-hawkular-one-alert-three-inf-items.png
[ThreeAlertsRelationship]: http://www.hawkular.org/img/blog/2017/miq-hawkular-three-alerts-one-inf-item.png
[CreateAlert]: http://www.hawkular.org/img/blog/2017/2017-10-11-miq-create-alert.png
[NewAlertForm]: http://www.hawkular.org/img/blog/2017/2017-10-11-miq-create-alert-form.png
[CreateAlertProfile]: http://www.hawkular.org/img/blog/2017/2017-10-11-miq-create-alert-profile.png
[NewAlertProfileForm]: http://www.hawkular.org/img/blog/2017/2017-10-11-miq-create-alert-profile-form.png
[EditAssignmentsButton]: http://www.hawkular.org/img/blog/2017/2017-10-11-miq-alert-profile-assignments-button.png
[EditAssignmentsScreen]: http://www.hawkular.org/img/blog/2017/2017-10-11-miq-alert-profile-edit-assignments-screen.png
[TimelineButton]: http://www.hawkular.org/img/blog/2017/2017-10-11-miq-hawkular-summary-timeline-button.png
[Timeline]: http://www.hawkular.org/img/blog/2017/2017-10-11-miq-hawkular-timeline-alerts.png
[HBlog]: http://www.hawkular.org/blog/2017/10/alerts-in-manageiq.html
