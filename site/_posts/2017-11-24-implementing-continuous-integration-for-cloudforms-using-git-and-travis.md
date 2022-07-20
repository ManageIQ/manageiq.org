---     
title: Implementing Continuous Integration for CloudForms using Git and Travis
date: 2017-11-24
tags: cloudforms management operations show
author: Victor Estival Lopez
---

Christian Jung recently posted another interesting article as a follow-up on [Best Practice Recommendations for Automate] (<https://www.redhat.com/en/blog#more-2218>). This time, he focuses on setting up Continuous Integration for Red Hat CloudForms.
  
In his blog post, Christian discusses how to use common development tools like [GIT] (<https://git-scm.com>) and [Travis] (<https://www.travis-ci.org>) in conjunction with CloudForms to configure a datastore pointing to a git repository and set a Continuous Integration/Continuous Delivery (CI/CD) environment. This feature is available in CloudForms since [CloudForms 4.2] (<https://access.redhat.com/documentation/en-us/red_hat_cloudforms/4.2/release-notes/?version=4.2>).

Such CI/CD pipeline is useful whether you are delivering a PoC, promoting automate domain across environments, or want to test your automation code before using it as part of your day to day operations.

You can find the article and how to set this up step-by-step on [Christian’s blog] (<https://www.jung-christian.de/post/2017/11/continuous-integration-with-automate/>). Happy coding!  
