# Git Toys

This is a simple repository containing tricks to work with Git

## Pre-commit message

Thanks to this wonderful article about [How To Prefix Your Commit Message With a Ticket Number Automatically](https://medium.com/better-programming/how-to-automatically-add-the-ticket-number-in-git-commit-message-bda5426ded05)

[![asciicast](https://asciinema.org/a/350101.svg)](https://asciinema.org/a/350101)

I've fixed some compatiblity issues with the new version of pre-commit. To install:

```sh
$ brew install pre-commit
#
$ cat scripts/git-init.sh >> ~/.zshrc
$ source ~/.zshrc
#
# From now on, to init a repo
$ git-init

# To install the commit hook into an existing repository
$ git-install-commit-hook
```

From now on, while applying GitFlow, your every commit messages will be prefixed with Ticket Numbers.

## Get changes 

I want to grab changes described by ticket numbers. It must be fun if I can make JQL (Jira Query Language) on the fly.

To install:

```sh
$ cat scripts/git-get-changes.sh >> ~/.zshrc
#
$ source ~/.zshrc 
#
```

Usage:

```sh
$ git-get-changes d4655069
key in (DEV19-20898,DEV19-21010,DEV19-22016,DEV19-22018,DEV19-22420,DEV19-22470,DEV19-22568,DEV19-22670,DEV19-23036,DEV19-23399,DEV19-23431,DEV19-23541,DEV19-23561,DEV19-23714,DEV19-23742,DEV19-23859,DEV19-23903,DEV19-23906,DEV19-23923,DEV19-23924,DEV19-24007,DEV19-24056,DEV19-24199,DEV19-24225,DEV19-24346)
```

