set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'https://github.com/sjl/badwolf'
Plugin 'https://github.com/editorconfig/editorconfig-vim'

call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set background=dark
colorscheme badwolf

set ignorecase
set backspace=indent,eol,start
set number
set relativenumber
set hidden
set linebreak
set splitbelow
set splitright
set noswapfile

set tabstop=2
set shiftwidth=2
set expandtab

let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

set autoread

set encoding=utf-8

