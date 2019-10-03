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
au BufNewFile,BufRead *.html,*.erb,*.scss set tabstop=2 softtabstop=2 shiftwidth=2
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%
set mouse=
set nobackup
set spell
set spelllang=en,cjk
syntax on
nnoremap ; :
nnoremap  <C-c><C-c> :<C-u>nohlsearch<cr><Esc>

" 各種設定読み込みメソッド
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
call s:load_rc('molokai')

" color設定
colorscheme molokai
set t_Co=256
set termguicolors
set background=dark
hi Comment ctermfg=247 guifg=#b1c6c2
hi LineNr ctermfg=250 ctermbg=230 guifg=#b1c6c2 guibg=#3c4042
hi SpecialKey ctermfg=247 guifg=#91a6a2
hi NonText ctermfg=247 guifg=#91a6a2
" vim diffの色設定
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
highlight DiffText   cterm=bold ctermfg=10 ctermbg=21
