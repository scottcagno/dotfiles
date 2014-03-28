" User Defined
set tabstop=4
set shiftwidth=4
set expandtab
set number
set backspace=2
filetype plugin on
syntax on

" Color scheme
" syntax enable
colorscheme evening 
"colorscheme morning 

" vundle init
" git clone https://github.com/gmarik/vundle.git
" ~/.vim/bundle/vundle
set nocompatible
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Start neocomplcache
let g:neocomplcache_enable_at_startup = 1

" Bundles
Bundle 'gmarik/vundle'
Bundle 'snipMate'
Bundle 'neocomplcache'
Bundle 'surround.vim'
