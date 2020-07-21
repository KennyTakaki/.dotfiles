set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin' " comment out
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Plunins added by Takaki"
" Plugin 'w0rp/ale' "
Plugin 'scrooloose/nerdtree' 
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'

Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'

" For Doxygen Comments "
Plugin 'takio-c/doxygentoolkit.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set tabstop=2
set expandtab

" For Plugin 'scrooloose/nerdtree' "
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" For Plugin 'prabirshrestha/vim-lsp' "
nnoremap <silent><C-f><C-f> :LspDocumentFormat<CR>
nnoremap <silent><C-d><C-f> :LspDefinition<CR>
nnoremap <silent><C-d><C-e> :LspDeclaration<CR>

" Plugin 'prabirshrestha/vim-lsp' "
"let g:ale_linters = {'c': ['clangd'], 'cpp': ['clangd'], 'python': ['flake8', 'pylint']}"
"let b:ale_fixers = {'c': ['clang-format'], 'cpp': ['clang-format']}"
"let g:ale_completion_enabled = 1"
