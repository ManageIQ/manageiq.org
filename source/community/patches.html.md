## Submitting a patch

ManageIQ is primarily written in Ruby, and is hosted on Github.
All patches to ManageIQ should be submitted via pull requests on Github.
The patch approval process is lightweight - patches and feature
additions should be discussed on the [developer
forum](http://talk.manageiq.org) and any member of the maintainer team
can accept and integrate a patch

For those new to github, the basic process for submitting a pull request is:

* On github.com, fork [the manageiq 
  repository](https://github.com/ManageIQ/manageiq) into your own namespace
* Clone the fork to your local server (or add it as a remote [inside the
  ManageIQ image](image_update):
```
git clone https://github.com/[username]/manageiq
git remote add upstream https://github.com/ManageIQ/manageiq
git fetch upstream
```
* In general, it is better to make changes on a branch so that you can easily 
  keep the `master` branch of your fork in sync with upstream. When you make
  changes, to commit them as a new branch, use:
```
git add [changed_file]
git commit -b [branchname]
```
* Ensure that you are not accidentally pushing "work in progress" branches by
  setting the push policy to simple rather than mirrored:
```
git config --global push.default simple
```
* Ensure your work is always going to apply cleanly to the tip of master
  upstream by merging often and pushing back to your fork, and rebasing your
  branch to the tip of master:
```
git checkout master
# Sync local master branch with upstream master
git merge upstream/master
# Sync forked master branch with upstream master
git push
# Replay local branch on top of new master, fixing any merge conflicts
git checkout [branchname]
git rebase master
```
* When you have finished your work, consider reworking your branch to make
  changes easier to review upstream. Use `git rebase -i` to reorder, squash or
  delete small commits on your branch to make something nice and clean
* When you are ready to submit your work for review, push your branch to
  github:
```
git push origin [branchname]:[branchname]
```
* In github.com/[username]/manageiq, seelct the commits you would like to push
  to upstream, and click on "Submit a pull request". Add a description of the
  change you're making, and why, and track the progress of the pull request in
  [the upstream repository](https://github.com/ManageIQ/manageiq)

Congratulations: You've submitted a pull request!

[ManageIQ Coding Style and Standards](https://github.com/ManageIQ/guides/blob/master/coding_style_and_standards.md)

* TODO: [ManageIQ Continuous Integration](CI server view)
