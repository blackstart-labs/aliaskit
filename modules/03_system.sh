#!/usr/bin/env bash
# CATEGORY: System Info & Monitoring
# MODULE: system

## cls
# @desc  Clear the terminal screen
# @usage cls
# @example cls
alias cls='clear'

## c
# @desc  Clear the terminal screen (short form)
# @usage c
# @example c
alias c='clear'

## q
# @desc  Exit the current terminal session
# @usage q
# @example q
alias q='exit'

## reload
# @desc  Reload ~/.bashrc without restarting the terminal
# @usage reload
# @example reload
alias reload='source ~/.bashrc && echo "✔ bashrc reloaded"'

## df
# @desc  Show disk usage of all mounted filesystems, human-readable
# @usage df
# @example df
alias df='df -h'

## free
# @desc  Show RAM usage in human-readable format
# @usage free
# @example free
alias free='free -h'

## path
# @desc  Print all entries in $PATH, one per line
# @usage path
# @example path
alias path='echo -e ${PATH//:/\\n}'

## now
# @desc  Print current time (HH:MM:SS)
# @usage now
# @example now
alias now='date +"%T"'

## today
# @desc  Print current date (DD-MM-YYYY)
# @usage today
# @example today
alias today='date +"%d-%m-%Y"'

## datetime
# @desc  Print current date and time (YYYY-MM-DD HH:MM:SS)
# @usage datetime
# @example datetime
alias datetime='date +"%Y-%m-%d %T"'

## cpu
# @desc  Show current CPU usage summary
# @usage cpu
# @example cpu
alias cpu='top -bn1 | grep "Cpu(s)"'

## mem
# @desc  Show RAM usage (Mem line from free)
# @usage mem
# @example mem
alias mem='free -h | grep Mem'

## topcpu
# @desc  Show top 15 processes by CPU usage
# @usage topcpu
# @example topcpu
alias topcpu='ps aux --sort=-%cpu | head -15'

## topmem
# @desc  Show top 15 processes by memory usage
# @usage topmem
# @example topmem
alias topmem='ps aux --sort=-%mem | head -15'

## ports
# @desc  List all listening ports and their services
# @usage ports
# @example ports
alias ports='ss -tuln'

## myip
# @desc  Show your public IP address
# @usage myip
# @example myip
alias myip='curl -s ifconfig.me && echo'

## localip
# @desc  Show your local network IP address
# @usage localip
# @example localip
alias localip='hostname -I | cut -d" " -f1'

## sysinfo
# @desc  One-line system overview: CPU cores, RAM, disk free
# @usage sysinfo
# @example sysinfo
alias sysinfo='echo "CPU:$(nproc) cores | RAM:$(free -h | awk "/Mem/{print \$2}") | Disk:$(df -h / | awk "NR==2{print \$4}") free"'

## aliases
# @desc  View ~/.bash_aliases with pagination
# @usage aliases
# @example aliases
alias aliases='cat ~/.bash_aliases | less'

## ealias
# @desc  Edit ~/.bash_aliases in your default editor
# @usage ealias
# @example ealias
alias ealias='${EDITOR:-nano} ~/.bash_aliases'