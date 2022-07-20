---
title: Using Tags for Access Control
date: 2017-10-13
tags: cloudforms automate
author: Christian Jung
---

Most systems use Access Control Lists (ACL’s) to manage user’s access to objects. Common examples are ACL’s for file systems, LDAP, Web Servers and many more. Anyone who has had to create ACL rules and maintain them knows how complicated this can be. To make access control easy again, CloudForms uses tags. If the group a user belongs to has the same tag as the accessed object, access is granted, if not, access is denied.

This sounds simple and straightforward, but there are a couple of things to know about tags which make them very powerful, but also a bit tricky.

Let’s start with a basic explanation of common objects in CloudForms:

* Users: users can be created in the internal database or retrieved from external authentication. Meta data, including the full name, email address, password (in the case of database authentication) and relationship to one or more groups, is associated to the user.

* Groups: every user is a member of one or more groups. Groups are used to define the scope or visibility of a user. For example, a member of the “Engineering Department” group can be granted access to all virtual machines (VMs) owned by the engineering department. Or a member of the group “Operations” could be granted access to all VMs running in the production environment.

* Roles: every group is associated to exactly one role, which describes the privileges granted to that group. Roles are used to define which actions a user is allowed to perform. For example, an “Operator” role could include permissions to start or stop VMs, re-configure them, etc. A “Self Service” role could allow a user to order new VMs and manage them.

The combination of groups and roles defines which actions are allowed and on which objects. An “Operator” role in the “Engineering Department” group would have the same privileges as an “Operator” role in the “Finance Department” group because they share the same role, but they would see different objects because they are not in the same group.

Let’s discuss a couple of examples to get familiar with this model.

## Setting the Stage ##

As an administrator, navigate to Settings > Configuration and click on “Access Control” in the pane on the left, and then click on “Roles”. Add a new role by clicking on Configuration > Add a New Role and name it “Self Service”. Granting privileges to the role is very nicely implemented. The tree on the right represents all of the menus and actions a user can perform in the UI. Enabling (checking) a feature grants the privilege to the role. By drilling down into sub folders, very fine grained permissions can be granted (e.g. power on, but not power off).

For the purpose of this demo, a role with full access to “Cloud Intel”, “Services”, “Compute”, “Settings” and “Access Rules for all Virtual Machines” – but no other privileges – is created.

## Example Group “Engineering” ##

In the next step, a group called “Engineering” is created. All members of this group will have the “Self Service” role assigned, which was created in the previous step. For now, we skip tags and filters and keep them all unchecked.

## Example User “Joe Doe” ##

In the last step a user “Joe Doe” is created. This will be a local user (stored in the database) and is a member of the “Engineering” group.

## Results ##

If Joe Doe logs into the web interface and navigates to Providers > Hosts > Virtual Machines or Providers > Hosts > Service Catalogs he will see all of the existing objects. This should not be a surprise, because he is assigned to a group which doesn’t have any restrictions on visibility.

## Granting Access to Individual Objects ##

For our next step, we want to restrict Joe Doe’s visibility to only those VMs associated to the Engineering Department. To accomplish this, we will restrict Joe Doe to only see objects tagged as Department/Engineering. But first, we will learn a little bit about tags and tag categories.

## Tags and Tag Categories ##

Tags are any string that you would like to describe a particular characteristic of an object. The best tags are clearly descriptive and easy for other users to understand. For example, Engineering and Finance are clearly descriptive and easy to understand tags that describe the part of the organization to which a user or VM belongs. Tag categories are groupings of related tags. For example, Engineering and Finance belong to the Department tag category. Using tag categories you can group related tags together.

CloudForms comes with a default set of tags and tag categories that you can use, or you can create your own custom taxonomy of tags. In this way, tags are very flexible. For this demonstration, we are going to work with the default set of tags and tag categories.

## Assigning a Tag to an Object ##

Navigate to the “Engineering” group, edit it and select the Department/Engineering tag.

When changing groups, roles or tenants, the user doesn’t need to logout and login again. Changes to groups and roles are reflected immediately in CloudForms, even if the user is already logged in. If Joe now navigates to view VMs, only those VMs tagged with Department/Engineering will be shown. In this case, none!

## First Gotcha ##

You might have noticed, after setting the Department/Engineering tag for the group, no objects are showing up in the UI. The scope for the group, and hence the user, was just limited to objects which are tagged as Department/Engineering – and no objects have been tagged so far. We now need to tag all objects which should be visible for the user. An object, like a VM, can be tagged by using the Policy > Edit Tags menu. After tagging a VM and navigating to the VM list, the VM will show up in the user interface.

This process works the same way for all other objects. If Joe Doe should be able to order a specific item from the service catalog, the item or bundle has to be tagged with the Department/Engineering tag to make it visible.

## Working with Multiple Tags ##

If a VM or other object has to be visible to multiple groups, we can add all the necessary tags to the object. For instance, adding the Department/Finance tag to a VM, makes the VM available to members of the “Finance Department” group, which also has that tag.
Tags within the same tag category are processed as logical OR relationships. That is, if at least one tag of the group matches with at least one tag of the object, access is granted. For example, if a user is in a group with the Department/Engineering or Department/Finance tag, they will see the object. Users which are in a group with neither the Department/Engineering or Department/Finance tag, will not see the object. This also applies, if the object isn’t tagged with any tag – which means, nobody will see it.

## Second Gotcha ##

Tag restrictions also apply to Super Administrators! If you restrict the visibility of a Super Administrator by assigning them tags, they will no longer see those objects which do not have matching tags! Since Super Administrators can always fix tag assignments or remove the tags for their group, they can restore full visibility, but it’s probably best to make sure you never limit Super Administrators.

## Working with Multiple Tag Categories ##

When working in more complex environments, multiple tag categories must be used. For example, in addition to separating VMs by departments, tags can be used to separate VMs in different stages of deployment (Development, QA, Production). However, as soon as multiple tag categories are introduced, things get a bit more complicated.

## Third Gotcha ##

When using multiple tag categories, there is a logical AND between tags in multiple categories. This is probably best explained with an example. CloudForms comes with a default tag category called Environment with tags like Development and Production.

If the “Engineering” group, of which Joe Doe is a member, gets the additional tag Environment/Development, Joe will only see objects which have the Department/Engineering tag and the Environment/Development tag.  A VM tagged as Department/Engineering and Environment/Production will be hidden from Joe.

|--------------------------------|------------------------------|------------------------------------------------------|
|Object Tags                     |Group Tags                    |Visible?                                              |
|--------------------------------|------------------------------|------------------------------------------------------|
|Department/Engineering          |Department/Engineering        |Yes, Tags match.                                      |
|--------------------------------|------------------------------|------------------------------------------------------|
|Department/Engineering          |                              |                                                      |
|AND                             |Department/Engineering        |Yes. At least one tag in the same category matches.   |
|Department/Finance              |                              |                                                      |
|--------------------------------|------------------------------|------------------------------------------------------|
|Department/Engineering          |                              |                                                      |
|AND                             |Department/Engineering        |No. Tags from multiple categories, so both must match.|
|Environment/Development         |                              |                                                      |
|--------------------------------|------------------------------|------------------------------------------------------|
|Department/Engineering          |Department/Engineering        |                                                      |
|AND                             |AND                           |No. Tags from multiple categories, so both must match.|
|Environment/Production          |Environment/Development       |                                                      |
|--------------------------------|------------------------------|------------------------------------------------------|
|Department/Engineering          |                              |                                                      |
|AND                             |Department/Engineering        |                                                      |
|Environment/Development         |AND                           |Yes. At least one tag in each tag category matches.   |
|AND                             |Environment/Development       |                                                      |
|Environment/Production          |                              |                                                      |
|--------------------------------|------------------------------|------------------------------------------------------|

This is very important and often causes confusion. As soon as you start tagging objects with tags from different tag categories, the logical AND comes into play!

## Conclusion: Think Before You Tag ##

There are a few rules we try to follow when we plan tagging:

* Don’t use tags for information which is already available as an attribute for the object. For example, tagging all Windows VMs as Operating System Windows is in most cases not a good idea. Since this information is already stored in an VM attribute, you can use a filter to find all of the Windows VMs.

* Try to minimize the number of tags and tag categories. Having a large number of categories and tags makes things more complicated.

* Think before you add a new tag or tag category. Besides increasing the number of tags or tag categories, you will have to tag all of the objects already in CloudForms.

* Try to use auto tagging where possible. Instead of manually tagging objects, write Automate code to do this for you or make use of the CloudForms REST API.

Tags are a very simple and yet powerful way to manage access control lists. Used properly, they can provide greater flexibility and manageability in CloudForms. For more information on tags and access control, see the following resources:

[Creating and Using Tags in Red Hat CloudForms] (<https://access.redhat.com/articles/421423>)
[Planning your CloudForms tagging taxonomy] (<https://www.youtube.com/watch?v=C5nBexDu2ug>)
