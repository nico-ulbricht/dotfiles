" vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'AlessandroYorba/Alduin'
Plugin 'fatih/vim-go'
Plugin 'itchyny/lightline.vim'
Plugin 'jparise/vim-graphql'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'lifepillar/pgsql.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on

" color
colo seoul256

" editor configuration
syntax on
filetype plugin indent on

set backspace=indent,eol,start
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
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
set undodir=~/.vim/undo//

let &titlestring = @%
let g:lightline = { 'colorscheme': 'seoul256' }
let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']
