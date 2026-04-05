#!/usr/bin/env bash
# CATEGORY: SSH
# MODULE: ssh

## sshconfig
# @desc  Edit SSH config file
# @usage sshconfig
# @example sshconfig
alias sshconfig='${EDITOR:-nano} ~/.ssh/config'

## keygen
# @desc  Generate a new robust Ed25519 SSH key
# @usage keygen <email>
# @example keygen user@example.com
keygen() { ssh-keygen -t ed25519 -C "$1"; }

## pubkey
# @desc  Print out your public SSH key
# @usage pubkey
# @example pubkey
alias pubkey='cat ~/.ssh/id_ed25519.pub || cat ~/.ssh/id_rsa.pub'

## copypub
# @desc  Copy public SSH key to clipboard (cross-platform)
# @usage copypub
# @example copypub
copypub() {
    local key_file
    if [[ -f ~/.ssh/id_ed25519.pub ]]; then
        key_file=~/.ssh/id_ed25519.pub
    elif [[ -f ~/.ssh/id_rsa.pub ]]; then
        key_file=~/.ssh/id_rsa.pub
    else
        echo "No SSH public key found." && return 1
    fi
    if [[ "$AK_OS" == "macos" ]]; then
        cat "$key_file" | pbcopy
    elif [[ "$AK_OS" == "wsl" ]]; then
        cat "$key_file" | clip.exe
    elif command -v xclip &>/dev/null; then
        cat "$key_file" | xclip -selection clipboard
    elif command -v xsel &>/dev/null; then
        cat "$key_file" | xsel --clipboard --input
    else
        echo "No clipboard tool found. Install xclip or xsel."; return 1
    fi
    echo "✔ Public key copied to clipboard!"
}
