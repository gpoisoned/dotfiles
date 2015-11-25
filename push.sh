#!/bin/bash

cp ~/.gitconfig .
cp ~/.gitignore_global .
cp ~/.vimrc .
cp ~/.slate .

cp ~/.oh-my-zsh/custom/aliases.zsh .
cp ~/.oh-my-zsh/custom/vars.zsh .
cp ~/.oh-my-zsh/custom/rbenv.zsh .

cp ~/Library/KeyBindings/DefaultKeyBinding.dict .

git commit -am "updates to prefs"
git push
