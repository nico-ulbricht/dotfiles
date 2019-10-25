" vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ajh17/VimCompletesMe'
Plugin 'fatih/vim-go'
Plugin 'itchyny/lightline.vim'
Plugin 'jparise/vim-graphql'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'lifepillar/pgsql.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'

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

" plugin configurations
let &titlestring = @%
let g:go_addtags_transform = "snakecase"
let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"
let g:lightline = { 'colorscheme': 'seoul256' }
let NERDTreeShowHidden=1

" key mappings
map <C-o> :NERDTreeToggle<CR>
