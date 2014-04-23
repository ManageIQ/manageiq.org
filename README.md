# ManageIQ website

To get started, you need to have Ruby and Ruby Gems installed, as well
as "bundler".


## Initial setup

### Step 1: Check it out

Check out this this git repository by running:
`git clone git@gitlab.osas.lab.eng.rdu2.redhat.com:osas/manageiq-site.git`

When the git clone is done, run `cd manageiq-site` to change to the
checked out directory.

### Step 2: Set it up

Make sure you have `sudo` rights on your computer running Fedora, RHEL,
or CentOS.

Once you do, simply run `./setup.sh`.

## Step 3 to ∞: Run a local server

1. Type `./run-server.sh`

2. Next, browse to <http://0.0.0.0:4567>

3. Edit!

   When you edit files (pages, layouts, CSS, etc.), the site will
   dyanmically update in development mode. (There's no need to refresh
   the page, unless you get a Ruby error.)


## Customizing your site

The site can be easily customized by editing `data/site.yml`.


## Adding a Post

To add a post to the community blog (or any blog managed by middleman) use:

```
bundle middleman article TITLE
```


## Build your static site

After getting it how you want, you can build the static site by running:

`bundle exec middleman build`

(If you have middleman in your path, you can just run `middleman build`.)


## Deploying

### Setting up deployment

FIXME: Right now, please reference <data/site.yml>

### Actual deployment

After copying your public key to the remote server and configuring your
site in <data/site.yml>, deployment is one simple command:
```
bundle exec middleman deploy
```


### Add new features (parsers, etc.)

Simply add a new `gem 'some-gem-here'` line in the `Gemfile` and run
`bundle install`


## More info

For more information, please check the excellent
[Middleman documentation](http://middlemanapp.com/getting-started/).
