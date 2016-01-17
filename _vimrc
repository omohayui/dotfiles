scriptencoding 'utf-8'
set encoding=utf-8
set fileencodings=utf8,sjis
set number
set hlsearch
"set relativenumber
set guioptions+=M
set cmdheight=2
set laststatus=2
set ambiwidth=double
set backspace=start,eol,indent
set hidden
set noundofile
set tabstop=2
set shiftwidth=4
set expandtab
au BufNewFile,BufRead *.html,*.erb,*.scss set tabstop=2 softtabstop=2 shiftwidth=2
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%
set mouse=
set nobackup
syntax on

"各種設定読み込みメソッド
function s:load_rc(file)
  execute 'source ' . '~/dotfiles/_vim/rc/' . a:file . '.vim'
endfunction

call s:load_rc('neobundle')
call s:load_rc('nmaps')
call s:load_rc('nerdtree')
call s:load_rc('lightline')
call s:load_rc('easymotion')
call s:load_rc('unite')
call s:load_rc('neocompl')

" vimdiffの色設定
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
highlight DiffText   cterm=bold ctermfg=10 ctermbg=21
