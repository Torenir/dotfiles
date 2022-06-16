call plug#begin('~/.config/nvim/plugged')

"visual plugins
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" syntax checking
Plug 'vim-python/python-syntax'
Plug 'neomake/neomake'

" tags
" universal-ctags/ctags
Plug 'ludovicchabant/vim-gutentags'
Plug 'preservim/tagbar'

call plug#end()

call neomake#configure#automake('w') "check syntax on write
let g:python_recommended_style=0 "ignore style for python
let g:python_highlight_all=1 "python-syntax highlight

set ignorecase
set mouse=a
set clipboard+=unnamedplus
set splitbelow
set splitright

"use tabs and display them as 8 chars wide
set tabstop=8
set shiftwidth=8
set noexpandtab
%retab!

"visual options
syntax on
set cursorline
" set cursorcolumn
set number
set wrap
set showmatch
set colorcolumn=80
set noshowmode
set lazyredraw

colorscheme nord
let g:airline_theme='nord_minimal'
let g:airline_powerline_fonts = 1
" hi Normal guibg=NONE ctermbg=NONE
set termguicolors
set statusline+=%{gutentags#statusline()}

" shortcuts
let mapleader = "s"
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
nmap <leader>t :TagbarToggle<CR><C-W>l
nmap <leader>f :set fileencoding=utf8<CR>
nmap <leader>F :set fileformat=unix<CR>

nmap <leader>v :vsp<CR>
nmap <leader>h :sp<CR>
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>

nmap <leader>J :tabnew<CR>
nmap <leader>K :tabclose<CR>
nmap <leader>H :tabprevious<CR>
nmap <leader>L :tabnext<CR>

nmap <leader>j <C-W>j
nmap <leader>k <C-W>k
nmap <leader>h <C-W>h
nmap <leader>l <C-W>l

nmap <leader>d <C-u>
nmap <leader>c <C-d>
nmap <leader>D <C-Y>
nmap <leader>C <C-E>
