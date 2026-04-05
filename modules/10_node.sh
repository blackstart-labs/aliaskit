#!/usr/bin/env bash
# CATEGORY: Node/JS
# MODULE: node

## ni
# @desc  Install npm packages
# @usage ni
# @example ni
alias ni='npm install'

## nid
# @desc  Install a dev dependency
# @usage nid <pkg>
# @example nid typescript
alias nid='npm install -D'

## nr
# @desc  Run an npm script
# @usage nr <script>
# @example nr dev
alias nr='npm run'

## nrm
# @desc  Remove node_modules and reinstall
# @usage nrm
# @example nrm
alias nrm='rm -rf node_modules package-lock.json && npm install'

## y
# @desc  Yarn shorthand
# @usage y
# @example y install
alias y='yarn'

## ya
# @desc  Yarn add package
# @usage ya <pkg>
# @example ya react
alias ya='yarn add'

## p
# @desc  PNPM shorthand
# @usage p
# @example p install
alias p='pnpm'
