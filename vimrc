set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'wookiehangover/jshint.vim'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

syntax enable
set number
inoremap jj <Esc>

set nobackup
set nowritebackup

autocmd Filetype javascript setl ts=2 sw=2 sts=2 et
autocmd Filetype css setl ts=4 sw=4 sts=4 et
