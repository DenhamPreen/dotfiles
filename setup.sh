#!/usr/bin/env bash

# Install apps and binaries with Brew
source ./brew.sh

# Create symlinks for dotfiles
source ./link-dotfiles.sh

# Configure MacOS defaults.
# You only want to run this once during setup. Additional runs may reset changes you make manually.
source ./macos