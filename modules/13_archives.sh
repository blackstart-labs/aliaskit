#!/usr/bin/env bash
# CATEGORY: Archives
# MODULE: archives

## extract
# @desc  Extract any type of archive
# @usage extract <file>
# @example extract archive.tar.gz
extract() {
    if [ -f "$1" ] ; then
        case "$1" in
            *.tar.bz2)   tar xjf "$1"     ;;
            *.tar.gz)    tar xzf "$1"     ;;
            *.bz2)       bunzip2 "$1"     ;;
            *.rar)       unrar e "$1"     ;;
            *.gz)        gunzip "$1"      ;;
            *.tar)       tar xf "$1"      ;;
            *.tbz2)      tar xjf "$1"     ;;
            *.tgz)       tar xzf "$1"     ;;
            *.zip)       unzip "$1"       ;;
            *.Z)         uncompress "$1"  ;;
            *.7z)        7z x "$1"        ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

## mktar
# @desc  Create a tar.gz archive
# @usage mktar <archive_name.tar.gz> <dir_or_file>
# @example mktar project.tar.gz ./project
alias mktar='tar -cvzf'

## mkzip
# @desc  Create a zip archive
# @usage mkzip <archive_name.zip> <dir_or_file>
# @example mkzip docs.zip ./docs
alias mkzip='zip -r'
