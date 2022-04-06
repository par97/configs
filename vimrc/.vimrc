set nocompatible
set number  
"set nu
"set rnu

set ruler
set showmode
set showcmd

set wrap
syntax on

set cursorline  "cul
set cursorcolumn "cuc

set hlsearch
set incsearch
set ignorecase
set smartcase

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set pastetoggle=<F9>

map <C-Q> <S-Left>
map <C-W> <S-Right>

map <C-A> <Home>
map <C-E> <End>

map <C-J> <Left>
map <C-L> <Right>

map <C-I> <UP>
map <C-K> <Down>

map! <C-I> <UP>
map! <C-K> <Down>

map! <C-J> <Left>
map! <C-L> <Right>

map! <C-Q> <S-Left>
map! <C-W> <S-Right>

map! <C-A> <Home>
map! <C-E> <End>

map Q q

colo codedark
set mouse=a
set clipboard=unnamed
set wildmenu
