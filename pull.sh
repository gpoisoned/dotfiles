#!/bin/bash

git pull

cp .gitconfig ~
cp .gitignore_global ~
cp .vimrc ~
cp .slate ~

cp aliases.zsh ~/.oh-my-zsh/custom
cp rbenv.zsh ~/.oh-my-zsh/custom

cp DefaultKeyBinding.dict ~/Library/KeyBindings
