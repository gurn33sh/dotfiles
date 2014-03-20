set nocompatible
set showcmd
set ttyfast

call pathogen#runtime_append_all_bundles()

" map tab to autocomplete
imap <Tab> <C-P>
set complete=.,w,b,t
" omnicomplete with C-space
imap <c-space> <c-x><c-o>
" line complete with C-M-space
imap <c-S-space> <c-x><c-l>


" indent
set autoindent
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" colors
let g:solarized_termcolors=256
if has('gui_running')
  set background=light
else
  set t_Co=256
  set background=dark
endif
syntax on
colorscheme solarized

" search
set showmatch
set ignorecase
set incsearch

" misc
set autoread
set mouse=a

" screen
set ruler
set virtualedit=all
set cursorline
set number

set backspace=indent,eol,start

imap jj <Esc>
imap jk <Esc>
imap kj <Esc>

vmap D y'>p

" folding
set foldmethod=indent " synatx i loved you but you're too slow
set foldnestmax=10
set nofoldenable
set foldlevel=1

" kill whitespace
autocmd BufWritePre * :%s/\s\+$//e

set wildmenu
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

" Use a common directory for backups and swp files
" Create it if it doesn't exist
silent execute '!mkdir -p ~/.vim_backups'
set backupdir=~/.vim_backups//
set directory=~/.vim_backups//

" all sql is psql
let g:sql_type_default = 'pgsql'
