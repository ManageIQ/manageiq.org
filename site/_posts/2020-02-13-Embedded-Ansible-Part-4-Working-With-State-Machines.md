---
title: "Embedded Ansible — Part 4, Working With State Machines"
author: Peter McGowan
date: 2020-02-14
comments: true
published: true
tags: tutorials
---

Parts [two](https://www.manageiq.org/blog/2020/02/Embedded-Ansible-Part-2-Passing-Parameters-Into-A-Playbook/) and [three](https://www.manageiq.org/blog/2020/02/Embedded-Ansible-Part-3-Ansible-In-An-Automation-Workflow/) of this series looked at passing input parameters into playbooks, and how to work with the Automate workspace. This article discusses how an Ansible playbook can be effectively used in a state machine.

## Working with State Machines

A state machine is a specially constructed Automate class that comprises a sequence of states. Each state typically runs a Ruby or Ansible playbook method, and progression through the state machine is only achieved as each state completes successfully. Individual states can be periodically retried, which gives a state machine the ability to initiate a long-running asynchronous task, followed by a retrying check-completed stage to monitor for task completion. 

A state machine is the best way to model a workflow in ManageIQ Automate.

#### State Variables
The Ruby and Ansible playbook methods in a state machine can share values by using *state variables* (often referred to as *state_vars*). State variables persist throughout the life of an active state machine — even between state retries — whereas attributes saved to `$evm.root` are more ephemeral and do not persist if a state schedules a retry of itself.

As mentioned in [part one](https://www.manageiq.org/blog/2020/02/Embedded-Ansible-Part-1-Built-In-Roles/) of this series there are four functions in the *manageiq-automate* role that can be used to access state variables when an Ansible playbook method is running as part of a state machine. These are:

```
get_state_var
set_state_var
state_var_exists
get_state_var_names
```

For illustration of the use of these functions, a prior Ruby method in the state machine is assumed to have defined two state variables using the following lines:

```
$evm.set_state_var(:request_id, '8088')
$evm.set_state_var(:task_id, '8086')
```

<br/>
##### get_state_var
The *get_state_var* function can be used to get the value of a previously saved state variable, for example:

```
- name: Get the value of the "request_id" state var (get_state_var)
  manageiq_automate:
    workspace: {% raw %}"{{ workspace }}"{% endraw %}
    get_state_var:
      attribute: "request_id"
  register: state_var
- debug:
    msg: Result = {% raw %}{{ state_var.value }}{% endraw %}
```

The output is as follows:

```
TASK [Get the value of the "request_id" state var (get_state_var)] *************
ok: [localhost]

TASK [debug] *******************************************************************
ok: [localhost] => {
    "msg": "Result = 8088"
}
```
<br/>
##### set_state_var
The *set_state_var* function can be used to set a state variable, for example:

```
- name: Set a "job_id" state var (set_state_var)
  manageiq_automate:
    workspace: {% raw %}"{{ workspace }}"{% endraw %}
    set_state_var:
      attribute: "job_id"
      value: "68008"
```

A subsequent Ruby method in the state machine can retrieve the saved state_var in the following way:

```
$evm.log(:info, "Saved job_id from playbook = #{$evm.get_state_var(:job_id)}")

...<AEMethod step3> Saved job_id from playbook = 68008
```
<br/>
##### state_var_exists
The *state_var_exists* function tests whether a state variable has been defined, and returns a boolean result accordingly, as follows:

```
- name: Check whether a "task_id" state var exists (state_var_exists)
  manageiq_automate:
    workspace: {% raw %}"{{ workspace }}"{% endraw %}
    state_var_exists:
      attribute: "task_id"
  register: state_var_exists
- debug: msg="Result:{{ state_var_exists.value }}"
```

The output is as follows:

```
TASK [Check whether a "task_id" state var exists (state_var_exists)] ***********
ok: [localhost]

TASK [debug] *******************************************************************
ok: [localhost] => {
    "msg": "Result:True"
}
```
<br/>
##### get_state_var_names
The *get_state_var_names* function can be used to get the list of state variables that have been defined so far in the state machine’s workflow, for example:

```
- name: Get the list of state vars (get_state_var_names)
  manageiq_automate:
    workspace: {% raw %}"{{ workspace }}"{% endraw %}
    get_state_var_names: yes
  register: get_state_var_names
- debug: msg="Result:{{ get_state_var_names.value }}"
```

The output is as follows:

```
TASK [Get the list of state vars (get_state_var_names)] ************************
ok: [localhost]

TASK [debug] *******************************************************************
ok: [localhost] => {
    "msg": "Result:['job_id', 'task_id', 'request_id']"
}
```
<br/>
#### State Retries
A state retry is triggered by the Ruby or Ansible playbook method running in that state. An Ansible playbook method can force a state retry using the *set_retry* function, for example:

```
 tasks:
   - name: Get the value of ae_state_retries
     manageiq_automate:
       workspace: {% raw %}"{{ workspace }}"{% endraw %}
       get_attribute:
         object: root
         attribute: "ae_state_retries"
       register: ae_state_retries
   - debug:
       msg: State retry number {{ ae_state_retries.value }}

   - name: Set state status to retry
     manageiq_automate:
       workspace: {% raw %}"{{ workspace }}"{% endraw %}
       set_retry:
         interval: 60
     when: ae_state_retries.value|int < 3
```
<br/>
### Passing Values Between Successive Playbook or Ruby Methods in ManageIQ Ivanchuk (5.11.0.28)

Ivanchuk has added the capability for values to be saved from a playbook using the `set_stats` module so that any follow-on Ruby or Ansible methods in a state machine can also access them. The following code sample shows a playbook that has retrieved IP details which are in a hash called *ipam_return*. The example shows how the playbook can use *set_stats* to copy the hash keys and their values back to the state machine workspace. 

```
- name: Save IPAM detail back to the workspace
  set_stats:
    data:
      ip_addr: {% raw %}"{{ ipam_return.ipaddress }}"{% endraw %}
      netmask: {% raw %}"{{ ipam_return.netmask }}"{% endraw %}
      gateway: {% raw %}"{{ ipam_return.gateway }}"{% endraw %}
```

A follow-on Ruby method in the workflow can access these variables as state_vars prefixed by the string “ansible_stats_”, for example:

```
$evm.log(:info, "Value of ip_addr from Ansible = #{$evm.get_state_var('ansible_stats_ip_addr')}")
$evm.log(:info, "Value of netmask from Ansible = #{$evm.get_state_var('ansible_stats_netmask')}")
$evm.log(:info, "Value of gateway from Ansible = #{$evm.get_state_var('ansible_stats_gateway')}")

...<AEMethod state_2> Value of ip_addr from Ansible = 192.168.1.44
...<AEMethod state_2> Value of netmask from Ansible = 255.255.255.0
...<AEMethod state_2> Value of gateway from Ansible = 192.168.1.254
```
<br/>
Any state machine state_vars that are prefixed by the string “ansible_stats_”  will be automatically injected into any follow-on playbook method as extra_vars (without the “ansible_stats_” prefix). For example, a follow-on Ansible playbook can access these example IPAM-related variables as normal {% raw %} "{{ var }}" {% endraw %} style variables as follows:

```
- name: print ip_addr
  debug:
    msg: {% raw %}"ip_addr is {{ ip_addr }}"{% endraw %}
- name: print netmask
  debug:
    msg: {% raw %}"netmask is {{ netmask }}"{% endraw %}
- name: print gateway
   debug:
    msg: {% raw %}"gateway is {{ gateway }}"{% endraw %}


TASK [print ip_addr] ***********************************************************
ok: [localhost] => {
    "msg": "ip_addr is 192.168.1.44"
}

TASK [print netmask] ***********************************************************
ok: [localhost] => {
    "msg": "netmask is 255.255.255.0"
}

TASK [print gateway] ***********************************************************
ok: [localhost] => {
    "msg": "gateway is 192.168.1.254"
}
```

## Summary
This article has shown how embedded Ansible playbooks can form an integral part of a ManageIQ automation workflow that uses a state machine.
