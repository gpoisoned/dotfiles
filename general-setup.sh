#!/bin/bash

# Oh My Zsh for good default shell setup
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Additional shell setup
cp ./aliases.zsh ~/.oh-my-zsh/custom

# Vim
cp ./.vimrc ~

# Git
cp ./.gitconfig ~
cp ./.gitignore_global ~