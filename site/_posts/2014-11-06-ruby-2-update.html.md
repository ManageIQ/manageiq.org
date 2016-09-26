---
title: Ruby 2 Update
author: jrafanie
date: 2014-11-06 19:20 UTC
tags: announcements
---

### Travis CI
We have been using [travis ci](https://travis-ci.org/ManageIQ/manageiq) for running our tests automatically on each merge and pull request soon after we open sourced ManageIQ.

Until very recently, travis was testing against ruby 1.9.3 only. Meanwhile, we were fixing small issues to make our code compatible with 2.0 in a backwards compatible way.  As we were fixing issues, we had a [work in progress pull request](https://github.com/ManageIQ/manageiq/pull/185) to make sure our code was passing on travis against ruby 2.0.  This pull request has been merged so all new pull requests and merged commits will be testing ruby 2.0.

Note, we are dropping ruby 1.9.3 from running in travis mainly due to test speed and the intention is to start using ruby 2.0 features so we are slowly leaving 1.9.3 behind.

### Appliances

In addition, the code that builds our centos appliances has been updated in this [pull request](https://github.com/ManageIQ/manageiq/pull/933).  We will send another update when we have uploaded next sprint's appliance builds using ruby 2.

### Developers

Finally, if you're a developer hacking on ManageIQ, it's time to install ruby 2.0.0 if you haven't already.

I am using ruby-install and chruby locally and put together a [few notes](https://github.com/ManageIQ/guides/blob/a3b8c0b3cebd62ea89eaca17a91790af6002ea9b/developer_ruby2_setup.md) on some of the things you might run into with ruby 2.0.

Please open pull requests to make any changes or additions for rvm, rbenv, etc.
