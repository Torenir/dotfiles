" This line makes pacman-installed global Arch Linux vim packages work.
source /usr/share/nvim/archlinux.vim

call plug#begin('~/.cache/nvim/plugged')

Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plug 'ervandew/supertab'
Plug 'vim-python/python-syntax'

Plug 'neomake/neomake'

call plug#end()

call neomake#configure#automake('w') "check syntax on write

let g:python_recommended_style=0 "ignore style for python
let g:python_highlight_all=1 "python-syntax highlight

set ignorecase
set mouse=a
set clipboard+=unnamedplus

"use tabs 8 characters long
set tabstop=8
set shiftwidth=8
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
let g:airline_theme='nord_minimal'
let g:airline_powerline_fonts = 1
" hi Normal guibg=NONE ctermbg=NONE
set termguicolors

map <ScrollWheelUp> 8<C-Y>
map <ScrollWheelDown> 8<C-E>
