"""""""""
" plugins
call plug#begin()
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'

Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

Plug 'cespare/vim-toml'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'hashivim/vim-terraform'
Plug 'jacqueswww/vim-vyper'
Plug 'jparise/vim-graphql'
Plug 'leafgarland/typescript-vim'
Plug 'lifepillar/pgsql.vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'udalov/kotlin-vim'
call plug#end()

" color theme
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors


set background=light
colorscheme nord
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

""""""""""""""""""""""
" editor configuration
syntax on
filetype plugin indent on

set autoread
set backspace=indent,eol,start
set encoding=utf-8
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
set relativenumber

" indentation
set autoindent
set expandtab
set smartindent
set smarttab "
set shiftwidth=2
set softtabstop=2
set tabstop=2

" open new splits below and right
set splitbelow
set splitright

"""""""""""""""""""""""
" plugin configurations
let &titlestring = @%

" deoplete
let g:deoplete#enable_at_startup = 1

" vim-go
let g:go_addtags_transform = "snakecase"
let g:go_auto_type_info = 1
let g:go_def_mod = 'godef'
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 0
nnoremap gt :GoDefPop<cr>

" NERDTree
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrows = 1
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

" ale
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = "always"
let g:ale_lint_delay = 1000
let g:ale_fixers = {"*": ["remove_trailing_lines", "trim_whitespace"]}

" ctrp
" allow vim navigation in selections
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

" vim-terraform
let g:terraform_align = 1
let g:terraform_fmt_on_save = 1

" vim-tsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
hi tsxTagName guifg=#FB4934
hi tsxCloseString guifg=#FB4934
hi tsxCloseTag guifg=#FB4934
hi tsxCloseTagName guifg=#FB4934
hi tsxAttributeBraces guifg=#FB4934
hi tsxEqual guifg=#FABD2F
hi tsxAttrib guifg=#FABD2F cterm=italic

""""""""""""""
" key mappings
map <C-o> :NERDTreeToggle<CR>

" switch between last two files
nnoremap <Leader><Leader> <C-^>

" disable arrow keys
nnoremap <Left> :echoe "No no no, use h!"<CR>
nnoremap <Right> :echoe "No no no, use l!"<CR>
nnoremap <Up> :echoe "No no no, use k!"<CR>
nnoremap <Down> :echoe "No no no, use j!"<CR>
