set nocompatible
"set nocp

set number  
"set nu
"set rnu

set ruler
set showmode
set showcmd

set wrap
syntax on

set cursorline "cul
set cursorcolumn "cuc

set hlsearch
set incsearch
set ignorecase
set smartcase

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set pastetoggle=<F9>

map! <C-Q> <S-Left>
map  <C-Q> <S-Left>
map! <C-W> <S-Right>
map  <C-W> <S-Right>

map! <C-A> <Home>
map  <C-A> <Home>
map! <C-E> <End>
map  <C-E> <End>


nnoremap <space>qw :w<cr>
nnoremap <space>qe :wq<cr>
nnoremap <space>qq :q<cr>
nnoremap <space>qa :qa<cr>
nnoremap <space>qn :q!<cr>

colo codedark

set mouse=a
"set mouse=

set clipboard=unnamed
set wildmenu
