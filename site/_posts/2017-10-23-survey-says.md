---
title: "Last Week in ManageIQ: Survey Says"
author: jprause
date: 2017-10-23
comments: true
published: true
tags: LWIMIQ
---

Hi all,...[John Prause][jprause] here. Last Week in ManageIQ, we reviewed the responses provided by our community users to a survey with five questions. The questions were as follows:
  - How satisfied are you with the look and feel of the ManageIQ user interface?
  - What are the challenges you face when getting started with ManageIQ?
  - Do you attend the ManageIQ Sprint Reviews held every two weeks?
  - Do you know how to contribute to the ManageIQ open source project?
  - Is there anything else you’d like to share about ManageIQ?

We had 38 people respond, and the comments and suggestions were very detailed and extremely helpful. We condensed the responses down to the Top 4 issues and our response:
  - **Performance** - This is something our team is constantly working on, as all software developers should be. We see this as a journey that should never end, should be constantly tested, and should be constantly reviewed. As such, Jason Frey (aka [Fryguy][fry]) recently posted a blog article regarding the [H-Release Rearchitecture][hrelease]. In this article you'll find that (as he says); _**The primary reason**_ for the rearchitecture _**was due to an increasing number of customer escalations**_ and _**problems of scalability and performance**_. I don't do his blog article any justice by showing snippets. Go read the article in its entirety and you'll see the commitment we have for you, our community users. Jason will also _be following up with some more blog posts detailing some of the many other rearchitecture decisions_.
  - **Documentation** - This is something that should also be an on-going journey. Most people never take the time to read the instructions, but that is no excuse for having inadequate or out-dated documentation. Our website has [documentation][doc] that covers a wide range of topics. However, we did have some out-dated instructions and [Justin][just] opened a [github issue][justissue] to report this problem. Because Justin took the time let us know, we recently [updated the documentation][update]. We'd like to be more proactive when new releases are announced. You can also help us when you find a problem by opening a [GitHub issue][gitissue] and letting us know. As an open source project, we also appreciate the contributions made to ManageIQ by disparate team members as well as Community Users such as yourself. One such example was a fix [Florian Woener][flor] submitted that resolved a problem with an incorrect [URL link][link].
  - **Difficulty in getting started with ManageIQ** - As with all software tools, the quicker you understand what all the buttons, whistles, and beeps do, the quicker you become proficient, efficient, and self-sufficient. ManageIQ is an immensely powerful tool, and as such, is multi-faceted in the tools it offers. These tools can only be used if you understand what, why, and how they work. One of the things we'd like to do is reduce the learning curve when trying to use the tools offered. Although we think some of these problems can be resolved in Point #4 (see below), we do have an excellent [Getting Started Guide][getstart]. This guide shows you how to install MangeIQ using Vagrant, Docker, or the Public Cloud (namely Google Compute Engine). It also shows: [basic configuration][config], how to [add a provider][provider], what you can [see from this provider][see], how to [provision your first instance][instance], how to create a [self-service catalog item][item], and finally [where do you go from here][where]. One of the most confusing aspects of learning and using a new tool is understanding the concepts described and the terminology. Fortunately, we have you covered there as well with the [Concepts Guide][terms]. As stated in the first two points above, this is another on-going journey as we add new features, functionality, and introduce new terminology. If you find that something is confusing, unclear, or just plain wrong, please open a GitHub issue [here][new] and let us know.
  - **More blog articles / Video content / Update Docs** - This group of three cover the most requested items that all deal with communication of ideas, instructions, new features, concepts, and how-tos. Something I learned a while ago is that we all have different ways we take in and process information. This processing of information is broken of into seven distinct [learning styles][style]. They are:
    - Visual (spatial):You prefer using pictures, images, and spatial understanding.
    - Aural (auditory-musical): You prefer using sound and music.
    - Verbal (linguistic): You prefer using words, both in speech and writing.
    - Physical (kinesthetic): You prefer using your body, hands and sense of touch.
    - Logical (mathematical): You prefer using logic, reasoning and systems.
    - Social (interpersonal): You prefer to learn in groups or with other people.
    - Solitary (intrapersonal): You prefer to work alone and use self-study.

Understanding your [learning style][learn] can increase how much information you process and are able to retain. As an example, I will never understand how some people can read a book while music is blaring in the background, but I digress. We as a team are constantly trying to improve our methods of communicating information about ManageIQ. Whether by direct instruction, [videos][vids], or [documentation][doc]. As stated before, this is an on-going journey and we are aware that we need to use or enhance our methods of communication.

I hope this helped and until next time!

[jprause]: https://github.com/jprause
[fry]: https://github.com/fryguy
[hrelease]: http://manageiq.org/blog/2017/10/h-release-rearchitecture/
[doc]: http://manageiq.org/docs/
[just]: https://github.com/jgeorgeson
[justissue]: https://github.com/ManageIQ/manageiq.org/issues/543
[update]: https://github.com/ManageIQ/manageiq.org/pull/588
[gitissue]: https://github.com/ManageIQ/manageiq.org/issues
[flor]: https://github.com/FlorianOnmyown
[link]: https://github.com/ManageIQ/manageiq.org/pull/587
[getstart]: http://manageiq.org/docs/get-started/
[config]: http://manageiq.org/docs/get-started/basic-configuration
[provider]: http://manageiq.org/docs/get-started/add-a-provider
[see]: http://manageiq.org/docs/get-started/review-provider
[instance]: http://manageiq.org/docs/get-started/provision-machine
[item]: http://manageiq.org/docs/get-started/create-service-item
[where]: http://manageiq.org/docs/get-started/where-to-go-from-here
[terms]: http://manageiq.org/docs/get-started/concepts
[new]: https://github.com/ManageIQ/manageiq.org/issues/new
[style]: https://en.wikipedia.org/wiki/Learning_styles
[learn]: https://youtu.be/3_bQUSFzLI4
[vids]: https://www.youtube.com/user/ManageIQVideo/videos
