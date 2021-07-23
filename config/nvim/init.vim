" This line makes pacman-installed global Arch Linux vim packages work.
source /usr/share/nvim/archlinux.vim

call plug#begin('~/.vim/plugged')

Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'ervandew/supertab'
Plug 'vim-python/python-syntax'

call plug#end()

let g:python_recommended_style=0 "ignore style for python
let g:python_highlight_all=1 "python-syntax highlight
let g:airline_powerline_fonts = 1

set ignorecase
set mouse=a
set clipboard+=unnamedplus "use clipboard

"use tabs 6 characters long
set tabstop=6
set shiftwidth=6
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
