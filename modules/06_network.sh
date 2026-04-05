#!/usr/bin/env bash
# CATEGORY: Networking
# MODULE: network

## ping
# @desc  Ping a host 5 times
# @usage ping <host>
# @example ping google.com
alias ping='ping -c 5'

## pingg
# @desc  Quick internet check — ping Google 5 times
# @usage pingg
# @example pingg
alias pingg='ping -c 5 google.com'

## wget
# @desc  Download a file, resuming incomplete downloads automatically
# @usage wget <url>
# @example wget https://example.com/file.tar.gz
alias wget='wget -c'

## curl
# @desc  curl with automatic redirect following
# @usage curl <url>
# @example curl https://api.example.com/data
alias curl='curl -L'

## myip
# @desc  Show your public IP address
# @usage myip
# @example myip
alias myip='curl -s ifconfig.me && echo'

## localip
# @desc  Show local network IP address
# @usage localip
# @example localip
alias localip='hostname -I | cut -d" " -f1'

## ports
# @desc  List all open/listening ports
# @usage ports
# @example ports
alias ports='ss -tuln'

## listening
# @desc  Show TCP ports currently in listening state with process info
# @usage listening
# @example listening
alias listening='ss -tlnp'

## established
# @desc  Show all currently established TCP connections
# @usage established
# @example established
alias established='ss -tp state established'

## flush-dns
# @desc  Flush the systemd DNS resolver cache
# @usage flush-dns
# @example flush-dns
alias flush-dns='sudo systemd-resolve --flush-caches'

## ifconfig-simple
# @desc  Show all network interfaces with IP addresses (brief)
# @usage ifconfig-simple
# @example ifconfig-simple
alias ifconfig-simple='ip -brief addr'

## tracert
# @desc  Trace network path to a host
# @usage tracert <host>
# @example tracert google.com
alias tracert='traceroute'

## httpdump
# @desc  Capture HTTP/HTTPS traffic on all interfaces (requires sudo)
# @usage httpdump
# @example httpdump
alias httpdump='sudo tcpdump -i any -n port 80 or port 443'

## speedtest
# @desc  Run a network speed test via speedtest-cli
# @usage speedtest
# @example speedtest
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -'