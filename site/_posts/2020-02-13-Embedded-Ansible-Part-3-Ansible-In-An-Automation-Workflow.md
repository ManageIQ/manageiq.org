---
title: "Embedded Ansible — Part 3, Ansible in an Automation Workflow"
author: Peter McGowan
date: 2020-02-13
comments: true
published: true
tags: tutorials
---

[Part one](https://www.manageiq.org/blog/2020/02/Embedded-Ansible-Part-1-Built-In-Roles/) of this series described the functionality for using built-in roles to perform tasks with Ansible playbooks rather than Ruby methods in Fine. [Part two](https://www.manageiq.org/blog/2020/02/Embedded-Ansible-Part-2-Passing-Parameters-Into-A-Playbook/) of this series looked at how host lists and input parameters can be passed to embedded Ansible playbook services and methods. This article will discuss how a playbook method can form part of a larger automation workflow by interacting with the ManageIQ Automate workspace.

## The Automate Workspace
One of the challenges when using embedded Ansible playbook methods is interacting with other stages of an automation workflow. For example these might be prior to or succeeding Ruby or Ansible methods running in a sequence or state machine.

The interaction is performed using Automate workspace objects and attributes, and fortunately an href to the current workspace (along with a credential token to access it) is passed into each playbook method as the extra_var <code>{% raw %} "{{ manageiq.automate_workspace  }}" {% endraw %} </code>.

### What is the Workspace?
The Automate workspace is a memory area that holds all of the objects involved in the automation workflow. Each Automate instance that is invoked during the workflow, whether from initial launch, from a relationship or state in another class instance, or a call to `$evm.instantiate`, creates a new object in the workspace.

Workspace objects are arranged in a parent-child hierarchy with the topmost object being the root object. A typical set of workspace objects as seen from part-way through the VM Provision state machine might be as follows:

```
/ManageIQ/System/Process/AUTOMATION  ($evm.root)
|    /ManageIQ/infrastructure/VM/Lifecycle/Provisioning
|    |    /ManageIQ/Infrastructure/VM/Provisioning/Profile/EvmGroup-super_administrator
|    |    /ManageIQ/Infrastructure/VM/Provisioning/StateMachines/VMProvision_vm/template  ($evm.parent)
|    |    |    /ManageIQ/Infrastructure/VM/Provisioning/StateMachines/Methods/CustomizeRequest
|    |    |    /Configuration/OpenShift/Parameters/default
|    |    |    /Investigative_Debugging/Discovery/ObjectWalker/object_walker  ($evm.object)
|    |    |    |    /Investigative_Debugging/Discovery/ObjectWalker/configuration
```

The stored attributes of any object in the workspace can be retrieved from a running Ansible playbook method, which can also save attributes and values back to the root object.

The workspace can be accessed from a running playbook method using the *manageiq-core.manageiq-automate* role described in [part one](https://www.manageiq.org/blog/2020/02/Embedded-Ansible-Part-1-Built-In-Roles/) of this series.

### Workspace Objects
The workspace contains all of the objects that have been instantiated in the automation workflow so far. These include the root object (`$evm.root` in Ruby-speak) and any instance that has been loaded via a relationship or state field in an Automate class instance, or via `$evm.instantiate` from a Ruby method. It is often useful to be able to query the current objects in the workspace from an Ansible playbook method.

#### Listing Workspace Objects
The `get_object_names` function retrieves the names of the objects currently loaded into the workspace, for example:

```
- name: Get the full list of objects/instances in the workspace (get_object_names)
  manageiq_automate:
    workspace: {% raw %}"{{ workspace }}"{% endraw %}
    get_object_names: yes
  register: workspace_object_names
- debug: msg="Result:{{ workspace_object_names.value }}"
```

The output is as follows:

```
TASK [Get the full list of objects/instances in the workspace (get_object_names)] ***
ok: [localhost]

TASK [debug] *******************************************************************
ok: [localhost] => {"msg": "Result:[
u'root', 
u'/ManageIQ/System/Request/call_instance',
u'/pemcg/Stuff/StateMachines/Methods/state1',
u'/Configuration/OpenShift/Parameters/default',
u'/pemcg/stuff/statemachines/threestate/manageiq-automate-test']”
}
```
<br/>
#### Accessing Workspace Object Attributes
An Ansible playbook method can also access any attribute defined in any other object/instance in the workspace. This makes it possible to access attributes saved into `$evm.root` by a prior Ruby method, or even defined in a configuration domain as long as the configuration domain instance has been loaded into the workspace. This can be done either from a relationship in an existing workspace instance schema, or using `$evm.instantiate` from a prior Ruby method.

There are seven functions in the `manageiq-automate` role that deal with object attributes. These are:

```
get_object_attribute_names
attribute_exists
get_attribute
get_decrypted_attribute
set_attribute
set_attributes
set_encrypted_attribute
```

Their use is illustrated as follows:

##### get_object_attribute_names
The `get_object_attribute_names` function lists the readable attributes of any object loaded into the workspace (hint: use `get_object_names` to confirm that the object is loaded first). 

This example lists the queryable attributes in the configuration domain `/Configuration/OpenShift/Parameters/default`

```
- name: Get the full list of configuration domain attribute names (get_object_attribute_names)
  manageiq_automate:
    workspace: {% raw %}"{{ workspace }}"{% endraw %}
    get_object_attribute_names:
      object: "/Configuration/OpenShift/Parameters/default"
  register: configuration_domain_attribute_names
- debug: msg="Result:{{ configuration_domain_attribute_names.value }}"
```

The output is as follows:

```
TASK [Get the full list of configuration domain attribute names (get_object_attribute_names)] ***
ok: [localhost]

TASK [debug] *******************************************************************
ok: [localhost] => {
    "msg": "Result:[u'auth_type', u'infra_vm_memory', u'lb_host', u'container_storage', u'openshift_vers', u'master_vm_memory', u'ipam_network', u'nfs_registry_mountpoint', u'::miq::parent', u'app_vm_memory', u'addr_mode', u'deployment_type', u'byo_lb', u'rhel_subscription_pass', u'customization_template', u'ldap_user', u'byo_nfs', u'rhel_subscription_pool', u'app_dns_prefix', u'nfs_registry_host', u'console_port', u'openshift_hosted_metrics_deploy', u'provider_vlan', u'openshift_sdn']"
```

<br/>
##### attribute_exists
Rather than list all readable attributes of a loaded workspace object, it is possible to just query whether a single attribute is present using the `attribute_exists` function, for example:

```
- name: Check if an object/instance attribute exists (attribute_exists)
  manageiq_automate:
    workspace: {% raw %}"{{ workspace }}"{% endraw %}
    attribute_exists:
      object: "/Configuration/OpenShift/Parameters/default"
      attribute: "rhel_subscription_pool"
  register: attribute_exists
- debug: msg="Result:{{ attribute_exists.value }}"
```

The output is as follows:

```
TASK [Check if an object/instance attribute exists (attribute_exists)] *********
ok: [localhost]

TASK [debug] *******************************************************************
ok: [localhost] => {
    "msg": "Result:True"
}   
```
<br/>
##### get_attribute
The `get_attribute` function allows the playbook to read an attribute from an object. This example shows the playbook reading the value of the `rhel_subscription_pool` attribute from the configuration domain instance:

```
- name: Get the "rhel_subscription_pool" attribute from a configuration domain instance (get_attribute)
  manageiq_automate:
    workspace: {% raw %}"{{ workspace }}"{% endraw %}
    get_attribute:
      object: "/Configuration/OpenShift/Parameters/default"
      attribute: "rhel_subscription_pool"
  register: rhel_subscription_pool
- debug: msg="Result:{{ rhel_subscription_pool.value }}"
```

The output is as follows:

```
TASK [Get the "rhel_subscription_pool" attribute from a configuration domain instance (get_attribute)] ***
ok: [localhost]

TASK [debug] *******************************************************************
ok: [localhost] => {
    "msg": "Result:Red Hat OpenShift Container Platform, Premium*"
}
```

The previous example read an attribute statically defined in a configuration domain instance. This next example uses the same function to read a more dynamic attribute that has been saved as `$evm.root[‘ipam_password’]` by a prior Ruby task in the workflow:

```
- name: Get the value of the "ipam_passwd" attribute defined by a prior Ruby method (get_attribute)
  manageiq_automate:
    workspace: {% raw %}"{{ workspace }}"{% endraw %}
    get_attribute:
      object: root
      attribute: "ipam_passwd"
  register: ipam_password
- debug: msg="Result:{{ ipam_password.value }}"
```

<br/>
##### get_decrypted_attribute
If an attribute of type “password” has been stored in an instance then it can be accessed and decrypted using the `get_decrypted_attribute` function, for example:

```
- name: Get the "ldap_user_password" encrypted attribute from a configuration domain instance (get_decrypted_attribute)
  manageiq_automate:
    workspace: {% raw %}"{{ workspace }}"{% endraw %}
    get_decrypted_attribute:
      object: "/Configuration/OpenShift/Parameters/default"
      attribute: "ldap_user_password"
  register: ldap_user_password
- debug: msg="Result:{{ ldap_user_password.value }}"
```
The output is as follows:
```
TASK [Get the "ldap_user_password" encrypted attribute from a configuration domain instance (get_decrypted_attribute)] ***
ok: [localhost]

TASK [debug] *******************************************************************
ok: [localhost] => {
    "msg": "Result:{u'attribute': u'ldap_user_password', u'object': u'/Configuration/OpenShift/Parameters/default', u'value': u'secret_ldap_password'}"
}
```

Attributes can also be written back into workspace objects (usually the root object) using the `set_attribute`, `set_attributes` and `set_encrypted_attribute` functions, as follows. Attributes written in this way are readable by a subsequent Ruby method in the workflow as `$evm.root[‘<attribute_name>’]`.

##### set_attribute
```
- name: Set a "domain_name" root attribute (set_attribute)
  manageiq_automate:
    workspace: {% raw %}"{{ workspace }}"{% endraw %}
    set_attribute:
      object: "root"
      attribute: "domain_name"
      value:  "company.org"
```
<br/>
##### set_attributes
```
- name: Set several IPAM-related root attributes (set_attributes)
  manageiq_automate:
    workspace: {% raw %}"{{ workspace }}"{% endraw %}
    set_attributes:
      object: "root"
      attributes:
        ipam_ip_address: "192.168.1.23"
        ipam_netmask: "255.255.255.0"
        ipam_gateway: "192.168.1.254"
```
<br/>
##### set_encrypted_attribute
```
- name: Encrypt a "root_passwd" object attribute (set_encrypted_attribute)
  manageiq_automate:
    workspace: {% raw %}"{{ workspace }}"{% endraw %}
    set_encrypted_attribute:
      object: root
      attribute: "root_passwd"
      value: "very_very_secret"
```
<br/>
The following code snippet in a Ruby method called after the Ansible playbook method in the workflow will access and log the saved attributes, as follows:

```
$evm.log(:info, "ip_address from Ansible = #{$evm.root['ipam_ip_address']}")
$evm.log(:info, "netmask from Ansible = #{$evm.root['ipam_netmask']}")
$evm.log(:info, "gateway from Ansible = #{$evm.root['ipam_gateway']}")
$evm.log(:info, "root_passwd from Ansible = #{$evm.root.decrypt('root_passwd')}")
  
...<AEMethod state3> ip_address from Ansible = 192.168.1.23
...<AEMethod state3> netmask from Ansible = 255.255.255.0
...<AEMethod state3> gateway from Ansible = 192.168.1.254
...<AEMethod state3> root_passwd from Ansible = very_very_secret
```

### Updating the Options Hash during VM Provisioning
The manageiq-vmdb role can be used to update the provisioning task’s options hash when a playbook method is run from the VM Provision state machine. The API path to the task is passed into the playbook automatically as the extra_var <code>{% raw %} "{{ manageiq.request_task  }}" {% endraw %} </code>, and this can be used with an `edit` action and an `options` data payload, as follows:

```
  roles:
  - manageiq-core.manageiq-vmdb

  tasks:   
  - name: Update task with new IP information
    manageiq_vmdb:
      href: {% raw %}"{{ manageiq.request_task }}" {% endraw %}
      action: edit
      data:
        options:
          addr_mode: ["static", "Static"]
          ip_addr: {% raw %}"{{ ip_addr }}"{% endraw %}
          subnet_mask: {% raw %}"{{ netmask }}"{% endraw %}
          gateway: {% raw %}"{{ gateway }}"{% endraw %}
```

## Summary
In Part three of this series, we have looked at how an embedded Ansible playbook can participate in a ManageIQ automation workflow that is made up of several Ruby and Ansible playbook methods.

Part four will look at the particular case of Ansible playbook methods that run from a state machine.
