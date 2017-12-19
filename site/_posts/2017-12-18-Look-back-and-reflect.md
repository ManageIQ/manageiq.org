---
title: "Last Week in ManageIQ: 2017: Rear-View Mirror Reflections"
author: AparnaKarve
date: 2017-12-18
comments: true
published: true
tags: LWIMIQ
---

HELLO Folks! [Aparna](https://github.com/AparnaKarve) here with a special year-end edition for the 'Last Week in ManageIQ'.  Strap on your seat belts as we get into the time portal machine and review what made 2017 special.


## The Great Split

About a year ago, the UI team delivered 'Hallelujah' moments  by doing a successful split of the UI Classic repository from the unwieldy ManageIQ repository to give birth to the new [ManageIQ/manageiq-ui-classic](https://github.com/ManageIQ/manageiq-ui-classic) repository. Pretty soon, other repositories followed suit and were separated out from the monolith. We have close to 25 modular repositories today, that are our way of life. With this 'Separation of concerns' implementation, life is a lot easier for issue isolation and overall debug (Hallelujah!)


## APIs – 'Must-Have' for UI Forms  

The REST API based UI forms for the CRUD operations have delivered manageable and elegant code. 
Newer APIs get added regularly making the [ManageIQ/manageiq-api](https://github.com/ManageIQ/manageiq-api) repository, a rich collection of APIs capable of handling a multitude of tasks. It's a Win-Win.


## The CodeClimate Factor

Good Behavior (clean-ups, removing duplications, checking for re-factors) is inherently promoted with the deployment of CodeClimate in most of our repositories -- and good behavior always leads to more goodies (and not a lump of coal) in our Christmas Stocking!  (T’is the season to be Jolly after all)


## Winds of Change - The Re-Architecture Effort 

"To improve is to change; to be perfect is to change often." –- Sir Winston Churchill

The cornerstone of 2017 probably is the transformation of the ManageIQ Architecture – the labor of love over the summer of 2017 – driven by the desire to improve scalability and performance. In case you have not done so, highly suggest reading [this article](http://manageiq.org/blog/2017/10/h-release-rearchitecture/) by [Jason Frey](https://github.com/Fryguy) – nice job walking through the re-architecture process. Upon completion, we will be quite familiar with OpenShift/Kubernetes along with a smattering of buzz words like [Kafka](https://kafka.apache.org/) and [ActiveMQ Artemis](https://activemq.apache.org/artemis/) - more good things and noticeable performance improvements by the time we transition to the I-Release -- A journey of thousand miles starts with the first step – and we have had a great start thus far..

Meanwhile, the UI team has also been embracing change and moving toward UI pluggability.  

[This PR](https://github.com/ManageIQ/manageiq-ui-classic/pull/2504) that is currently in the works lays the foundation for [Redux](https://redux.js.org/) in the Classic UI.  Looking forward to welcoming [Redux](https://redux.js.org/) as one of our mainstream front-end technologies being leveraged effectively in the Classic UI


## And now...for the Showstopper event... (drum roll here!) 

`Fine` released in May 2017 and `Gaprindashvili` -- scheduled for a GA release early next year.



Looking ahead, heads down on fixing Gaprindashvli bugs but an eye toward the next Release - code named H-Release or the [Hammer](https://en.wikipedia.org/wiki/Jon_Ludvig_Hammer) Release due for 2018 -  big push on architecture improvements and a vehicle to pull the curtain down on today’s issues.


To wrap up, we should feel really good about what we have accomplished this year – we totally deserve that extra slice of cake or the decadent chocolate cookie this holiday season as we curl our feet up by the fire, drink hot cocoa and soak in the much needed R&R – 2018 is going to be even bigger and better – Happy Holidays and a Happy New Year!

