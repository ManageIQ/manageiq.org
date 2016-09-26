---
title: Avoid Shellshock and the Bash Plague with ManageIQ
date: 2014-09-29 14:42 UTC
author: johnmark
tags: collaboration
---

Unless you've been under a rock the last few days, you've no doubt heard of the Shellshock vulnerability affecting a large number of *nix machines with the Bash shell installed. Note: Bash doesn't even need to be the default shell - plenty of 'Dash' users are also affected. Luckily, there's a way to avoid this mess - a policy management engine in ManageIQ, combined with VM fleecing, that lets you route around the vulnerability, turning off VMs that are vulnerable. This video gives you the goods:

<iframe width="640" height="360" src="//www.youtube.com/embed/RDcIIyYK044" frameborder="0" allowfullscreen></iframe>

That video comes courtesy of John Hardy, all-around good guy (mostly) and CloudForms man about town. He wrote up an [accompanying blog post](http://cloudformsnow.com/2014/09/28/shell-shock-bash-code-injection-vulnerability-via-specially-crafted-environment-variables-cve-2014-6271-cve-2014-7169/) that includes the bits needed for implementation:

> Fancy finding out really quickly if your [linux boxes] are patched correctly? Even if they are turned off right now? Wow that is clever not even the virtual infrastructure players can do that…I know…its cool. Here it is..

> Using Cloudforms (or ManageIQ for FREE!) download this policy and import it into Control. Then assign the policy to your targets. The policy will only check Linux systems, though it could do with a makeover to check only RHEL 6.5 systems too.

> Download and import [this policy profile](https://github.com/jonnyfiveiq/CloudFORMSNOW/blob/master/Policies/ShellShockPolicy.yaml) (GitHub.com)

- [Read John Hardy's blog post](http://cloudformsnow.com/2014/09/28/shell-shock-bash-code-injection-vulnerability-via-specially-crafted-environment-variables-cve-2014-6271-cve-2014-7169/)
- [Then see the demo video](http://youtu.be/RDcIIyYK044)

Protect yourselves out there!
