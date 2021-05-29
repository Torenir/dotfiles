" This line makes pacman-installed global Arch Linux vim packages work.
source /usr/share/nvim/archlinux.vim

set number relativenumber
set wrap! "don't wrap
set showmatch
set ignorecase
set colorcolumn=80
set clipboard+=unnamedplus

let g:python_recommended_style=0 "use tabs in python
let g:python_highlight_all=1 "python-syntax highlight

"use tabs 4 characters long
set tabstop=4
set shiftwidth=4
set noexpandtab
"change spaces into tabs in whole file
%retab!

syntax on
set mouse=a
set cursorline
set cursorcolumn

call plug#begin('~/.vim/plugged')

Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'ervandew/supertab'
Plug 'vim-python/python-syntax'

call plug#end()

set noshowmode
colorscheme nord
" hi Normal guibg=NONE ctermbg=NONE
set termguicolors
