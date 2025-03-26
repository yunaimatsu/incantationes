#!/bin/bash

# Source the external log function
source ./log.sh

# Update package list and install Zsh
log "Updating package list..."
sudo apt update && sudo apt install -y zsh

# Verify installation
log "Checking Zsh installation..."
if command -v zsh >/dev/null 2>&1; then
    log "Zsh successfully installed!"
else
    log "Zsh installation failed."
    exit 1
fi

# Change default shell to Zsh
log "Changing default shell to Zsh..."
chsh -s $(which zsh)

# Confirm the change
log "Default shell: $SHELL"

log "Installation complete. Restart your terminal or log out and log back in for changes to take effect."
