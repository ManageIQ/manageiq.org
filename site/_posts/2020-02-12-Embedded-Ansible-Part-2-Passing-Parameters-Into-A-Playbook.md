---
title: "Embedded Ansible — Part 2, Passing Parameters Into A Playbook"
author: Peter McGowan
date: 2020-02-12
comments: true
published: true
tags: tutorials
---


[Part one of this series](https://www.manageiq.org/blog/2020/02/Embedded-Ansible-Part-1-Built-In-Roles/) described the *manageiq_automate* and *manageiq_vmdb* roles that can be used by a playbook to interact with a ManageIQ workflow.

This article will describe how to specify the inventory hosts on which to run an embedded Ansible playbook, and how to pass parameters into Ansible playbook services and methods.

## Inventory Hosts
Embedded Ansible does not support the concept of inventory groups, and so a list of IPv4 addresses or resolvable hostnames must be passed to the playbook at run-time.

For playbook services a list of default target hosts can be specified when the service is created, and optionally overridden at order-time using the *Hosts* service dialog element, as follows:

![install_a_package](/assets/images/blog/install_a_package-embedded-2.1.jpg)

For playbook methods one or more target hosts can be specified in the *Hosts* dialog when the method is created. This can be a list of IP addresses or hostnames, or a substitution string, for example:

![substitution_string](/assets/images/blog/substitution_string-embedded-2.2.jpg)


The substitution string enables the target *hosts* value to be dynamically translated at run-time and passed to the playbook, enhancing the flexibility of the playbook method.

## Ansible Playbook Input Parameters
To benefit from reusability and flexibility, playbooks are often written to work with *extra_var* variables passed as input parameters. Embedded Ansible playbook services and playbook methods handle input parameters slightly differently. 

### Playbook Service Input Parameters
Input parameters for playbook services are defined in the *Variables & Default Values* section of the service definition WebUI page, as follows:

![vars_and_default_values](/assets/images/blog/vars_and_default_values-embedded-2.3.jpg)

These variables and their string values are passed into the playbook as extra_vars when the playbook is launched. 

The default values can optionally be overridden from a service dialog when the service is ordered. Any of the service dialog’s elements that are named with the prefix “param_” will be passed as extra_vars to the playbook (with the string “param_” removed).

If a playbook service is ordered programmatically from Ruby then input parameters can be passed via the options hash to the `create_service_provision_request` call, for example:

```
CREDENTIAL_CLASS = "ManageIQ_Providers_EmbeddedAnsible_AutomationManager_MachineCredential"
TEMPLATE_CLASS   = "ServiceTemplate"

service_template = $evm.vmdb(TEMPLATE_CLASS).where(:name => 'Install a Package').first
credential       = $evm.vmdb(CREDENTIAL_CLASS).where(:name => 'Root Password').first
options          = {
  "credential"    => credential.id, 
  "hosts"         => "infra1.cloud.uk.bit63.com", 
  "param_package" => "mlocate"
  }
$evm.execute('create_service_provision_request', service_template, options)
```

### Playbook Method Input Parameters (aka Method Parameters)
The Automate Explorer allows for input parameters (also called method parameters) to be defined when an Ansible playbook method is created. The parameters can be any of the standard data types such as string, boolean, integer, password, etc., for example:

![input_params](/assets/images/blog/input_params-embedded-2.4.jpg)


Input parameters are passed to the playbook as extra_vars, so can be referred to in the playbook just as any other variable. As an example the first input parameter in this screenshot can be accessed using the  
<code>{% raw %} "{{ ipam_url }}" {% endraw %} </code> syntax.

As can be seen from the _**ipam_user**_ parameter name, the value of an input parameter for an Ansible playbook *method* can be a dynamic variable read from a substitution string at run-time (this substitution is not available for a playbook service).

In this example a prior Ruby method in the workflow would have saved the username into `$evm.root[‘ipam_user’]`.

> **Note:** The automation engine's substitution syntax is `${object#attribute_name}` where *object* can be "/" for the root object, or "" (or ".") for the current object. For example a substitution string of `${/#dialog_vm_name}` would be given the value of `$evm.root['dialog_vm_name']` at run-time. A substitution string of `${#username}` would be given the value of `$evm.object['username']` at run-time.


#### Querying Input Parameters
There are two functions in the *manageiq-automate* role that can be used to list or query whether an input or method parameter exists. These are:

* `get_method_parameters`
* `method_parameter_exists`

Their use is illustrated as follows:

##### get_method_parameters
The *get_method_parameters* function reads the full list of input parameters with their values, as illustrated below:

```
- name: Get the full list of method parameters (get_method_parameters)
  manageiq_automate:
    workspace: {% raw %}"{{ workspace }}"{% endraw %}
    get_method_parameters: yes
  register: get_method_parameters
- debug: msg="Result:{{ get_method_parameters.value }}"
```

The output is as follows:

```
TASK [Get the full list of method parameters (get_method_parameters)] ***************
ok: [localhost]

TASK [debug] *******************************************************************
ok: [localhost] => {
    "msg": "Result:{u'ipam_user': u'ipam_admin', u'default_passwd': u'password::********', u'ipam_url': u'https://ipam.company.org', u'manageiq_validate_certs': False}"
}
```

##### method_parameter_exists
The *method_parameter_exists* function checks if a method parameter with a given name exists, for example:

```
- name: Check if a method parameter called 'ipam_url' exists (method_parameter_exists)
  manageiq_automate:
    workspace: {% raw %}"{{ workspace }}"{% endraw %}
    method_parameter_exists:
      parameter: "ipam_url"
  register: method_parameter_exists
- debug: msg="Result:{{ method_parameter_exists.value }}"
```

The output is as follows:

```
TASK [Check if a method parameter called 'ipam_url' exists (method_parameter_exists)] ***
ok: [localhost]

TASK [debug] *******************************************************************
ok: [localhost] => {
    "msg": "Result:True"
}
```

It should be noted that the return from each of these tasks (stored by the *register* keyword) is a hash, and value of the return is referenced using the *value* key of this hash, for example `method_parameter_exists.value`.

#### Reading Service Dialog Values as Input Parameters
It is often the case that the values input into a service dialog should be passed to an Ansible playbook method somewhere in the workflow. A typical example is when calling an Ansible playbook method from the VM Provision state machine, where the VM provision has been initiated from a service catalog.

The service dialog entries are stored in the service request object’s options hash `:dialog` key, the value of which is itself a hash of dialog element name/value pairs. 

From the VM Provision state machine this is accessible from `$evm.root['miq_provision'].miq_provision_request.options`, for example:

```
$evm.root['miq_provision'].miq_provision_request.options[:dialog] = {
"dialog_service_name" => "New Engineering VM", 
"dialog_vm_name" => "pemcg-eng-03", 
"dialog_option_0_cores_per_socket" => 2, 
"dialog_option_0_vm_memory" => 2048, 
"dialog_option_0_hostname" => "pemcg-eng-03.lon.redhat.com", "Array::dialog_tag_0_department" => "Classification::1000000000046", 
"password::dialog_option_0_root_password" => "********"
}
```

To inject the `cores_per_socket` value from the service dialog as an input parameter using substitution syntax would therefore require the following input parameter value:

```
${/#miq_provision.miq_provision_request.get_option(:dialog).fetch(dialog_option_0_cores_per_socket)}
```

### Encrypted Input Parameters
The parameters passed to a playbook method are often encrypted, either by definition as a “password” data type in the list of input parameters, or by being encrypted elsewhere in a workflow.

#### Input Parameter ‘password’ Data Type
An input parameter can be defined as being of type “password”, for example:


![input_params](/assets/images/blog/input_params-embedded-2.5.jpg)


A parameter of this type is decrypted automatically and is available to the playbook as the named extra variable, for example {% raw %}"{{ scrambled_this }}"{% endraw %}. It should be noted that an input parameter that has the text string “password” anywhere in the name will not be passed as a method parameter, and so will not appear in the list of method parameters returned by the `get_method_parameters` function. The variable will however be available as an extra_var with the password value decrypted correctly.

#### Password Defined Earlier in Workflow
A variable encrypted earlier in the workflow (for example when input into a service dialog) can generally be identified as having a name prefixed by the string “password::”. This signifies that the object is of type *MiqPassword*. 

A password object of this type can be used as an input parameter if it is passed as a string data type, also prefixed by the string “password::”. The encrypted value will be automatically decrypted and is usable by the playbook as the named extra variable.

For example, to inject the `root_password` value from the previous service dialog using substitution syntax, an input parameter should be defined with a string data type and the following input parameter value:
 
 ```
 password::${/#miq_provision.miq_provision_request.get_option(:dialog).fetch(password::dialog_option_0_root_password)}
 ```

A screenshot of these input parameters for illustration is as follows:

![input_params](/assets/images/blog/input_params-embedded-2.6.jpg)

## Summary
In part two of this series we have looked at how inventory hosts are defined for embedded Ansible playbook methods and services. We have also seen how input parameters can be passed to playbook services and methods and decrypted if necessary, and how to retrieve and use service dialog element values.

Each of these techniques is usable for standalone playbooks, however the real benefit of embedded Ansible comes when using playbook methods as part of a larger automation workflow. Part three will examine how a playbook can interact with other components in an automation workflow.