#!/bin/bash

DOTPATH=~/.dotfiles
SNIPPETS=/etc/snippets

if [ -f ./install_list ]; then
   . ./install_list
fi

for install_package in "${packages[@]}" ; do
        # add repository for vim (8.2)
        if [ ${install_package} = "vim" ]; then
            # if already has vim, it's probably less than version 8.2.
            # To install newer version, get rid of vim.
            # vimver=`vim --version | cut -c 19-21 | head -n 1`
            if [ $? -eq 1 ]; then
              sudo apt remove -y vim
            fi
            # add repository for vim 8.2
            sudo add-apt-repository -y ppa:jonathonf/vim
            sudo apt update -y
            sudo apt install -y vim
            continue
        fi
       
        type ${install_package}
        if [ $? -eq 1 ]; then
            sudo apt install -y ${install_package}
        fi
done

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

for f in .??*
do
	[ "$f" = ".git" ] && continue
	[ "$f" = ".gitignore" ] && continue
  [ "$f" = ".bashrc" ] && [ -e $HOME"/.bashrc" ] && continue 
	ln -snfv "$DOTPATH/$f" "$HOME/$f"
done

# needed for neovimsnippet
pip3 install pynvim

# Plugin install for vim
vim -c PluginInstall

# Directory for my original vim snippets 
DEPSNIPS=${HOME}/.vim/snippets
mkdir ${DEPSNIPS}
# make symbolic links for snippets of each extension
for f in `find ${DOTPATH}${SNIPPETS} -name "*.snip"`
do
  fn=`basename ${f}`
  ln -snfv "${f}" "${DEPSNIPS}/${fn}"
done

# installer of lsp for cmake is not permitted to execute. So,change it.
# might not needed anymore
find ~/.vim/bundle -name "install*cmake*sh" | xargs -I{} chmod 775 {}

# make sure to install language server for each programming language
# open a file of specific extension and type :LspInstallServer
# Following is my Server List
# C++, Python, HTML, bash, json, sql, CMakeLists.txt
