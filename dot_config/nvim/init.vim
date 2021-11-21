" sam 2020-11-03
" don't want much at all in here cuz it will get slow

call plug#begin('~/.vim/plugged')
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'sainnhe/gruvbox-material'
call plug#end()

set termguicolors

let g:gruvbox_material_background='hard'
colorscheme gruvbox-material

let g:airline_theme='transparent'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

nnoremap <SPACE> <Nop>
let mapleader=' '

set laststatus=2
set nocompatible
syntax on
set backspace=indent,eol,start
set tabstop=2
set softtabstop=2
set expandtab
set showcmd
set wildmenu
set lazyredraw
set showmatch
set hlsearch
set incsearch
highlight LineNr ctermfg=grey
highlight CursorLineNr ctermfg=red
highlight VertSplit ctermfg=black
filetype plugin indent on
set smartindent
set shiftwidth=2
set number relativenumber
set encoding=utf-8
set wildmode=longest,list,full
set fillchars+=vert:│
