#!/usr/bin/env bash
# CATEGORY: Process Management
# MODULE: process

## ps
# @desc  List all running processes (full format)
# @usage ps
# @example ps
alias ps='ps aux'

## psg
# @desc  Search running processes by name
# @usage psg <name>
# @example psg nginx
alias psg='ps aux | grep'

## killp
# @desc  Force kill a process by PID
# @usage killp <PID>
# @example killp 1234
alias killp='kill -9'

## fkill
# @desc  Kill a process by port or file
# @usage fkill <port|file>
# @example fkill 8080
alias fkill='fuser -k'