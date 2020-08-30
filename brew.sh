#!/usr/bin/env bash

# Install Homebrew (if not installed)
echo "Installing Homebrew."

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install zsh

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install `wget`
brew install wget


# Install useful binaries.
brew install ack
brew install autojump
brew install z
brew install git
brew install gh
brew install imagemagick
brew install rsync
brew install tree
brew install ffmpeg

# Installs Casks
brew tap caskroom/cask

## Apps I use
brew cask install google-chrome
brew cask install iterm2
brew cask install notion
brew cask install slack
brew cask install spotify
brew cask install discord
brew cask install visual-studio-code
brew cask install whatsapp
brew cask install telegram

# Remove outdated versions from the cellar.
brew cleanup
