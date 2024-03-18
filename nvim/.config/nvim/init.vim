syntax on

set mouse=a  " active mouse
set noerrorbells  " no sound with errors
set expandtab
set number
set rnu
set nowrap
set smartindent   
" set clipboard+=unnamedplus " use cliplboard
set numberwidth=1 " width of relative numbers column
set ignorecase  " to find ignoring upppercase
set encoding=utf-8
set cursorline
set termguicolors

set colorcolumn=80
highlight ColoColumn ctermbg=0 guibg=ligthgrey


call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
call plug#end()

" Keymaps
let mapleader = " "



" gruvbox theme parameters
set background=dark
let ayucolor='dark'
let g:gruvbox_cotrast_dark='hard'
colorscheme gruvbox

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

set clipboard+=unnamedplus
" set clipboard+=unnamed

