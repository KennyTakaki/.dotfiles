#!/bin/bash

DOTPATH=~/.dotfiles

type git

if [ $? -eq 1 ]; then
   sudo apt instal git
fi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

for f in .??*
do
	[ "$f" = ".git" ] && continue
	ln -snfv "$DOTPATH/$f" "$HOME/$f"
done

# Directory for my original vim snippets 
mkdir ~/.vim/snippets

vim -c PluginInstall
