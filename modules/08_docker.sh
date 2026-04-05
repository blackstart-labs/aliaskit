#!/usr/bin/env bash
# CATEGORY: Docker & Compose
# MODULE: docker

## dk
# @desc  Docker shorthand
# @usage dk <command>
# @example dk info
alias dk='docker'

## dkp
# @desc  List running containers
# @usage dkp
# @example dkp
alias dkp='docker ps'

## dkpa
# @desc  List all containers including stopped ones
# @usage dkpa
# @example dkpa
alias dkpa='docker ps -a'

## dkimg
# @desc  List locally available Docker images
# @usage dkimg
# @example dkimg
alias dkimg='docker images'

## dkrm
# @desc  Remove a container by ID or name
# @usage dkrm <container>
# @example dkrm my-app
alias dkrm='docker rm'

## dkrmi
# @desc  Remove a Docker image by ID or tag
# @usage dkrmi <image>
# @example dkrmi myapp:latest
alias dkrmi='docker rmi'

## dkstop
# @desc  Stop a running container
# @usage dkstop <container>
# @example dkstop web-server
alias dkstop='docker stop'

## dkstart
# @desc  Start a stopped container
# @usage dkstart <container>
# @example dkstart web-server
alias dkstart='docker start'

## dkpull
# @desc  Pull an image from Docker Hub or registry
# @usage dkpull <image>
# @example dkpull nginx:latest
alias dkpull='docker pull'

## dkbuild
# @desc  Build an image from a Dockerfile and tag it
# @usage dkbuild <tag> <context>
# @example dkbuild myapp:1.0 .
alias dkbuild='docker build -t'

## dkrun
# @desc  Run a container interactively
# @usage dkrun <image> [command]
# @example dkrun ubuntu:22.04 bash
alias dkrun='docker run -it'

## dklogs
# @desc  Follow live logs from a container
# @usage dklogs <container>
# @example dklogs api-service
alias dklogs='docker logs -f'

## dkexec
# @desc  Open an interactive shell inside a running container
# @usage dkexec <container> <shell>
# @example dkexec my-app bash
alias dkexec='docker exec -it'

## dkprune
# @desc  Remove ALL stopped containers, dangling images, volumes — frees disk space
# @usage dkprune
# @example dkprune
alias dkprune='docker system prune -af'

## dkinspect
# @desc  Inspect detailed info about a container or image
# @usage dkinspect <name>
# @example dkinspect my-container
alias dkinspect='docker inspect'

## dknet
# @desc  List Docker networks
# @usage dknet
# @example dknet
alias dknet='docker network ls'

## dkvol
# @desc  List Docker volumes
# @usage dkvol
# @example dkvol
alias dkvol='docker volume ls'

## dkstats
# @desc  Live resource usage stats for all running containers
# @usage dkstats
# @example dkstats
alias dkstats='docker stats'

## dkc
# @desc  Docker Compose shorthand
# @usage dkc <command>
# @example dkc ps
alias dkc='docker compose'

## dkcu
# @desc  Start services in detached mode (background)
# @usage dkcu
# @example dkcu
alias dkcu='docker compose up -d'

## dkcd
# @desc  Stop and remove compose services and networks
# @usage dkcd
# @example dkcd
alias dkcd='docker compose down'

## dkcb
# @desc  Rebuild compose images
# @usage dkcb
# @example dkcb
alias dkcb='docker compose build'

## dkcl
# @desc  Follow live logs from all compose services
# @usage dkcl
# @example dkcl
alias dkcl='docker compose logs -f'

## dkcr
# @desc  Restart all compose services
# @usage dkcr
# @example dkcr
alias dkcr='docker compose restart'

## dkcs
# @desc  Show status of compose services
# @usage dkcs
# @example dkcs
alias dkcs='docker compose ps'