" Required for Vundle
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle plugins start here
call vundle#begin()

" Vundle plugins end here
call vundle#end()
" Required for Vundle
filetype plugin indent on

command W w !sudo tee % > /dev/null
 
syntax enable
set background=dark

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

set splitright

set belloff=all

nnoremap <C-L> <C-W><C-L>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>

nnoremap <silent> <C-C> :nohl<CR><C-C>

nnoremap <C-X> :qa<CR>

autocmd FileType make setlocal noexpandtab
autocmd Filetype go setlocal noexpandtab
autocmd Filetype cpp setlocal softtabstop=2 shiftwidth=2
autocmd Filetype hpp setlocal softtabstop=2 shiftwidth=2
autocmd Filetype h setlocal softtabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal softtabstop=2 shiftwidth=2
autocmd Filetype asm set wrap!
