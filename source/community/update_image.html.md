
## Updating your ManageIQ image

The ManageIQ image you have downloaded and deployed contains a copy of the
source code cloned from github.

To update the application to the latest revision, you can follow these
simple steps:

1. SSH into the image - the username `root` has the default password `smartvm`
   (you should change this password)
2. The ManageIQ source code is in `/var/www/miq/` The main Ruby on Rails
   application is in `/var/www/miq/vmdb` - updating the application is as
   simple as running `git pull` - you now have the latest ManageIQ source code.

To propose a pull request, you can now fork ManageIQ on github, and push to
your fork before proposing:

```
git remote rename origin upstream
git remote add https://github.come/[username]/manageiq origin
git fetch -a
git checkout upstream/master
git checkout -b [my_branch]
... make changes here ...
git push -u origin [my_branch]
```

See our guide to [submitting patches](patches) for more details.
