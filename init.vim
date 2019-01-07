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
if has('win32') || has('win64')
    "" set rtp+=$USERPROFILE\vimfiles
endif
filetype plugin indent on 

call plug#begin('~/.vim/plugged')
" Plug 'prabirshrestha/async.vim'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'ryanolsonx/vim-lsp-typescript'

Plug 'mxw/vim-jsx'
let g:jsx_ext_required = 1

Plug 'flowtype/vim-flow'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

call plug#end()
