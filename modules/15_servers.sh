#!/usr/bin/env bash
# CATEGORY: Servers
# MODULE: servers

## sc
# @desc  systemctl shorthand
# @usage sc <cmd> <service>
# @example sc status nginx
alias sc='sudo systemctl'

## scstart
# @desc  Start a service
# @usage scstart <service>
# @example scstart apache2
alias scstart='sudo systemctl start'

## scstop
# @desc  Stop a service
# @usage scstop <service>
# @example scstop mysql
alias scstop='sudo systemctl stop'

## screstart
# @desc  Restart a service
# @usage screstart <service>
# @example screstart nginx
alias screstart='sudo systemctl restart'

## scstatus
# @desc  Check service status
# @usage scstatus <service>
# @example scstatus ufw
alias scstatus='systemctl status'

## tailnginx
# @desc  Tail NGINX error logs
# @usage tailnginx
# @example tailnginx
alias tailnginx='sudo tail -f /var/log/nginx/error.log'

## tailapache
# @desc  Tail Apache error logs
# @usage tailapache
# @example tailapache
alias tailapache='sudo tail -f /var/log/apache2/error.log'
