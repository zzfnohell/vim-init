set encoding=utf-8
set nocompatible
filetype off
filetype plugin on

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
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set encoding=utf-8

" if isdirectory(g:vimfiles_path)
"    let &g:packpath = g:vimfiles_path . ',' . &g:packpath
" endif


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
    
let s:src_dir = expand("<sfile>:p:h")

if has("win32")
    let s:win_src_path = globpath(s:src_dir, "wininit.vim")
    exec 'source ' . s:win_src_path
else
    let s:unix_src_path = globpath(s:src_dir, "unixinit.vim")
    exec 'source ' . s:unix_src_path
endif

" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'prabirshrestha/vim-lsp'
" Initialize plugin system
call plug#end()
