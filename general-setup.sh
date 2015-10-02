#!/bin/bash

# Oh My Zsh for good default shell setup
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Additional shell setup
cp aliases.zsh ~/.oh-my-zsh/custom

# Required for rbenv to work properly
cp rbenv.zsh ~/.oh-my-zsh/custom

# Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~
vim +PluginInstall +qall

# Git
cp .gitconfig ~
cp .gitignore_global ~