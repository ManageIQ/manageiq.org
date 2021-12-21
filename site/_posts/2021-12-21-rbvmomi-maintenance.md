---
title: RbVmomi Maintenance
date: 2021-12-21
author: agrare
tags: collaboration announcements
---

I have the pleasure of announcing that the [ManageIQ community](https://www.manageiq.org/community/) has forked and will be maintaining the RbVmomi gem as rbvmomi2.  RbVmomi is a Ruby SDK for the [VMware vSphere Web Services API](https://code.vmware.com/apis/1131/vsphere) which allows users to manage their virtual infrastructure.

Up until this point RbVmomi has been managed by VMware as a community supported project, but due to a lack of Ruby maintainers it has since been archived [[ref]](https://github.com/vmware-archive/rbvmomi/commit/fb3caa94264827c27f00a7369090bd2421b82524).

The ManageIQ community is picking up where VMware left off and will be providing security updates, bug fixes, and updates for new versions of VMware vSphere in a timely manner.

Initially the gem maintainers will be [Adam Grare](https://github.com/agrare) and [Jason Frey](https://github.com/Fryguy).  The ManageIQ project has been using RbVmomi for its VMware vSphere provider [manageiq-providers-vmware](https://github.com/ManageIQ/manageiq-providers-vmware) for years. Jason is a staple of the Ruby and Rails communities, and Adam has been an active contributor to RbVmomi since 2016.

The gem is available from rubygems at [https://rubygems.org/gems/rbvmomi2](https://rubygems.org/gems/rbvmomi2). If you are currently using RbVmomi you will need to update your Gemfile or gemspec and replace `rbvmomi` with `rbvmomi2`.

The new repository is [https://github.com/ManageIQ/rbvmomi2](https://github.com/ManageIQ/rbvmomi2); as always we encourage the community to open issues and contribute code and ideas.  If you are interested in contributing, check out [https://github.com/ManageIQ/rbvmomi/blob/master/CONTRIBUTING.md](https://github.com/ManageIQ/rbvmomi/blob/master/CONTRIBUTING.md) and open an [Issue](https://github.com/ManageIQ/rbvmomi/issues/new/choose) or [Pull Request](https://github.com/ManageIQ/rbvmomi/compare), or just discuss something in the [RbVmomi Gitter room](https://gitter.im/vmware/rbvmomi).

If you're new to ManageIQ, welcome!  Come check out https://manageiq.org, see the [source code](https://github.com/ManageIQ) and chat with us in the [ManageIQ Gitter room](https://gitter.im/ManageIQ/manageiq) !

Thanks,
ManageIQ Team
