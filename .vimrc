set nocompatible

filetype indent plugin on

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

nnoremap <C-L> <C-W><C-L>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>

nnoremap <silent> <C-C> :nohl<CR><C-C>

nnoremap <C-X> :qa<CR>

autocmd FileType make setlocal noexpandtab
execute pathogen#infect()
call pathogen#helptags()

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <C-A> :ToggleNERDTreeAndTagbar<CR>
colorscheme gruvbox
autocmd BufNewFile,BufRead *.asm set filetype=nasm
autocmd BufNewFile,BufRead *.s set filetype=nasm
