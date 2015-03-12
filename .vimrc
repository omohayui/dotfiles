" backupfile
set backupdir=~/.vim/tmp
set noundofile

" 色つけをする
syntax on

" 左に行数を表示
set number

" タブ幅の設定
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
au BufNewFile,BufRead *.html set tabstop=2 softtabstop=2 shiftwidth=2

"タブ、空白、改行の可視化
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%

" 自動インデント
"set autoindent

" インデントはスマートインデント
set smarttab

" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase

" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" コマンドの自動補完
set wildmenu

" 対応括弧の強調
set showmatch

" ステータスラインを常に表示
set laststatus=2

" いろいろ表示
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" マウス使う
set mouse=a
set ttymouse=xterm2
set clipboard+=unnamed

" インクリメンタルサーチ
set incsearch

" ctags の設定
set tags=tags

" 表示行単位で移動
nmap j gj
nmap k gk
vmap j gj
vmap k gk

" vimspell
let spell_executable = "aspell"
let spell_language_list = "english"
highlight SpellErrors guifg=Red ctermbg=Red cterm=none

" autochdir
if has("autochdir")
    set autochdir
endif

" Zen-Coding の実行キーを<C-e>に変更
let g:user_zen_expandabbr_key = '<c-e>'

" bundle ------------------------------
set runtimepath+=~/.vim/bundle/neobundle.vim/
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
 
" ファイラー
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimproc'
let g:vimfiler_as_default_explorer=1
"autocmd VimEnter * VimFiler -split -simple -winwidth=30 -no-quit
let g:vimfiler_edit_action = 'tabopen'

" コード補完＆補助
NeoBundle 'Shougo/neocomplete.vim'
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#sources#dictionary#dictionaries = {
            \ 'default' : ''
            \ }
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns._ = '\h\w*'

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

NeoBundle 'mattn/emmet-vim'

" syntaxチェック
NeoBundle 'othree/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax.git'
NeoBundle 'cakebaker/scss-syntax.vim'

call neobundle#end()
" Required:
filetype plugin indent on
NeoBundleCheck
" bundle END ---------------------------

