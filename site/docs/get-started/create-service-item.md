---
layout: doc_page
title: Create A Self-service Catalog Item
---

## Introduction ##

Go to ***Services → Catalogs***.

Currently there are no catalogs, but we will be creating a new one
now. We need a few things:

-   A service dialog to gather user input
-   An automation workflow that will be responsible of creating the VM
-   A catalog to show the user
-   A catalog item within that catalog to put all together

## Using the service catalog to create a service ##

### Creating the dialog ###

Let’s start creating the dialog. Dialogs are part of Automate, so go to
***Automate → Customization*** and select ***Service Dialogs*** in the
accordion.

Press ***Configuration → Add a New Dialog***

Choose a name for it

Dialogs require a Tab, a Box and a Element. The Dialog loads with a Tab and Box, so you will need to add an Element to your Dialog.

We will be adding a checkbox that prints "Are you sure?" with a checkbox, but we won't be doing anything with the answer...

![screenshot0044](/assets/images/docs/screenshot_0044.png){:.large_img}


### Creating a catalog ###

You need a catalog for the user to choose from it. Let’s create a
catalog with a basic name and description

Go to ***Services → Catalogs*** and choose ***Catalogs*** in the accordion.

Press ***Configuration → Add a New Catalog*** and fill the fields. As there
are no catalog items yet, you won’t see any in the Assign Catalog Items
tabs.

![screenshot0045](/assets/images/docs/screenshot_0045.png){:.large_img}

### Creating a catalog item####

Let’s add all together, so the user can order a service instead of doing
a traditional provisioning.

Navigate to ***Services → Catalogs*** and Select ***Catalog Items*** in the
accordion, and within it the catalog you just created

![screenshot0046](/assets/images/docs/screenshot_0046.png){:.large_img}


Add a new ***Configuration → Add a New Catalog Item***

Select *Google* as Catalog Item type and you will get a dialog to
configure what will happen when the customer orders the item. Don’t
forget to select Display in Catalog to be make it available.

![screenshot0047](/assets/images/docs/screenshot_0047.png){:.large_img}


Fill the description in details and fill ***Request Info*** with the same
data you did in the traditional provisioning.

![screenshot0048](/assets/images/docs/screenshot_0048.png){:.large_img}


When finished, press ***Add***

Now you will be able to see your service catalog and the item will be
orderable within ***Service Catalogs*** in the accordion.

![screenshot0049](/assets/images/docs/screenshot_0049.png){:.large_img}


### Ordering a service####

Go to the Service catalog again. Now you can see your catalog item as part of the catalog. You can order it pressing the ***Order*** below the icon.

![screenshot0050](/assets/images/docs/screenshot_0050.png){:.large_img}

A service item can be more complex than a single VM, including bundles and items that comprise different providers, and are provisioned through a series of automation workflows. 
The dialog we created will be used to gather information from the customer, hiding all the complexity of the details needed to actually deploy any of the components.

Services has their own life cycle on top of the lifecycle of its components. With the appropriate permissions you can see the resources associated to it in each moment

Ordering consists of different phases that are outside of the scope of this guide.

![screenshot0051](/assets/images/docs/screenshot_0051.png){:.large_img}



Press ***Administrator|EVM*** in the upper right part of the screen, and
then ***Logout.***

Once you are logged out, enter ***https://\[your IP ADDRESS\]\]/self\_service*** in your web browser. This is the self service
interface, that can be used to isolate you from the nuances of the
underlying infrastructure.

![screenshot0052](/assets/images/docs/screenshot_0052.png){:.large_img}

The Service UI allows for a more simple design for end users compared to the Operational UI.
![screenshot0053](/assets/images/docs/screenshot_0053.png){:.large_img}


![screenshot0054](/assets/images/docs/screenshot_0054.png){:.large_img}


## Next: [Where to go from here](/docs/get-started/where-to-go-from-here)

