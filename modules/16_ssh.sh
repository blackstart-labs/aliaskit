#!/usr/bin/env bash
# CATEGORY: SSH
# MODULE: ssh

## sshconfig
# @desc  Edit SSH config file
# @usage sshconfig
# @example sshconfig
alias sshconfig='${EDITOR:-nano} ~/.ssh/config'

## keygen
# @desc  Generate a new robust Ed25519 SSH key
# @usage keygen <email>
# @example keygen user@example.com
keygen() { ssh-keygen -t ed25519 -C "$1"; }

## pubkey
# @desc  Print out your public SSH key
# @usage pubkey
# @example pubkey
alias pubkey='cat ~/.ssh/id_ed25519.pub || cat ~/.ssh/id_rsa.pub'

## copypub
# @desc  Copy public SSH key to clipboard (requires xclip)
# @usage copypub
# @example copypub
alias copypub='cat ~/.ssh/id_ed25519.pub | xclip -selection clipboard || cat ~/.ssh/id_rsa.pub | xclip -selection clipboard'
