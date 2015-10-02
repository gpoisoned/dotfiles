#!/bin/bash

git pull

cp .gitconfig ~
cp .gitignore_global ~
cp .vimrc ~

cp aliases.zsh ~/.oh-my-zsh/custom
