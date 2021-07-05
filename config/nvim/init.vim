" This line makes pacman-installed global Arch Linux vim packages work.
source /usr/share/nvim/archlinux.vim

call plug#begin('~/.vim/plugged')

Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'ervandew/supertab'
Plug 'vim-python/python-syntax'

call plug#end()

let g:python_recommended_style=0 "ignore style for python
let g:python_highlight_all=1 "python-syntax highlight

set ignorecase
set mouse=a
set clipboard+=unnamedplus "use clipboard

"use tabs 4 characters long
set tabstop=4
set shiftwidth=4
set noexpandtab
%retab!

"visual options
syntax on
set cursorline
set cursorcolumn
set number
set wrap!
set showmatch
set colorcolumn=80
set noshowmode
colorscheme nord
" hi Normal guibg=NONE ctermbg=NONE
set termguicolors

map <ScrollWheelUp> 8<C-Y>
map <ScrollWheelDown> 8<C-E>
