---
title: Dialog Field Refresh Overview
author: d-m-u
date: 2018-06-04
tags: collaboration developers tutorials
comments: true
published: true
---

We've had a number of changes to the way the service dialog fields refresh and we've had to keep backwards compatibility taken into account with each change. There are two systems in play at the moment: the older way of using the ```trigger_auto_refresh``` and ```auto_refresh``` dialog field columns. This was the cascading auto refresh system, in which a field on the top of the dialog would trigger anything below that was set to auto_refresh it until it hit another trigger. We used this system to protect against circular references: field a triggering field b, and b also triggering a, since the responding field had to be below that which was triggering it. 

As of [July 13, 2017](https://github.com/ManageIQ/manageiq/commit/ce2c1859e59f33decb6c4adf5efc5ce35d34dcb4) we now have an association that exists solely to store the information about which fields are linked. It is no longer cascading, but this introduces some notable behavior differences: we now must protect more explicitly against circular references since you can now link a field to trigger a field that appears above the triggering field on the dialog. Dialogs with circular references are not able to be imported, you'll get a flash message with the names of the fields to fix before re-importing the dialog. 

For backwards compatibility purposes, on dialog import, we collect from the YAML all associations in the dialog, whether denoted in the new way or the old, and create new associations for all of them. Since the old associations are no longer able to be created, if the dialog for import contains no information about old associations, we simply create the new associations as new associations. If you export a dialog, you will see, however, that those old column names are still present and may still have true values. But if a dialog is being exported from an older system that still has old associations and reimported on a newer system, we will honor the new associations over the older ones. That is, if a dialog is imported that contains both old style associations and the newer ones, we only take into account the newer ones (as of Friday, April 27th, 2018) since the new dialog editor will only create the new kind of associations and there is no way in the new editor to even view the old ones.

If you're interested, previous to 5.7.13, read about the way the auto-refresh worked [before we had guaranteed positioning of the fields taken into account](http://talk.manageiq.org/t/regarding-fields-that-utilize-auto-refresh/2315).