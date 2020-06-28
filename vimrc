" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()

filetype plugin indent on

command W w !sudo tee % > /dev/null
 
syntax enable

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


" coc.nvim - tab completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" lightline theme
set laststatus=2
let g:lightline = {
  \     'colorscheme': 'palenight',
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }
set noshowmode

" palenight color scheme
set background=dark
colorscheme palenight
" Enable true colors: https://github.com/alacritty/alacritty/issues/109#issuecomment-440353106
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
