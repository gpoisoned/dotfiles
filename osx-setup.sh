#!/bin/bash

## Dependencies:
# - XCode

# Install XCode command line tools
xcode-select --install

# Run thoughtbot laptop script
sh -c "$(curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac)"

# Run platform-agnostic setup
./general-setup.sh

# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder

# Install diff/merge tools
brew install homebrew/x11/meld
brew install kdiff3

# Install pick because it's cool (and stuff in aliases.zsh depends on it)
brew install pick