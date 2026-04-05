#!/usr/bin/env bash

# install.sh - Installer for Aliaskit

set -e

REPO_URL="https://github.com/maruf-pfc/aliaskit.git"
INSTALL_DIR="${HOME}/.aliaskit"
BASHRC="${HOME}/.bashrc"
SOURCE_LINE="source ${INSTALL_DIR}/core/init.sh"

echo "🚀 Installing Aliaskit..."

# 1. Clone or update repository
if [[ -d "$INSTALL_DIR" ]]; then
    echo "Aliaskit is already installed. Updating..."
    cd "$INSTALL_DIR"
    git pull
else
    echo "Cloning repository..."
    git clone "$REPO_URL" "$INSTALL_DIR"
fi

# 2. Add to .bashrc
if grep -qF "$SOURCE_LINE" "$BASHRC"; then
    echo "Aliaskit is already in your .bashrc."
else
    echo -e "\n# Aliaskit Initialization" >> "$BASHRC"
    echo "$SOURCE_LINE" >> "$BASHRC"
    echo "Added initialization code to $BASHRC."
fi

# 3. Setup default config if none exists
if [[ ! -f "${HOME}/.aliaskit.conf" ]]; then
    cp "${INSTALL_DIR}/config/aliaskit.conf.default" "${HOME}/.aliaskit.conf"
    echo "Created default configuration."
fi

echo -e "\n\033[32m✔ Installation complete!\033[0m"
echo -e "Please run \033[36msource ~/.bashrc\033[0m to start using aliaskit."
echo -e "Type \033[33mak help\033[0m to see available commands."
