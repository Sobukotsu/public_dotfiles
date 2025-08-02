#!/bin/zsh

# Install Homebrew #
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/Sobukotsu/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Packages Install #
brew bundle --global

