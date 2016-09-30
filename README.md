# ManageIQ.org website

WIP overhaul of ManageIQ.org

## Contributing


## Deploying
The system is deployable using the miq command that you can find in /bin/miq
Commands:
  miq build <all|guides|site|reference>   # Build or process an aspect of the site
  miq deploy                              # Prepares and deploys site. Don't use unless your changes have been pushed to repos.
  miq help [COMMAND]                      # Describe available commands or one specific command
  miq reset <all|guides|site|reference>   # Reset repo(s) to clean state
  miq serve                               # Does Jekyll serve with appropriate args
  miq update <all|guides|site|reference>  # Pull changes from origin repos
