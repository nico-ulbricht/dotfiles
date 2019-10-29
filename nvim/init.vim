" plugins
call plug#begin()
Plug 'VundleVim/Vundle.vim'
Plug 'ajh17/VimCompletesMe'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'

Plug 'fatih/vim-go'
Plug 'hashivim/vim-terraform'
Plug 'jparise/vim-graphql'
Plug 'lifepillar/pgsql.vim'
call plug#end()

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
