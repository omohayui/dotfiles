scriptencoding 'utf-8'
set encoding=utf-8
set fileencodings=utf8,sjis
set number
set hlsearch
set ignorecase
set guioptions+=M
set cmdheight=2
set laststatus=2
set ambiwidth=double
set backspace=start,eol,indent
set hidden
set noundofile
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
au BufNewFile,BufRead *.js,*.html,*.erb,*.scss set tabstop=2 softtabstop=2 shiftwidth=2
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%
set mouse=
set nobackup
set spell
set spelllang=en,cjk
syntax enable
nnoremap ; :
nnoremap  <C-c><C-c> :<C-u>nohlsearch<cr><Esc>

if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif
filetype plugin indent on
