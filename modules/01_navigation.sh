#!/usr/bin/env bash
# CATEGORY: Navigation & Directory
# MODULE: navigation

## ..
# @desc  Go up one directory
# @usage ..
# @example ..
alias ..='cd ..'

## ...
# @desc  Go up two directories
# @usage ...
# @example ...
alias ...='cd ../..'

## ....
# @desc  Go up three directories
# @usage ....
# @example ....
alias ....='cd ../../..'

## ~
# @desc  Go to home directory
# @usage ~
# @example ~
alias ~='cd ~'

## -
# @desc  Go back to previous directory (toggle)
# @usage -
# @example -
alias -- -='cd -'

## home
# @desc  Go to home directory
# @usage home
# @example home
alias home='cd ~'

## dev
# @desc  Go to your dev/projects directory
# @usage dev
# @example dev
alias dev='cd "${ALIASKIT_DEV_DIR:-$HOME/dev}"'

## desk
# @desc  Go to Desktop
# @usage desk
# @example desk
alias desk='cd ~/Desktop'

## dl
# @desc  Go to Downloads folder
# @usage dl
# @example dl
alias dl='cd ~/Downloads'

## docs
# @desc  Go to Documents folder
# @usage docs
# @example docs
alias docs='cd ~/Documents'

## mkcd
# @desc  Create a directory and cd into it immediately
# @usage mkcd <dirname>
# @example mkcd my-project
mkcd() { mkdir -p "$1" && cd "$1" || return 1; }