set nocompatible

filetype indent plugin on

command W w !sudo tee % > /dev/null
 
syntax on

set hidden

set ruler

set hlsearch

set ignorecase
set smartcase

set backspace=indent,eol,start

set autoindent
set smartindent
set wrap

set visualbell

set mouse=a

set cmdheight=2

set number

set shiftwidth=4
set softtabstop=4
set expandtab

set pastetoggle=<F3>

nnoremap <C-L> <C-W><C-L>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>

nnoremap <silent> <C-C> :nohl<CR><C-C>
