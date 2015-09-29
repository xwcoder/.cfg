"-----------------------------------------------------------------------------
" global 
"-----------------------------------------------------------------------------
set nocompatible        " use vim as vim, should be put at the very start
set helplang=cn
set history=100        " lines of Ex-mode commands, search history
set clipboard+=unnamed  " use clipboard register '*' for all y, d, c, p ops
set viminfo+=!          " make sure it can save viminfo
set isk+=$,%,#,-        " none of these should be word dividers
set confirm             " raise a dialog confirm whether save changed buffer
set encoding=utf-8
set fenc=utf-8          " default fileencoding
set fencs=utf-8,gb18030,gbk,gb2312,cp936,ucs-bom,euc-jp,
set shellslash          "路径默认使用正斜杠
"set laststatus=2
map Q gq

let g:fencview_autodetect=0
lang message en_US.UTF-8 "zh_CN.UTF-8   设置消息编码

"filetype on             " enable file type detection
filetype off            " vundle required
"filetype plugin on      " enable loading the plugin for appropriate file type
"filetype indent on
set modifiable

"-----------------------------------------------------------------------------
" platform dependent
"-----------------------------------------------------------------------------
if has("win32")
  let $VIMDATA  = $VIM.'/vimdata'
  let $VIMFILES = $VIM.'/vimfiles'
  let PYTHON_BIN_PATH = 'e:/Python27/python.exe'  " ensure the path right
  set guifont=Vera_Sans_YuanTi_Mono:h14:cANSI "set guifont
else
  let $VIMDATA  = $HOME.'/vimdata'
  let $VIMFILES = $HOME.'/.vim'
  let PYTHON_BIN_PATH = '/usr/bin/python'
  set guifont=Monaco:h20
  "set guifont=courier\ 16
  "set guifont=DejaVu_sans_mono\ 16 "set guifont
endif

set backup                     " make backup file and leave it around
set backupdir=$VIMDATA/backup  " where to put backup file
set directory=$VIMDATA/temp    " where to put swap file
set runtimepath+=$VIMDATA      " add this path to rtp, support GLVS

syntax on               " syntax highlighting

"-----------------------------------------------------------------------------
" UI setting
"-----------------------------------------------------------------------------
if has("gui_running")
  "colo oceanblack           " colorscheme, moria.vim
  set background=dark
  colo moria           " colorscheme, moria.vim
  "set lines=27          " window tall and wide, only if gui_running,
  "set columns=95       " or vim under console behaves badly
  set lines=50          " window tall and wide, only if gui_running,
  set columns=150       " or vim under console behaves badly
  set colorcolumn=81
  hi colorcolumn guibg=red
else
  colo oceanblack
  "colo solarized
  "set background=dark
endif
set wildmenu            " type :h and press <Tab> to look what happens
set ruler               " always show current position along the bottom
set cmdheight=1         " use 2 screen lines for command-line
set lazyredraw          " do not redraw while executing macros (much faster)
set number
set backspace=2         " make backspace work normal
set shortmess+=I "set shortmess=atI       " shorten messages to avoid 'press a key' prompt
set report=0            " tell us when anything is changed via :...

"-----------------------------------------------------------------------------
" visual cues
"-----------------------------------------------------------------------------
set matchtime=1         " 1/10 second to show the matching paren
set nohlsearch          " do not highlight searched for phrases
set incsearch           " BUT do highlight where the typed pattern matches
set novisualbell        " use visual bell instead of beeping
set noerrorbells        " do not make noise
"set list
set listchars=tab:>-,trail:-,eol:$ " how :set list show (,extends:>,precedes:<)
set guioptions=gLt

"-----------------------------------------------------------------------------
" text formatting/layout
"-----------------------------------------------------------------------------
set ai                  " autoindent
set si                  " smartindent
set tabstop=4           " tab spacing
"set tabstop=2           " tab spacing for node
set shiftwidth=4        " unify it
"set shiftwidth=2        " unify it
set expandtab           "用空格缩进 noexpandtab:用制表符缩进
set smarttab            " use tabs at the start of a line, spaces elsewhere
set nowrap              " do not wrap lines
set nowrapscan		" 无折返查找
set formatoptions+=mM   " thus vim can reformat multibyte text (e.g. Chinese)

if has("autocmd")
    "autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType scss setlocal ts=2 sts=2 sw=2 expandtab
endif


"-----------------------------------------------------------------------------
" folding
"-----------------------------------------------------------------------------
set foldenable          " turn on folding
set foldmethod=indent   " make folding indent sensitive
set foldlevel=100       " don't autofold anything, but can still fold manually
set foldopen -=search   " don't open folds when you search into them
set foldopen -=undo     " don't open folds when you undo stuff

"-----------------------------------------------------------------------------
" key map
"-----------------------------------------------------------------------------
map <S-e> :!python %<CR>
map <S-l> :tabn<CR>
map <S-h> :tabp<CR>
map <S-space> :VimwikiToggleListItem<CR>

"-----------------------------------------------------------------------------
" vundle 
"-----------------------------------------------------------------------------
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
"call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'taglist-plus'
Plugin 'mattn/calendar-vim'
Plugin 'bufexplorer.zip'
Plugin 'winmanager'
Plugin 'vimwiki'
Plugin 'mattn/emmet-vim'
Plugin 'wincent/Command-T'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'editorconfig-vim'
Plugin 'mxw/vim-jsx'
Plugin 'cespare/vim-golang'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'marijnh/tern_for_vim'

call vundle#end()
filetype plugin indent on

"-----------------------------------------------------------------------------
" omni
"-----------------------------------------------------------------------------
set completeopt=longest,menu

"-----------------------------------------------------------------------------
"vimwiki
"-----------------------------------------------------------------------------
let g:vimwiki_use_mouse=1
let g:vimwiki_list=[{'path' : '~/Dropbox/vimwiki/wiki',
            \'path_html' : '~/Dropbox/vimwiki/html/',
            \'html_header' : '~/Dropbox/vimwiki/template/header.tpl'}]

"-----------------------------------------------------------------------------
" winmanager
"-----------------------------------------------------------------------------
"let g:winManagerWindowLayout = "FileExplorer,BufExplorer|TagList"
let g:winManagerWindowLayout = "FileExplorer|BufExplorer"
let g:instant_markdown_autostart = 0 
"设置winmanager的宽度，默认为25
"let g:winManagerWidth = 30
"let g:AutoOpenWinManager=1 "在进入vim时自动打开winmanager
nmap wm :WMToggle<cr>

"-----------------------------------------------------------------------------
" commands
"-----------------------------------------------------------------------------
:command Rhtml  0read $HOME/.vim/template/html.html

"----------------
" tips 64
"----------------
"function! CHANGE_CURR_DIR()
"	let _dir = expand("%:p:h")
"	exec "cd " . _dir
"	unlet _dir
"endfunction
"
"autocmd BufEnter * call CHANGE_CURR_DIR()

"-----------------------------------------------------------------------------
" vim-markdown
"-----------------------------------------------------------------------------
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_initial_foldlevel=1
let g:vim_markdown_no_default_key_mappings=1

"-----------------------------------------------------------------------------
" vim-jsx
"-----------------------------------------------------------------------------
let g:jsx_ext_required = 0


"-----------------------------------------------------------------------------
" tmux
"-----------------------------------------------------------------------------
if exists('$TMUX')
  set term=screen-256color
endif

if exists('$ITERM_PROFILE')
  if exists('$TMUX') 
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
end

"-----------------------------------------------------------------------------
" golang
"-----------------------------------------------------------------------------
