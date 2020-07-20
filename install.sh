#!/bin/bash

type git

if [ $? -eq 1 ]; then
   sudo apt instal git
fi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
