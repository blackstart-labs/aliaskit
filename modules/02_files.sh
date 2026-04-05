#!/usr/bin/env bash
# CATEGORY: Files & Searching
# MODULE: files

## ls
# @desc  Coloured directory listing
# @usage ls [path]
# @example ls ~/projects
alias ls='ls --color=auto'

## ll
# @desc  Long listing with human-readable sizes and type indicators
# @usage ll [path]
# @example ll ~/projects
alias ll='ls -lhF --color=auto'

## la
# @desc  Long listing including hidden files
# @usage la [path]
# @example la ~
alias la='ls -lAhF --color=auto'

## lt
# @desc  List files sorted by modification time (oldest first)
# @usage lt [path]
# @example lt ~/logs
alias lt='ls -lhFtr --color=auto'

## lz
# @desc  List files sorted by size (largest first)
# @usage lz [path]
# @example lz ~/Downloads
alias lz='ls -lhFS --color=auto'

## l.
# @desc  Show only hidden (dot) files in current directory
# @usage l.
# @example l.
alias l.='ls -d .* --color=auto'

## tree
# @desc  Coloured directory tree (requires: sudo apt install tree)
# @usage tree [path]
# @example tree ~/dev/myproject
alias tree='tree -C'

## tree2
# @desc  Coloured directory tree, 2 levels deep
# @usage tree2 [path]
# @example tree2 .
alias tree2='tree -C -L 2'

## cp
# @desc  Copy with interactive prompt + verbose output
# @usage cp <src> <dest>
# @example cp file.txt backup/
alias cp='cp -iv'

## mv
# @desc  Move with interactive prompt + verbose output
# @usage mv <src> <dest>
# @example mv draft.txt ~/Documents/
alias mv='mv -iv'

## rm
# @desc  Safe remove — prompts when deleting 3+ files, preserves root
# @usage rm <file>
# @example rm old_file.log
alias rm='rm -Iv --preserve-root'

## rmf
# @desc  Force remove recursively — no prompts (dangerous, use carefully)
# @usage rmf <path>
# @example rmf ./build
alias rmf='rm -rf'

## mkdir
# @desc  Create directory (and parents) with verbose output
# @usage mkdir <dir>
# @example mkdir -p ~/dev/project/src
alias mkdir='mkdir -pv'

## cpd
# @desc  Copy directory recursively
# @usage cpd <src_dir> <dest_dir>
# @example cpd ./src ./backup-src
alias cpd='cp -r'

## duh
# @desc  Disk usage of current directory, human-readable
# @usage duh
# @example duh
alias duh='du -sh'

## dua
# @desc  Disk usage of all items in current dir, sorted by size
# @usage dua
# @example dua
alias dua='du -sh * | sort -h'

## ff
# @desc  Find files by name pattern
# @usage ff <pattern>
# @example ff "*.log"
alias ff='find . -type f -name'

## fd
# @desc  Find directories by name pattern
# @usage fd <pattern>
# @example fd "build"
alias fd='find . -type d -name'

## fcode
# @desc  Grep recursively through all files in current directory
# @usage fcode <pattern>
# @example fcode "TODO"
alias fcode='grep -rn'

## ftext
# @desc  Grep recursively through .txt files only
# @usage ftext <pattern>
# @example ftext "error"
alias ftext='grep -rn --include="*.txt"'

## grep
# @desc  Coloured grep output
# @usage grep <pattern> [file]
# @example grep "error" app.log
alias grep='grep --color=auto'

## h
# @desc  Show first 20 lines of a file
# @usage h <file>
# @example h access.log
alias h='head -n 20'

## t
# @desc  Show last 20 lines of a file
# @usage t <file>
# @example t error.log
alias t='tail -n 20'

## tf
# @desc  Follow a file in real time (like tail -f)
# @usage tf <file>
# @example tf /var/log/syslog
alias tf='tail -f'

## less
# @desc  View file with colour support preserved
# @usage less <file>
# @example less README.md
alias less='less -R'

## bak
# @desc  Back up a file by appending .bak extension
# @usage bak <file>
# @example bak nginx.conf
bak() { cp "$1"{,.bak} && echo "Backed up: $1 → $1.bak"; }