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
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'

call vundle#end()
filetype plugin indent on

syntax enable
set number
inoremap jj <Esc>
nmap <F8> :TagbarToggle<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set nobackup
set nowritebackup

hi clear SpellBad
hi SpellBad cterm=underline,bold ctermfg=magenta

autocmd Filetype javascript setl ts=2 sw=2 sts=2 et
autocmd Filetype mustache setl ts=2 sw=2 sts=2 et
autocmd Filetype php setl ts=2 sw=2 sts=2 et
autocmd Filetype html setl ts=2 sw=2 sts=2 et
autocmd Filetype css setl ts=4 sw=4 sts=4 et
" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

let g:mustache_operators = 0
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_b = '%{strftime("%c")}'

set laststatus=2

let g:solarized_termcolors=256
set background=dark
colorscheme solarized
