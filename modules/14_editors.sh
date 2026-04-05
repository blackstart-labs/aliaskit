#!/usr/bin/env bash
# CATEGORY: Editors
# MODULE: editors

## v
# @desc  Vim shorthand
# @usage v <file>
# @example v config.yaml
alias v='vim'

## n
# @desc  Nano shorthand
# @usage n <file>
# @example n script.sh
alias n='nano'

## m
# @desc  Micro shorthand (if installed)
# @usage m <file>
# @example m doc.txt
alias m='micro'

## c
# @desc  VS Code shorthand
# @usage c [path]
# @example c .
alias c='code'

## c.
# @desc  Open VS Code in current directory
# @usage c.
# @example c.
alias c.='code .'
