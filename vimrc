set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'wookiehangover/jshint.vim'

call vundle#end()
filetype plugin indent on

syntax enable
set number
inoremap jj <Esc>

colors zenburn
