set encoding=utf-8
set nocompatible
filetype off
filetype plugin on

colorscheme default
syntax enable
syntax on

set nobackup
set nowritebackup
set noswapfile
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set foldmethod=syntax
set hlsearch hls
set number 
set ic
set autochdir

let s:vimfiles_path = expand("~/vimfiles")

if isdirectory(s:vimfiles_path)
    let &g:rtp .= ','.s:vimfiles_path
endif


if has("gui_running")
  if has("gui_gtk2")
    set guifont=Ubuntu\ Mono\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Ubuntu\ Mono:h12:cANSI
  endif
endif

filetype plugin indent on 

