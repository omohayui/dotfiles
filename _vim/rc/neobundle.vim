" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/yui.takeuchi/dotfiles/_vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/yui.takeuchi/dotfiles/_vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim', {'build': { 'unix': 'make -f make_unix.mak' } }

" Let NeoBundle manage NeoBundle
" Required:
NeoBundle 'mattn/emmet-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'Shougo/unite.vim'
NeoBundle has('lua') ? 'Shougo/neocomplete' : 'Shougo/neocomplcache'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tomasr/molokai'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
