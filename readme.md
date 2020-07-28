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
