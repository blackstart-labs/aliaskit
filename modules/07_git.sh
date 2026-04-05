#!/usr/bin/env bash
# CATEGORY: Git Version Control
# MODULE: git

## clone
# @desc  Clone a remote repository
# @usage clone <url>
# @example clone https://github.com/user/repo.git
alias clone='git clone'

## ginit
# @desc  Initialise a new Git repository in the current directory
# @usage ginit
# @example ginit
alias ginit='git init'

## gst
# @desc  Show full git status
# @usage gst
# @example gst
alias gst='git status'

## gs
# @desc  Short git status with branch and tracking info
# @usage gs
# @example gs
alias gs='git status -sb'

## gl
# @desc  Pretty one-line graph log for all branches
# @usage gl
# @example gl
alias gl='git log --oneline --graph --decorate --all'

## gll
# @desc  Detailed log with date, author, and subject per commit
# @usage gll
# @example gll
alias gll='git log --pretty=format:"%C(yellow)%h%Creset %C(blue)%ad%Creset | %s %C(green)[%an]%Creset" --date=short'

## gd
# @desc  Show unstaged diff (what has changed since last add)
# @usage gd
# @example gd
alias gd='git diff'

## gds
# @desc  Show staged diff (what will be in the next commit)
# @usage gds
# @example gds
alias gds='git diff --staged'

## add
# @desc  Stage all changes in the current directory
# @usage add
# @example add
alias add='git add .'

## adda
# @desc  Stage all changes including deletions
# @usage adda
# @example adda
alias adda='git add -A'

## addp
# @desc  Interactively choose hunks to stage
# @usage addp
# @example addp
alias addp='git add -p'

## commit
# @desc  Commit staged changes with a message
# @usage commit "<message>"
# @example commit "fix: resolve login redirect bug"
alias commit='git commit -m'

## amend
# @desc  Amend the last commit without changing the message
# @usage amend
# @example amend
alias amend='git commit --amend --no-edit'

## uncommit
# @desc  Undo the last commit but keep changes staged
# @usage uncommit
# @example uncommit
alias uncommit='git reset --soft HEAD~1'

## unstage
# @desc  Unstage all staged changes (keeps working tree intact)
# @usage unstage
# @example unstage
alias unstage='git restore --staged .'

## pull
# @desc  Pull from remote (current branch)
# @usage pull
# @example pull
alias pull='git pull'

## push
# @desc  Push to remote (current branch)
# @usage push
# @example push
alias push='git push'

## push-main
# @desc  Push and set upstream to origin/main
# @usage push-main
# @example push-main
alias push-main='git push -u origin main'

## push-master
# @desc  Push and set upstream to origin/master
# @usage push-master
# @example push-master
alias push-master='git push -u origin master'

## push-f
# @desc  Force push safely using --force-with-lease
# @usage push-f
# @example push-f
alias push-f='git push --force-with-lease'

## gco
# @desc  Checkout a branch or file
# @usage gco <branch|file>
# @example gco main
alias gco='git checkout'

## gcob
# @desc  Create a new branch and switch to it
# @usage gcob <branch-name>
# @example gcob feature/auth
alias gcob='git checkout -b'

## gb
# @desc  List local branches
# @usage gb
# @example gb
alias gb='git branch'

## gba
# @desc  List all branches including remotes
# @usage gba
# @example gba
alias gba='git branch -a'

## gbd
# @desc  Delete a merged local branch (safe)
# @usage gbd <branch>
# @example gbd feature/old-feature
alias gbd='git branch -d'

## gbD
# @desc  Force delete a local branch regardless of merge status
# @usage gbD <branch>
# @example gbD feature/abandoned
alias gbD='git branch -D'

## gm
# @desc  Merge a branch into the current branch
# @usage gm <branch>
# @example gm develop
alias gm='git merge'

## grb
# @desc  Rebase current branch onto another
# @usage grb <branch>
# @example grb main
alias grb='git rebase'

## stash
# @desc  Stash current uncommitted changes
# @usage stash
# @example stash
alias stash='git stash'

## stash-pop
# @desc  Apply the most recent stash and remove it from the list
# @usage stash-pop
# @example stash-pop
alias stash-pop='git stash pop'

## stash-list
# @desc  List all stashed changes
# @usage stash-list
# @example stash-list
alias stash-list='git stash list'

## gfetch
# @desc  Fetch all remotes and prune deleted remote branches
# @usage gfetch
# @example gfetch
alias gfetch='git fetch --all --prune'

## gremote
# @desc  Show configured remotes with their URLs
# @usage gremote
# @example gremote
alias gremote='git remote -v'

## gclean
# @desc  Remove untracked files and directories
# @usage gclean
# @example gclean
alias gclean='git clean -fd'

## gtag
# @desc  List or create git tags
# @usage gtag [tag-name]
# @example gtag v1.0.0
alias gtag='git tag'