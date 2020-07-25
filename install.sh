#!/bin/bash

DOTPATH=~/.dotfiles

type git

if [ $? -eq 1 ]; then
   sudo apt install -y git
fi

type curl

if [ $? -eq 1 ]; then
   sudo apt install -y curl
fi

type vim

if [ $? -eq 1 ]; then
   sudo apt remove -y vim
fi

# add repository for vim (8.2)
sudo add-apt-repository -y ppa:jonathonf/vim
sudo apt update -y
sudo apt install -y vim

#these two line needed for python lsp
sudo apt install -y python3-venv
sudo apt install -y python3-dev build-essential libssl-dev libffi-dev

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

for f in .??*
do
	[ "$f" = ".git" ] && continue
	ln -snfv "$DOTPATH/$f" "$HOME/$f"
done

# Directory for my original vim snippets 
mkdir ~/.vim/snippets

# needed for neovimsnippet
sudo apt install -y python3-pip
pip3 install pynvim

vim -c PluginInstall

# installer of lsp for cmake is not permitted to execute. So,change it.
# might not needed anymore
find ~/.vim/bundle -name "install*cmake*sh" | xargs -I{} chmod 775 {}

# make sure to install language server for each programming language
# open a file of specific extension and type :LspInstallServer
