---
title: Creating “Mastering CloudForms Automation”
date: 2016-07-12
tags: cloudformsautomate 
author: ConnorJGilchrist
---

In this post, we speak with Peter McGowan, author of Mastering CloudForms Automation, to find out about his interest in CloudForms automation and the process behind bringing his book to reality. You can download an electronic copy of the book from the [Red Hat Customer Portal.] [https://access.redhat.com/mastering-cloudforms-automation] ([Addendum for CloudForms 4.5 & 4.6] [https://manageiq.gitbook.io/mastering-cloudforms-automation-addendum/])

## How did you get started working on CloudForms? ##

I started working with CloudForms shortly after Red Hat acquired ManageIQ, and we re-branded the EVM product as CloudForms 2.0. I was one of the consulting architects who went through the initial internal training to learn about it.

## What sparked your interest in CloudForms automation? ##

I think my real interest in the automation side of CloudForms was sparked from an internal course that I attended, taught by two automate gurus: John Hardy and Brad Ascar from Red Hat. It was an introduction that planted the seeds in my mind of what could be done. I could really see the power of the tool.
That gave me enough knowledge to go and work with the product with some customers, but I soon realised what a huge topic CloudForms automation was, and that the course only really scratched the surface. Getting comfortable with the inner workings of the automate model took months. I’m the sort of person that learns by doing and seeing, so I studied a lot of Ruby code and wrote [object_walker] [https://github.com/pemcg/object_walker] to help me understand how it all works behind the scenes. I also received a lot of help from the CloudForms community and from within Red Hat.

## Why did you undertake the effort of writing a book? ##

At the time I was incredibly frustrated by the lack of tutorial style documentation out there. The official docs are written in a reference style, but I often wished there was a book that would guide me through the steps of doing something in automate, with a lot of code samples.
One of Red Hat’s EMEA consultants, Adrian Bradshaw, wrote a how-to guide for Red Hat Satellite 6 and published it as an open source GitBook. Inspired by his example, I started writing the [CloudForms & ManageIQ Automation How-To Guide] [https://www.gitbook.com/?utm_source=legacy&utm_medium=redirect&utm_campaign=close_legacy] on GitBook to pass on the knowledge that I was learning in the format that I thought was missing. It took around 9 months to complete, and ended up covering about 60 topics. A lot of people contributed code and ideas and I kept learning more and discovering additional topics to investigate and write about, so it just grew organically.

## What was the hardest part of the effort? ##

Definitely the time that it consumed. I wrote the GitBook while I was working in the EMEA Architects team, snatching time in hotels in the evenings, occasional weekends, and on days when I wasn’t working with a customer.
My wife and I went on holiday to a beautiful boutique hotel in Italy last year. I’m much less of a heat-lover than she is, so after having seen the weather forecast and that we were in for a heatwave, I took my laptop. I think I got about 5 chapters written in the beautiful shady Umbrian courtyard that week while my wife was by the pool.
Once we started working on transforming the GitBook into the O’Reilly book, the time pressure shifted into another gear. There were a lot of 12 hour days and long weekends, reformatting and getting things ready for the various publishing deadlines. A big “thank you” goes to my manager for letting me focus on the book exclusively, otherwise it wouldn’t have been possible.

## Why did you focus on Automate? What attracted you to that part of CloudForms? ##

My background has been enterprise systems management for many years, and I’ve always loved scripting, first Perl, and then Python. Learning Ruby was fun, and automate seemed to be one of the most powerful aspects of CloudForms. You can literally automate anything with it.

## What role does Automate play in the overall CloudForms architecture? ##

CloudForms is a web-based application, and there is a huge amount of functionality that is available out-of-the-box via the WebUI. Automate is one of the features that isn’t necessarily front-and-centre in the WebUI, but behind the scenes it does a lot of the work; things like sequencing the steps involved in provisioning a virtual machine for example. It’s also incredibly customisable.

## Who is this book geared toward and how can they best use it? ##

The book is geared towards anyone who wants to understand more about CloudForms automate. This could be just to get an awareness of how the built-in provisioning state machines work, or to learn how to create their own custom automation workflows.
The book is in six parts, with the first part introducing the components, concepts and Ruby objects that we use when creating automation scripts. We literally start by writing “Hello, World!” to the automation log file.
The remaining five parts cover the provisioning of virtual machines and cloud instances; creating service catalogs; the retirement process for VMs and services; the capability of CloudForms automate to integrate with the wider enterprise, and some miscellaneous topics.
I’ve written it as the book that I’d always wished for; there are a lot of code samples, and step-by-step tutorials and screenshots showing how to get things done. Several of the chapters cover some in-depth background information, but I found that this helped in my understanding of how things worked when I was learning, which is why I’ve included them.

## Were there any surprises or interesting things you learned along the way? ##

I’m always pleasantly surprised at how many people now make reference to the original GitBook and say that they find it useful, it makes it all worthwhile. I once saw it mentioned in a job description: “Required skill: an ability to understand Peter McGowan’s Automation Book”. That made me smile.
When I started on the O’Reilly version it was interesting to learn the little details that make the difference between 60-odd vaguely connected brain-dumps on a web site (the original GitBook), and a proper book. Things like introducing concepts, leading the reader on a journey, starting a chapter with a reason for covering this topic, that kind of thing. Brian Anderson from O’Reilly helped me enormously in this regard, and Shiny Kalapurakkel and the production editing team were fantastic in getting the layout right. I also learned that my English needs improving somewhat.
From a technical point of view, the more I’ve discovered about Ruby and Rails, the more I’ve been impressed with it.

## Was there a particular highlight that you’d like to share? ##

I think there are probably three that really spring to mind. I’ve read O’Reilly books for many years, and I have a nice little collection on the bookshelf in my study at home. I hadn’t realised quite what a “look and feel” they have from a layout and font point of view until I compiled my first build in O’Reilly’s Atlas build system. Seeing my words in an instantly recognisable O’Reilly format gave me a big grin from ear to ear that lasted the rest of the day. Then, I think finding out what my animal was going to be was exciting. O’Reilly allocated an animal  for the CloudForms book, it’s a Red Breasted Goose. And finally seeing the book in print for the first time at the Red Hat Summit was amazing. It was a very proud moment!

## How do you feel now that it’s done and published? ##

Exhausted, elated, proud, and hugely thankful to everyone that has helped (a lot of people!)

## What is next for you and for the book? ##

I’ve been working on getting a ManageIQ version of the book ready. Unfortunately, due to the lead-time involved in getting the O’Reilly book written, copyedited, checked and printed, there wasn’t time to include any of the new features that CloudForms 4.1 brings, especially the Ansible Tower integration. I’ve almost finished adapting the book for ManageIQ Capablanca, and once that’s done I’ll work on updating it for CloudForms 4.1 and ManageIQ Darga.
I’d also like to start working on some cookbook-style books, possibly containing automation recipes or CloudForms configuration and deployment guidelines for various scenarios.

## Is there anything else you’d like to add? ##

Writing the book has been a real collaborative effort. It might be my name on the cover, but it was only possible because of the people and fantastic knowledge-sharing culture that we have at Red Hat and the amazing team at O’Reilly. I think of any technical publisher, O’Reilly is the dream aspiration for any budding author. There are too many people to name individually, but to each of you, next time you see me, tap me on the shoulder because I owe you a beer!
  
Share this:
[Twitter] [https://www.redhat.com/en/blog?share=twitter&nb=1]
[Facebook] [https://www.redhat.com/en/blog?share=facebook&nb=1]
