" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'marijnh/tern_for_vim'
Plug 'groenewege/vim-less'
Plug 'rust-lang/rust.vim'
Plug 'klen/python-mode'
Plug 'tpope/vim-commentary'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Lokaltog/vim-powerline'
Plug 'jmcantrell/vim-virtualenv'

call plug#end()

let g:tern_show_argument_hints = 'on_move'

" Required:
filetype plugin indent on

set autoindent
set backspace=2
if $TMUX == ''
    set clipboard+=unnamed
endif
set noswapfile
set encoding=utf-8
set expandtab
set ignorecase
set incsearch
set number
set shiftwidth=2
set smartcase
set softtabstop=2
set wildmenu
set wildmode=longest,list,full
set omnifunc=syntaxcomplete#Complete
syntax on
set wildignore+=*.pyc
set undofile
set undodir=~/.vimundo
set confirm

set mouse=a
if exists('$TMUX')  " Support resizing in tmux
  set ttymouse=xterm2
endif

" keyboard shortcuts
let mapleader = ','
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>t :CtrlP<CR>
nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nmap <leader><Space> :StripWhitespace<CR>

let g:ctrlp_match_window = 'order:ttb,max:20'
let g:NERDSpaceDelims=1
let g:gitgutter_enabled = 0
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|client/lib|*.pyc'
let g:pymode_rope_lookup_project = 0
