---
title: "Embedded Ansible — Part 1, Built-In Ansible Roles"
author: Peter McGowan
date: 2020-02-12
comments: true
published: true
tags: tutorials
---

This is the first of four blog posts in a series written by Peter McGowan about Embedded Ansible capabilities released in ManageIQ Fine.

The introduction of Embedded Ansible with the Fine release enabled administrators to create services that use Ansible playbooks instead of Ruby methods to perform tasks. Successive versions of ManageIQ have expanded this capability, and automation developers can now construct complex Automate workflows using Ansible playbooks alongside traditional Ruby methods.

Part 1 of this series will discuss two Ansible roles that have been included in Fine and later. The roles enable an embedded Ansible playbook to integrate closely with ManageIQ and participate in an automation workflow. They are:

*manageiq-core.manageiq-automate* — this role provides a simple way of accessing Automate workspace objects. It is usable from playbook methods only.

*manageiq-core.manageiq-vmdb* — this role provides a simple way of manipulating VMDB objects that are exposed via the API. It is usable from both playbook methods and playbook services.

Usage of both roles is demonstrated throughout the remainder of this series of articles.

## The manageiq-automate Role
The *manageiq-core.manageiq-automate* role can be used by playbook methods (but not services) to interact with ManageIQ automation. This allows a playbook method to participate in an automation workflow and share data with other objects in the workflow’s workspace.

The following is an example of how the role can be used:

```
  vars:
  - manageiq_validate_certs: false

  roles:
  - manageiq-core.manageiq-automate

  tasks:
  - name: Get the "rhel_subscription_pool" attribute from a configuration domain instance
    manageiq_automate:
      workspace: {% raw %}"{{ workspace }}"{% endraw %}
      get_attribute:
        object: "/Configuration/OpenShift/Parameters"
        attribute: "rhel_subscription_pool"
    register: get_attribute_result
```

The role uses a *manageiq_validate_certs* internal variable to determine whether to validate the SSL connection back to the API. The default for this value is *true*, but must be overridden to *false* if the default self-signed SSL certificate is used. This can be done using a playbook var or input parameter (i.e. extra_var) called *manageiq_validate_certs* with the boolean value of *false*, for example:

![input_params](/assets/images/blog/input_params-embedded-1.1.jpg)


## Functions
The *manageiq-automate* module contains many functions that can be broadly divided into four categories, as follows.

### Working with Input Parameters
A playbook method’s input parameters can be queried and retrieved using the following functions:

`method_parameter_exists`  
`get_method_parameters`  
`get_method_parameter`  
`get_decrypted_method_parameter`  

### Working with Workspace Objects
Workspace objects (instances that are already loaded in the $evm workspace) can be queried using the following functions:

`object_exists`  
`get_object_names`  
`get_object_attribute_names`  
`get_vmdb_object`  

### Working with Object Attributes
Workspace object attributes can be queried, retrieved and set using the following functions:

`attribute_exists`  
`get_attribute`  
`get_decrypted_attribute`  
`set_attribute`  
`set_attributes`  
`set_encrypted_attribute`  

### Working with State Machines
A state machine’s state variables can be retrieved or set using the following functions when a playbook method is running in the state machine:

`get_state_var_names`  
`state_var_exists`  
`get_state_var`  
`set_state_var`  
`set_retry`  

## Return Values
The `get_*` and `*_exists` functions return their values into a variable using the *register* command, for example:

```
- name: Get the "rhel_subscription_pool" attribute from a configuration domain
  manageiq_automate:
    workspace: {% raw %}"{{ workspace }}"{% endraw %}
    get_attribute:
      object: "/Configuration/OpenShift/Parameters"
      attribute: "rhel_subscription_pool"
  register: get_attribute_result
- debug: msg="Result:{{ get_attribute_result }}"
```

The return value from these commands is typically a hash, and the value of interest has the `value` key in this hash. For example, the debug line above will print the following:

```
ok: [localhost] => {
    "msg": "Result:{'changed': False, 'value': 'Red Hat OpenShift Container Platform, Premium*', 'failed': False}"
}
```

If the variable is to be used elsewhere in the playbook it should therefore be referenced using the `value` key, for example
<code>{% raw %} {{ get_attribute_result.value }} {% endraw %}</code>.

Some of the functions return an object. For example, *get_decrypted_attribute* returns a hash whose *value* key itself points to a further object hash:

```
- name: Get the "ldap_user_password" encrypted attribute from a configuration domain
  manageiq_automate:
    workspace: {% raw %}"{{ workspace }}"{% endraw %}
    get_decrypted_attribute:
      object: "/Configuration/OpenShift/Parameters"
      attribute: "ldap_user_password"
  register: get_decrypted_attribute_result
- debug: msg="Result:{{ get_decrypted_attribute_result }}"

ok: [localhost] => {
    "msg": "Result:{'changed': False, 'value': {'object': '/Configuration/OpenShift/Parameters', 'attribute': 'ldap_user_password', 'value': 'so_secret'}, 'failed': False}"
}
```

If the variable is to be used elsewhere in the playbook it should be referenced with the `value.value` key, for example
<code>{% raw %} {{ get_decrypted_attribute_result.value.value }} {% endraw %}</code> .

## The manageiq-vmdb Role
VMDB objects that are accessible via the RESTful API can be accessed using functions defined in the *manageiq-core.manageiq-vmdb* role, documented [here](https://github.com/syncrou/manageiq-vmdb). The role is usable from both playbook services and playbook methods.

Like the *manageiq-automate* role, this role also uses a *manageiq_validate_certs* internal variable to determine whether to validate the SSL connection back to the API. The default for this value is *true*, and this must be overridden to *false* if the default self-signed SSL certificate is used.

The following is an example of how the role can be used:

```
  vars:
  - manageiq_validate_certs: false

  roles:
  - manageiq-core.manageiq-vmdb

  tasks:
  - name: Get the service object
    manageiq_vmdb:
      href: {% raw %}"{{ manageiq.service }}"{% endraw %}
    register: service

  - name: Get the VM object
    manageiq_vmdb:
      href: "vms/18"
    register: vm

  - name: Rename the service
    manageiq_vmdb:
      vmdb: {% raw %}"{{ service }}"{% endraw %}
      action: edit
      data:
        name: "New Engineering VM"
        description: {% raw %}"VM created on {{ lookup('pipe', 'date +%Y-%m-%d\\ %H:%M') }}"{% endraw %}

  - name: Add the VM to the service
    manageiq_vmdb:
      vmdb: {% raw %}"{{ service }}"{% endraw %}
      action: add_resource
      data:
        resource:
          href: {% raw %}"{{ vm.href }}"{% endraw %}
```

The actions available to an object are those described in the API reference guide.
## CFME Appliance Hostname
If no appliance hostname has been set from *appliance_console*, the embedded Ansible provider may fail to connect back to itself when running these roles. An error such as the following may be logged:

`MIQ(ManageIQ::Providers::EmbeddedAnsible::Provider#authentication_check_no_validation) type: ["default"] for [2] [Embedded Ansible] Validation failed: error, Failed to open TCP connection to https:443 (getaddrinfo: Name or service not known)`

To prevent this error, always ensure that the appliance hostname has been defined.

## Summary
This article has described two very useful Ansible roles that are supplied out-of-the-box with ManageIQ. The following articles in this series illustrate further how the roles can be used by a playbook that is run as part of an automation workflow.
