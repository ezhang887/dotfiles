" Specify a directory for Vim-Plug plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'ezhang887/palenight.vim'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

" Searching
set hlsearch        " Search highlighting
set ignorecase      " Case insensitive search
set smartcase       " Commonly combined with ignorecase

" Make backspace work nicely
set backspace=indent,eol,start

" Indenting
set autoindent
set smartindent

" Make text wrap around
set wrap

" Disable vim sounds
set visualbell
set belloff=all

" Enable mouse control
set mouse=a

" Show line numbers
set number

" Default to 4-space tabs
set shiftwidth=4
set softtabstop=4
set expandtab

" Toggle paste mode - set paste and set nopaste
set pastetoggle=<F3>

" Make default windows split right
set splitright

" Shorthands to switch between vim split windows.
" Control-L instead of Control-W L, and so on.
nnoremap <C-L> <C-W><C-L>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>

" Make Control-C clear search results
nnoremap <silent> <C-C> :nohl<CR><C-C>

" Custom tabbing for specific tiletypes
autocmd FileType make setlocal noexpandtab
autocmd Filetype go setlocal noexpandtab
autocmd Filetype cpp setlocal softtabstop=2 shiftwidth=2
autocmd Filetype hpp setlocal softtabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal softtabstop=2 shiftwidth=2
autocmd Filetype typescript setlocal softtabstop=2 shiftwidth=2

" Show vertical bar at column limits
set colorcolumn=80
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" ---------- Plugin Specific Settings -----------

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

" rust.vim options
let g:rustfmt_autosave=1
