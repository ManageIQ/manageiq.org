---
title: UI login button fails after git pull
author: jrafanie
date: 2015-06-05 14:10:00 UTC
tags: collaboration
comments: true
published: true
---

If you run `git pull` on your ManageIQ appliance to pull down updates, restart and find that you can't login in the web UI as the buttons are unresponsive, it's likely you're running in production mode, some assets were added or changed and haven't been precompiled.

Note: It's possible that the "symptoms" could be on other pages of the web application but usually involve UI elements looking "weird" or buttons/links are unresponsive.

Warning: Running `git pull` could possibly break your current appliance so it's not advised to run `git pull` if you haven't taken a vm snapshot and you're not comfortable with `git`.

#### There are two solutions to fix your assets:

##### (User) Clear and precompile all assets, including any new/changed ones.
  * `vmdb && bundle exec rake evm:compile_assets`
  * `service evmserverd restart`

##### (Developer) Run in development mode and don't precompile assets.
  * Add the following to a new file: `/etc/default/evm_productization`
    `export RAILS_ENV=development`
  * Clear precompiled assets: `vmdb && bundle exec rake assets:clear`
  * Finally, reboot the OS

##### General ManageIQ appliance git pull procedure:

* `vmdb && git stash`
* `git pull`
* `bundle exec rake db:migrate` # optional[1]
* `vmdb && bundle exec rake evm:compile_assets` # optional[2]
* `git stash pop` # Note [3]

[1] If any new database migrations were pulled down.

[2] Not required if you switched to "development" mode as above or if no assets were added/changed.

[3] Manually resolve any git conflicts when trying to re-apply any changes in your stash.

Please discuss this on [talk](http://talk.manageiq.org/) if you have any corrections.
