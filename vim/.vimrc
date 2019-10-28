" vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ajh17/VimCompletesMe'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'

Plugin 'fatih/vim-go'
Plugin 'hashivim/vim-terraform'
Plugin 'jparise/vim-graphql'
Plugin 'lifepillar/pgsql.vim'

call vundle#end()
filetype plugin indent on

" color
colo seoul256

" editor configuration
syntax on
filetype plugin indent on

set autoread
set backspace=indent,eol,start
set expandtab "
set hlsearch
set laststatus=2
set nobackup
set noshowmode
set noswapfile
set nowb
set number
set title
set undodir=~/.vim/undo//

" indentation
set autoindent
set smartindent
set smarttab "
set shiftwidth=2
set softtabstop=2
set tabstop=2
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" plugin configurations
let &titlestring = @%
let g:go_addtags_transform = "snakecase"
let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"
let g:lightline = { 'colorscheme': 'seoul256' }
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrows = 1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1


map <C-o> :NERDTreeToggle<CR>

