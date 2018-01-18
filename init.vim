set encoding=utf-8
set nocompatible
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
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
set autochdir

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Ubuntu\ Mono\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Ubuntu\ Mono:h12:cANSI
  endif
endif

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'Valloric/YouCompleteMe'

call plug#end()

filetype plugin indent on

