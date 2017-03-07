---
title: "Last Week in ManageIQ: Deletions and Dragons"
author: d-m-u
date: 2017-03-07
comments: true
published: true
tags: LWIMIQ
---

## The Players 
[Jamlamin Tarmikos][jt]: Male Human Dwarven Defender Str 12 Int 15 Wis 18 Dex 12 Con 16 Cha 17  
[Thernda Strifelaugher][tw]: Female Halfling Dwarven Defender Str 15 Int 15 Wis 13 Dex 13 Con 6 Cha 11  
[Janmorel][jc]: Male Half-Orc Loremaster Str 7 Int 15 Wis 12 Dex 7 Con 3 Cha 12  
[Nerisstina Cupshigh][nc]: Female Gnome Paladin Str 14 Int 15 Wis 10 Dex 8 Con 13 Cha 9  
[Krisnys Bearcharger][kb]: Female Elf Shadowdancer Str 4 Int 15 Wis 8 Dex 10 Con 5 Cha 19  
[Eillyassa Chorster][ec]: Female Gnome Ranger Str 15 Int 15 Wis 3 Dex 3 Con 13 Cha 3  
[Jannys Falconsflight][jf]: Female Half-Orc Paladin Str 6 Int 15 Wis 5 Dex 7 Con 11 Cha 4  
[Janella Silentall][jr]: Female Half-Orc Dwarven Defender Str 11 Int 15 Wis 8 Dex 18 Con 11 Cha 13  
[Magnys Gladomain][mh]: Female Elf Rogue Str 10 Int 15 Wis 13 Dex 10 Con 9 Cha 15  

## Week Nine Overview

Hello! Welcome to The Route of Elemental Code Deletions, a campaign where I, [Drew](https://github.com/d-m-u), will be DMing (Dungeon Mastering) a company of players as they attempt to navigate the treacherous module of Week Nine.

Hungry and exhausted, our party hobbled along the mucky road that led outside Rahasia as they bickered fiercely over where to make camp. The past week had been particularly trying, with 139 total kills. This was [69 skeletons, trolls, ogres, and giants][manageiq PRs merged], [54 ancient bronze dragons, assorted demons, and devils][manageiq-ui-classic PRs merged], and [16 water weirds and elementals][manageiq-ui-service PRs merged]. 

 [Thernda Strifelaugher][tw], a female Halfling Dwarven Defender, and [Jannys Falconsflight][jf], a female Half-Orc Paladin and aspiring acrobat, in particular, had had a rough go of it. They had battled respectively the ogre that was later found to be named [Vms API snapshots] [#13829] and a troll that subsequently revealed itself to be a [multiple parent issue on moving relationships][#14060]. Eventually the question of where to settle for the night became moot as what little light disappeared just as they had begun to cross a long bridge. They all stopped to pull out bedrolls, knowing that the best defense against the Dead was running water. [Jamlamin Tarmikos][jt], a male Human Dwarven Defender, woke with a start a few minutes later with a guilty twinge about the fact that no one was on guard. They at one point had a system for who kept watch but the group dynamics had long since broken down and the trials of the week meant that any such orderly system had long been left by the wayside. He lay silent for a moment, until, with a start, he realized that he had heard something growl. Something with what sounded oddly like bells. He froze. 

There were approaching footsteps. Loud ones. He hastily and groggily rolled out of his bedroll and stood with nontrivial effort to stare blearily at the other end of the bridge. Striking a match, he peered into the dark. He could nigh make out the outline of the pesky invader who called out to him. "[Janmorel][jc] here. I am a Half-Orc Loremaster from Celene. Here to lend my assistance." Janmorel strode across to meet Jamlamin, who quickly realized that at the side of the Half-Orc was a massive war dog with a ridiculous red-sequined collar full of bells. "Look," Janmorel said. "I'm here to get rid of the beast, I really must. It has been dogging me for days now. I also have a [firmware migration][#14025] that you all might be interested in. As you can tell, the migration doesn't quite fit into Operating System, but plenty of your hardware types require such metadata and I'm here to provide the migration to do it!" The dog, apparently intent on ignoring everything but chasing leaves on the ground, had short black fur. Janmorel grimaced, dropped a strange looking bundle at the feet of Jamlamin, clicked his heels together, and vanished abruptly into the night. Jamlamin took one look at the dog and sighed heavily. "Maybe you'll make a decent guard after all. We do need one, you know." He bent to pick up the bundle, realizing as he did so that it had a strange locking mechanism that he doubted the party had the key to. 

He locked the bundle in the company chest and realized to his chagrin that the dog had usurped most of his bedroll. The rest of the night passed uneventfully. In the morning, [Krisnys Bearcharger][kb], the female Elf Shadowdancer, had awoken before everyone else to make breakfast. [Nerisstina Cupshigh][nc], the female Gnome Paladin, growled at the dog who was eagerly sniffing for food, but reluctantly handed over half of her portion. [Eillyassa Chorster][ec], the female Gnome Ranger, was the last to awaken, partially because she was depressed. She had been jinxed in week four, and had the unfortunate burden of having a coatrack follow her around now. None of the company had yet been able to dispel the jinx, but after the hearty breakfast of what could only charitably be called dogfood, [Jamlamin Tarmikos][jt] stirred once again in Eillyassa's direction to attempt to sever the bond between her and the unfortunate piece of furniture. After a few moments of fumbling with the coatrack, Jamlamin straightened. "I think that the spell backfired. It was not specifying the correct collection. Try putting some distance between you and it, again, please?" The company watched in relief as Eillyassa left the coatrack in the dust. [Magnys Gladomain][mh], the female Elf Rogue, stammered. "Wh...what did you do?" Jamlamin replied, "I believe the [referencing objects via id on services create][#14087] was broken. Should work fine now." 

[Janella Silentall][jr], the female Half-Orc Dwarven Defender, sulked. She had been trying to fix Eillyassa's curse for weeks to no avail. Grumbling, she strode off to the edge of the river. She didn't get far without stubbing her toe on a small item that appeared out of nowhere. She yelled ferociously, cursing the deities, and then knelt down to examine the offending item. Forgetting her anger, she read out loud, "Ah! We have [a new rake task][#14107], evm:status_full, that prints the local server and remote servers and their workers ordered by server and zone!"

The company slowly got ready for another day, leaving the coatrack in the middle of the road. [Janella Silentall][jr], the female Half-Orc Dwarven Defender, had attempted idly to courteously move it to the side of the road, but it appeared to be firmly stationary. The flat, open road had begun to have a bit of elevation, and the trees looming forebodingly in the distance promised not shelter but a rather threatening day of watching their collective backs. As the hours of walking crept by, [Jannys Falconsflight][jf], the female Half-Orc Paladin, slowed considerably. She had never dealt well with elevation. The company finally stopped for a short break in the mid-afternoon. [Nerisstina Cupshigh][nc] sat down on a rock with a thud. Frowning, she reached for a shiny looking thing in the dirt at her feet. But the thing didn't move, and, with a heavy sigh, she abandoned it. The dog loped over to see what she'd been digging at, and soon there was a small pit where the shimmer had been. Nerisstina smoothed the dirt over, and, with a gasp, pulled out a small object to examine it. "Ah!", she exclaimed. "Curiouser and curiouser. It's apparently a [backlog method to PglogicalSubscription objects][#14010]!" 

From their resting place, the company could barely see Jannys. They did, however, hear her scream, and Magnys Gladomain and Krisnys Bearcharger leapt to her aid. As they came careening down the gentle slope to her side, it became apparent that there was a skeleton who had been lurking out of sight, and was now firing a grenade launcher at Jannys. Krisnys was the first to react, and began pummeling the grievous skeleton with fireballs. Thernda pulled out her shortsword and hacked at the bag of bones. It quickly subsided into dust with a dying breath: "I am [Draper, the object-oriented layer of presentation logic! I am slain][#14044]!", dropping the grenade launcher in the dust. Krisnys tentatively pulled the grenade launcher out of the dirt. "Oh! It's enchanted..." she mused. "We now have the ability to [use a scope to only bring back archived vms][#14176]!" And with that, Krisnys leveled up. 

## Summary
This was just a highlight of the adventures of the MIQ troupe in Week Nine. Back for more dangerous escapades next week! That's all, folks!

[manageiq PRs merged]: https://github.com/ManageIQ/manageiq/pulls?utf8=%E2%9C%93&q=is%3Apr%20is%3Amerged%20base%3Amaster%20merged%3A%222017-02-27%20..%202017-03-03%22
[manageiq-ui-classic PRs merged]: https://github.com/ManageIQ/manageiq-ui-classic/pulls?utf8=%E2%9C%93&q=is%3Apr%20is%3Amerged%20base%3Amaster%20merged%3A%222017-02-27%20..%202017-03-03%22%20
[manageiq-ui-service PRs merged]: https://github.com/ManageIQ/manageiq-ui-service/pulls?utf8=%E2%9C%93&q=is%3Apr%20is%3Amerged%20base%3Amaster%20merged%3A%222017-02-27%20..%202017-03-03%22%20

[#13829]: https://github.com/ManageIQ/manageiq/pull/13829 
[#14060]: https://github.com/ManageIQ/manageiq/pull/14060
[#14025]: https://github.com/ManageIQ/manageiq/pull/14025
[#14087]: https://github.com/ManageIQ/manageiq/pull/14087
[#14010]: https://github.com/ManageIQ/manageiq/pull/14010 
[#14176]: https://github.com/ManageIQ/manageiq/pull/14176 
[#14044]: https://github.com/ManageIQ/manageiq/pull/14044
[#14107]: https://github.com/ManageIQ/manageiq/pull/14107

[tw]: https://github.com/imtayadeway
[kb]: https://github.com/kbrock
[jf]: https://github.com/Fryguy
[jc]: https://github.com/juliancheal
[ec]: https://github.com/eclarizio
[jr]: https://github.com/jrafanie
[jt]: https://github.com/jntullo
[mh]: https://github.com/himdel
[nc]: https://github.com/carbonin