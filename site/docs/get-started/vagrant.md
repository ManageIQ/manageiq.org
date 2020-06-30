---
layout: doc_page
title: Easy Install With Vagrant
---

You can test ManageIQ with Vagrant using the images that the ManageIQ project
makes available on [Vagrant Cloud](https://app.vagrantup.com/manageiq). This is
a great option if you have a Windows PC or a Mac. Note that you need 8GB of
memory to run ManageIQ!

We will assume that you have Vagrant
[installed](https://www.vagrantup.com/docs/installation/) on your computer, and
that it is configured with VirtualBox as the hypervisor. Currently only
VirtualBox boxes are provided.

### Step 1: Create a new box

Execute the following commands to create a new Vagrant box:

```bash
$ mkdir manageiq
$ cd manageiq
$ vagrant init manageiq/{{site.data.releases["stable"].branch}}
```

There is now a `Vagrantfile` in the current directory.

### Step 2: Modify Vagrantfile

You need to expose the ManageIQ web interface. Add the following setting to
the `Vagrantfile`:

```ruby
config.vm.network "forwarded_port", guest: 443, host: 8443
```
This will create a port mapping so that the ManageIQ web interface can be found
on https://localhost:8443.

By default ManageIQ is configured to use 6144MB and 4 CPUs. You can slightly
tune this down, but you should not go below the following settings:

```ruby
config.vm.provider "virtualbox" do |vb|
  vb.memory = 4096
  vb.cpus = 2
end
```

### Step 3: Start ManageIQ

Start ManageIQ by executing:

```bash
$ vagrant up
```

Ensure you can login to the ManageIQ appliance:

```bash
$ vagrant ssh
```

ManageIQ is now up and running.

Next step is to perform some [basic
configuration](/docs/get-started/basic-configuration).
