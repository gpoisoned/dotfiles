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
# Don't show files on desktop
defaults write com.apple.finder CreateDesktop -bool false
killall Finder

# Show user's Library folder
chflags nohidden ~/Library

# Install diff/merge tools
brew install kdiff3

# Install pick because it's cool (and stuff in aliases.zsh depends on it)
brew install pick

# Install slate for window resize shortcuts
brew cask install slate
cp .slate ~

# Make the damn home and end keys do what they're supposed to
mkdir ~/Library/KeyBindings
cp DefaultKeyBinding.dict ~/Library/KeyBindings
