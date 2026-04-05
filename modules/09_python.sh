#!/usr/bin/env bash
# CATEGORY: Python
# MODULE: python

## py
# @desc  Python 3 shorthand
# @usage py script.py
# @example py main.py
alias py='python3'

## venv
# @desc  Create a virtual environment in ./venv
# @usage venv
# @example venv
alias venv='python3 -m venv venv'

## pyact
# @desc  Activate virtual environment (Linux/Mac)
# @usage pyact
# @example pyact
alias pyact='source venv/bin/activate'

## pi
# @desc  Install a pip package
# @usage pi <pkg>
# @example pi requests
alias pi='pip install'

## pif
# @desc  Freeze requirements to requirements.txt
# @usage pif
# @example pif
alias pif='pip freeze > requirements.txt'

## pir
# @desc  Install from requirements.txt
# @usage pir
# @example pir
alias pir='pip install -r requirements.txt'

## pylint
# @desc  Run ruff linter on current directory
# @usage pylint
# @example pylint
alias pylint='ruff check .'
