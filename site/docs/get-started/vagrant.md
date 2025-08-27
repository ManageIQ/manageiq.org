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

The appliance will also need one or two extra disks, one for the PostgreSQL
database (required) and one for persisting the message queue (optional). Add
these like so:

```ruby
  config.vm.disk :disk, name: "miq-pg", size: "4GB"
  # Uncomment this for a persistent message queue:
  # config.vm.disk :disk, name: "miq-mq", size: "4GB"
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

Now that you're on the appliance's shell, it will need a little bit of input
from you to finish starting:

```bash
$ appliance_console
```

This will bring up a menu-driven interface with a list of numbered options.
The numbers for each option may vary. First, you want `Configure Application`,
so enter that option's number at the prompt and press enter.

You will be prompted to either create an encryption key or fetch one from a
remote machine. Select the `Create key` option.

The next menu will ask how you want the database to be configured. For a basic
setup to get started, `Create Internal Database` is an appropriate choice.

Then, it will ask about messaging. Choose `Configure this appliance as a
messaging server`.

The console will then go about partitioning the extra disk(s) you added in
`Vagrantfile`. You can choose the defaults here.

When it asks, "Should this appliance run as a standalone database server,"
choose `N` (the default).

The next prompt will be "Enter the database region number." Any number will do.
`0` and `99` are common choices. For a vagrant appliance, this number isn't 
especially important. Refer to the [Deployment Planning
Guide](/docs/reference/{{site.data.releases["stable"].branch}}/deployment_planning_guide) for information about regions when you're ready to take ManageIQ to
production.

Next will be a password prompt for the database. It will ask twice.

You may get a prompt like "Already configured on this Appliance, Un-Configure
first?" Choose `Y` to customize the settings for the Kafka messaging server,
or `N` to go with what's already set--which may not work.

If you chose `Y` above, you'll be asked whether to "Proceed with Configuration."
If you choose `Y` again, you will get the following prompts:

* Enter the Message Server Hostname:
  * The hostname you give here _must_ be resolvable and _must_ not be a
    link-local or loopback address. The default value will come from DHCP and
    will vary with your local network and any network settings you applied in
    `Vagrantfile`.
* Enter the Message Keystore Username:
  * Any name works. The default is "admin."
* Enter the Message Keystore Password
  * Again, you will be prompted twice
* Configure a new persistent disk volume?
  * If you added a third disk in `Vagrantfile`, you may choose `Y` here.
    Otherwise, choose `N`.

You'll be given a review-and-confirm dialog. Choose `Y` if everything looks
correct. After a moment, you should be prompted to "press any key."

ManageIQ is now up and running.

The next step is to perform some [basic
configuration](/docs/get-started/basic-configuration).
