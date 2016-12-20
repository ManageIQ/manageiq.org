---
title: "Last Week in ManageIQ: Armor like Tenfold Regions Hashes"
date: 2016-12-19
author: drew
tags: LWIMIQ
comments: true
published: true
---

Two improved pull requests for Elven-kings under the sky,  
Three fixed for Dwarf-lords in their halls of stone,  
Two new for Mortal Men, doomed to die,  
One deleted for the Dark Lord on his dark throne  
In the land of ManageIQ where the heisenbugs lie.  
One blog post to rule them all, One blog post to find them,  
One blog post to bring them all and in the darkness bind them.  
In the land of ManageIQ where the heisenbugs lie.  

## This is a story of the PRs that were merged this week. (Featured)
There were [82 pull requests merged last week][1]! Even the smallest person can change the course of the future. We are looking for people to [share in this adventure][2]!

## Uprooting the evil in the fields that we know. (Improved)
Exciting news from the world of `:ems_azure`! [Bronagh][3] has [added an `:additional_regions` hash][4]. Coming soon: that hash will be read and the regions added to those in the supported Azure regions file. 

The UI now sees [the correct IDs of ui_properties nodes][5] when a blueprint is published, thanks to [Jillian][6]. 

## They that break a thing to find out what it is have left the path of wisdom (but can return)! (Fixed)
[An incorrect image in the Compare table][7] has been fixed by [Zita][8]!

[Harpreet][9] has fixed [the edit hash of the Ae Schema Editor][10] to set keys as strings rather than symbols.

[Laura][11] has fixed an issue where [the submission of a custom dialog should redirect][12] to the request list only if a request was created. 

## Go back? ... No good at all! Go sideways? Impossible! Go forward? Only thing to do! On we go! (New)
[Provider plugins can carry their own automate domains][13] now, thanks to [Brandon][14]. 

[Keenan][15] has introduced [automatic purging of the report results table][16], preventing a huge use of resources. 

## Back to the abyss! (Deleted)
We have several renditions of the `:title` property used to update buttons when they are disabled, and so a lot of those methods have been [consolidated into the base method of #calculate_properties][17], thanks to [Attila][18]. 

## No, the journey doesn't end here! (Wrapping up)
Pull requests are not less valiant because they are here unpraised. Check out [the full list][1], and, be bold, but wary! Keep up your merry hearts, and ride to meet your fortune!
  

[1]: https://github.com/ManageIQ/manageiq/pulls?utf8=%E2%9C%93&q=is%3Apr%20is%3Amerged%20base%3Amaster%20merged%3A%222016-12-12%20..%202016-12-18%22%20sort%3Acreated-desc%20
[2]: https://github.com/ManageIQ/manageiq/issues
[3]: https://github.com/bronaghs
[4]: https://github.com/ManageIQ/manageiq/pull/13178
[5]: https://github.com/ManageIQ/manageiq/pull/13153
[6]: https://github.com/jntullo
[7]: https://github.com/ManageIQ/manageiq/pull/13118
[8]: https://github.com/ZitaNemeckova
[9]: https://github.com/h-kataria
[10]: https://github.com/ManageIQ/manageiq/pull/13201
[11]: https://github.com/lgalis
[12]: https://github.com/ManageIQ/manageiq/pull/13182
[13]: https://github.com/ManageIQ/manageiq/pull/11083
[14]: https://github.com/bdunne
[15]: https://github.com/kbrock
[16]: https://github.com/ManageIQ/manageiq/pull/13044
[17]: https://github.com/ManageIQ/manageiq/pull/13052
[18]: https://github.com/vecerek
