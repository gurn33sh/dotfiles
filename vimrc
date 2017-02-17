if !has('nvim')
  set nocompatible
endif

"start vundle stuff
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'rhysd/vim-crystal'
Plugin 'fatih/vim-go'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mxw/vim-jsx'
Plugin 'exu/pgsql.vim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'rking/ag.vim'
Plugin 'godlygeek/tabular'
Plugin 'altercation/vim-colors-solarized'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
"Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Lokaltog/vim-easymotion'

Plugin 'vim-airline/vim-airline'

Plugin 'kassio/neoterm'
Plugin 'janko-m/vim-test'
call vundle#end()

filetype plugin indent on
"end vundle stuff

set showcmd

" map tab to autocomplete
imap <Tab> <C-P>
" omnicomplete with C-space
imap <c-space> <c-x><c-o>
" line complete with C-M-space
imap <c-S-space> <c-x><c-l>


" indent
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

" screen
set ruler
set virtualedit=all
set cursorline
set number


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
silent execute '!mkdir -p /tmp/.vim_backups'
set backupdir=/tmp/.vim_backups//
set directory=/tmp/.vim_backups//

" all sql is psql
let g:sql_type_default = 'pgsql'

" golang
let g:go_fmt_command = "gofmt"

" crystal
let g:crystal_auto_format = 1

" easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-s)
omap t <Plug>(easymotion-bd-tl)
let g:EasyMotion_use_upper = 1 " Use uppercase target labels and type as a lower case
let g:EasyMotion_smartcase = 1 " type `l` and match `l`&`L`
let g:EasyMotion_use_smartsign_us = 1 " Smartsign (type `3` and match `3`&`#`)

" syntastic
let g:syntastic_eruby_ruby_quiet_messages =
    \ {'regex': 'possibly useless use of a variable in void context'}

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

if has('nvim')
  set clipboard+=unnamed,unnamedplus

  "terminal
    :tnoremap <Esc> <C-\><C-n>
    "rerun last command
    :nnoremap ! i!!<CR><CR><C-\><C-n>G

    let g:neoterm_automap_keys = ',tt'
    " run set test lib
    let test#strategy = "neoterm"
    nnoremap <silent> ,rt :TestSuite<cr>
    nnoremap <silent> ,rf :TestFile<cr>
    nnoremap <silent> ,rn :TestNearest<cr>
    nnoremap <silent> ,rr :TestLast<cr>
    nnoremap <silent> ,rg :TestVisit<cr>
    " hide/close terminal
    nnoremap <silent> ,th :call neoterm#close()<cr>
    " clear terminal
    nnoremap <silent> ,tl :call neoterm#clear()<cr>
    " kills the current job (send a <c-c>)
    nnoremap <silent> ,tc :call neoterm#kill()<cr>

else "these are set by nvim by default
  set complete=.,w,b,t
  set autoindent
  set incsearch
  set autoread
  set mouse=a
  set backspace=indent,eol,start
  set wildmenu
endif


