set nocompatible
set showcmd
set ttyfast

call pathogen#runtime_append_all_bundles()

" indent
set autoindent
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" colors
if has('gui_running')
  set background=light
else
  set background=dark
endif
syntax on
colorscheme solarized

" search
set showmatch
set ignorecase
set incsearch

set autoread

" screen
set ruler
set virtualedit=all
set cursorline
set number

set backspace=indent,eol,start

map <leader>t :FuzzyFinderTextMate<CR>
map <leader>r :ruby finder.rescan!<CR>
let g:fuzzy_ignore = "*/log/*;*.swf;*.cache;*.ttf;*.jpg;*.png;*/doc/*;*/etc/*;*/vendor/*;*tmp/*;*/.svn/*;*/public/images/*;*/ufiles/*;*/.git/*;*/script/*"

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

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

" Use a common directory for backups and swp files
" Create it if it doesn't exist
silent execute '!mkdir -p ~/.vim_backups'
set backupdir=~/.vim_backups//
set directory=~/.vim_backups//


