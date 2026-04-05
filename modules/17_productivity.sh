#!/usr/bin/env bash
# CATEGORY: Productivity
# MODULE: productivity

## weather
# @desc  Get the weather forecast for your location
# @usage weather [city]
# @example weather London
alias weather='curl wttr.in/'

## joke
# @desc  Fetch a random programmer joke
# @usage joke
# @example joke
alias joke='curl -s https://v2.jokeapi.dev/joke/Programming?format=txt'

## timer
# @desc  Set a basic countdown timer (e.g. 5m, 10s)
# @usage timer <duration>
# @example timer 5m
timer() { 
    sleep "$1" && echo -e "\a\n\033[32m✔ Timer done!\033[0m" 
}

## randpass
# @desc  Generate a random 16-character password
# @usage randpass
# @example randpass
alias randpass='openssl rand -base64 16'
