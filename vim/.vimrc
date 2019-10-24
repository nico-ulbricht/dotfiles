" vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'AlessandroYorba/Alduin'
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()
filetype plugin indent on

" color
colorscheme alduin

" editor configuration
syntax on
filetype plugin indent on

let &titlestring = @%
let g:lightline = { 'colorscheme': 'seoul256' }

set backspace=indent,eol,start
set expandtab "
set hlsearch
set laststatus=2
set noshowmode
set number
set shiftwidth=2
set smarttab "
set softtabstop=2
set tabstop=2
set title
