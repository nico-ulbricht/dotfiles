"""""""""
" plugins
call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/seoul256.vim'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'w0rp/ale'

Plug 'fatih/vim-go'
Plug 'hashivim/vim-terraform'
Plug 'jparise/vim-graphql'
Plug 'lifepillar/pgsql.vim'
call plug#end()

" color
colo seoul256

""""""""""""""""""""""
" editor configuration
syntax on
filetype plugin indent on

set autoread
set backspace=indent,eol,start
set hlsearch
set laststatus=2
set nobackup
set noshowmode
set noswapfile
set nowb
set title
set undodir=~/.vim/undo//

" width bar
set textwidth=120
set colorcolumn=+1

" line numbers
set number
set numberwidth=5

" indentation
set autoindent
set expandtab
set smartindent
set smarttab "
set shiftwidth=2
set softtabstop=2
set tabstop=2
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" open new splits below and right
set splitbelow
set splitright

"""""""""""""""""""""""
" plugin configurations
let &titlestring = @%
let g:deoplete#enable_at_startup = 1
let g:go_addtags_transform = "snakecase"
let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"
let g:lightline = { 'colorscheme': 'seoul256' }
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrows = 1
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden = 1

""""""""""""""
" key mappings
map <C-o> :NERDTreeToggle<CR>

" switch between last two files
nnoremap <Leader><Leader> <C-^>

" disable arrow keys
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
nnoremap <Left> :echoe "No no no, use h!"<CR>
nnoremap <Right> :echoe "No no no, use l!"<CR>
nnoremap <Up> :echoe "No no no, use k!"<CR>
nnoremap <Down> :echoe "No no no, use j!"<CR>
