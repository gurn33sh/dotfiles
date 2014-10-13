"set go-=T
"set bg=dark
"if &background == "dark"
"	hi normal guibg=black
"endif

set guioptions-=T
set guifont=Inconsolata:h16

" show invisibles
set list
autocmd Filetype go set nolist
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a5

" Save on focus lost
:au FocusLost * :wa

