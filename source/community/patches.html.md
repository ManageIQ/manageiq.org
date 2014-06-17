## Submitting a patch

ManageIQ is primarily written in Ruby, and is hosted on GitHub.
All patches to ManageIQ should be submitted via pull requests on GitHub.
The patch approval process is lightweight - patches and feature
additions should be discussed on the [developer
forum](http://talk.manageiq.org) and any member of the maintainer team
can accept and integrate a patch

For those new to GitHub, the basic process for submitting a pull request is:

1.  On github.com, fork [the manageiq
    repository](https://github.com/ManageIQ/manageiq) into your own namespace

2.  Clone the fork to your local server (or add it as a remote [inside the
    ManageIQ image](image\_update):

    ```shell
    git clone https://github.com/[username]/manageiq
    git remote add upstream https://github.com/ManageIQ/manageiq
    git fetch upstream
    ```

    In general, it is better to make changes on a branch so that you can easily
    keep the `master` branch of your fork in sync with upstream. When you make
    changes, to commit them as a new branch, use:

    ```shell
    git checkout -b [branchname]
    git add [changed_file]
    git commit
    ```

3.  Ensure that you are not accidentally pushing "work in progress" branches by
    setting the push policy to simple rather than mirrored:

    ```shell
    git config --global push.default simple
    ```

4.  Ensure your work is always going to apply cleanly to the tip of master
    upstream by merging often and pushing back to your fork, and rebasing your
    branch to the tip of master:

    ```shell
    git checkout master
    # Sync local master branch with upstream master
    git merge upstream/master
    # Sync forked master branch with upstream master
    git push
    # Replay local branch on top of new master, fixing any merge conflicts
    git checkout [branchname]
    git rebase master
    ```

    When you have finished your work, consider reworking your branch to make
    changes easier to review upstream. Use `git rebase -i` to reorder, squash or
    delete small commits on your branch to make something nice and clean.
    {: .notice-note}

5.  When you are ready to submit your work for review, push your branch to
    GitHub:

    ```shell
    git push -u origin [branchname](:[remote branchname] if name needs to change)
    ```

6.  In github.com/[username]/manageiq, select the branch you would like to push
    to upstream, and click on "Submit a pull request". Add a description of the
    change you're making, and why, and track the progress of the pull request in
    [the upstream repository](https://github.com/ManageIQ/manageiq)

7.  **Congratulations**: You've submitted a pull request!

    Soon your patch will be reviewed by a ManageIQ team member.


Usually, pull requests will get feedback, and it is a good idea to integrate
that into your patch. The easiest way to do this is to update your local
branch, commit and push a new version to `origin/[branchname]`.

[ManageIQ Coding Style and Standards](/documentation/development/coding_style_and_standards)

