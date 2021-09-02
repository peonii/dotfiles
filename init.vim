call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'mikroskeem/vim-sk-syntax'
Plug 'ryanoasis/vim-devicons'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'junegunn/goyo.vim'
Plug 'universal-ctags/ctags'
Plug 'rakr/vim-one'

call plug#end()
filetype plugin indent on

syntax on
scriptencoding utf-8

set encoding=utf-8

if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif

    if (has("termguicolors"))
        set termguicolors
    endif
endif

colorscheme one
set background=dark

"let g:lightline = {
"    \ 'colorscheme': 'one',
"    \ }

"hi Normal guibg=NONE ctermbg=NONE
"hi LineNr guibg=NONE ctermbg=NONE
"hi NonText guibg=NONE ctermbg=NONE

set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set noshowmode
set expandtab
set smartindent
set autoindent
set nu
set wrap
set linebreak
set relativenumber
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set scrolloff=8
set go-=m
set go-=T
set go-=r
set number
set ruler



au GUIEnter * simalt ~s

set cmdheight=2

set updatetime=50
set shortmess+=c

nnoremap <SPACE> <Nop>
let mapleader = "\<SPACE>"

" Faster NERDTree
nmap <C-N> :NERDTree<Enter>
imap <C-N> <Esc>:NERDTree<Enter>

" Faster split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Normal splitting
set splitbelow splitright

" Goyo toggle
map <leader>f :Goyo<CR>
