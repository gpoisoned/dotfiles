#!/bin/bash

cp ~/.gitconfig .
cp ~/.gitignore_global .
cp ~/.vimrc .

cp ~/.oh-my-zsh/custom/aliases.zsh .

git commit -am "updates to prefs"
git push
