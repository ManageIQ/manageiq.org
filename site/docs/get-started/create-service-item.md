---
layout: doc_page
title: Create A Self-service Catalog Item
---

Go to ***Services → Catalogs***.

Currently there are no catalogues, but we will be creating a new one
now. We need a few things:

-   A service dialog to gather user input
-   An automation workflow that will be responsible of creating the VM
-   A catalog to show the user
-   A catalog item within that catalog to put all together

###Creating the dialog

Let’s start creating the dialog. Dialogs are part of Automate, so go to
***Automate → Customization*** and select ***Service Dialogs*** in the
accordion.

Press ***Configuration → Add a New Dialog***

Choose a name for it

Add a Tab, a Box and a Element to your Dialog using the + symbol on a
circle on top.

### Creating a catalog####

You need a catalog for the user to choose from it. Let’s create a
catalog with a basic name and descrition

Go to ***Services → Catalogs*** and choose ***Catalogs*** in the accordion.

Press ***Configuration → Add a New Catalog*** and fill the fields. As there
are no catalog items yet, you won’t see any in the Assign Catalog Items
tabs.

### Creating a catalog item####

Let’s add all together, so the user can order a service instead of doing
a traditional provisioning.

Navigate to ***Services → Catalogs*** and Select ***Catalog Items*** in the
accordion, and within the catalog you just created

Add a new ***Configuration → Add a New Catalog Item***

Select * Google* as Catalog Item type and you will get a dialog to
configure what will happen when the customer orders the item. Don’t
forget to select DIsplay in Catalog to be make it available.

Fill the description in details and fill ***Request Info*** with the same
data you did in the traditional provisioning.

When finished, press ***Add***

Now you will be able to see your service catalog and the item will be
orderable within ***Service Catalogs*** in the accordion.

### Ordering a service####

We could press the ***Order*** button in the catalog, the dialog will
appear, and after you will have your service running.

But we can make it easier for the end user to order it, so let’s change
to the user we created at the beginning of this guide.

Press ***Administrator|EVM*** in the upper right part of the screen, and
then ***Logout.***

Once you are logged out, enter ***https://\[your IP ADDRESS\]\]/self\_service*** in your web browser. This is the self service
interface, that can be used to isolate you from the nuances of the
underlying infrastructure.

## Next: [Where to go from here](/docs/get-started/where-to-go-from-here)

