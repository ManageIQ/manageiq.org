---     
title: Posting CloudForms Notifications to Slack
date: 2017-04-12
tags: cloudformscloudforms slack
author: Nick Catling
---

Keeping the whole IT team informed about events or actions in your IT infrastructure can be challenging. Many IT teams have turned to team messaging applications, like Slack, to improve internal team communications. CloudForms, with its flexible integration capabilities, can be connected to Slack to notify the team whenever important events happen.

The Event Switchboard in CloudForms exposes provider events to Automate, allowing automation based on any events. In this example, we will post Slack messages to a team channel whenever Kubernetes events are raised.

## Slack Webhook and Ruby Gem ##

In order to post messages to Slack, we first need a [webhook](<https://api.slack.com/messaging/webhooks>) and the associated access token, which is created via a [Slack Button](<https://api.slack.com/docs/slack-button)>. During this process, the CloudForms-bot user account will be given the proper permissions to post messages. Next, we need client side code to interface to Slack. In this case, there is the [slack-ruby-client] (<https://rubygems.org/gems/slack-ruby-client>) which will need to be installed on the appliance, along with any prerequisites. \

#gem install slack-ruby-client

## Reading the Event Stream and Posting a Message ##

The present event data is contained within the event_stream object and can be read easily, for example:

event_stream = $evm.root['event_stream']
data = event_stream.full_data

p data[:event_type]
p data[:timestamp]
p data[:message]

Configuring CloudForms to post an event to Slack involves writing up a short ruby method to interface with Slack and then connecting that method to the events we would like posted. The channel we are posting to is defined in the calling method. Here is an [example method](<https://github.com/supernoodz/CloudForms/blob/master/Automate/Integration/Slack/Methods.class/__methods__/post_emsevent.rb>) used to connect CloudForms to Slack.

Next, we need to call this method whenever an event is triggered. To do this, we update the schema to invoke it for all events. In Automate explorer, navigate to the ‘Kubernetes’ Class, edit the Schema and add a relationship value to call the new method, ‘rel1’ in the example below.

## Results ##

Now CloudForms posts a message to the team Slack channel whenever an event is triggered.

This is just one example of how CloudForms can be integrated into IT notification systems. Other examples could include raising SNMP traps, sending emails or creating ServiceNow records based on events.
