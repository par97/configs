set number  
"set nu
"set rnu

set wrap
syntax on

set cursorline

set hlsearch
set incsearch
set ignorecase
set smartcase

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set pastetoggle=<F9>

map <C-F> <S-Right>
map <C-W> <S-Right>
map <C-B> <S-Left>
map <C-Q> <S-Left>
map <C-A> <Home>
map <C-E> <End>

map! <C-F> <S-Right>
map! <C-W> <S-Right>
map! <C-Q> <S-Left>
map! <C-B> <S-Left>
map! <C-A> <Home>
map! <C-E> <End>
