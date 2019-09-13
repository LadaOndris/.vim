
set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""
syntax on
"execute pathogen#infect()
"filetype plugin indent on

set nocompatible
set nowrap
set encoding=utf8
set clipboard=unnamedplus

"vim-colors-solarized plugin"

set runtimepath^=~/.vim/bundle/auto-pairs/auto-pairs.vim

" Show linenumbers
set number
set ruler

" Set Proper Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

"Filetype detection"
augroup project
        autocmd!
        autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

" Always display the status line
set laststatus=2

" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1

" Enable highlighting of the current line
set cursorline

set t_Co=256
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme default
let g:airline_theme='simple'

" MAPPINGS
" Shortcut for changing tab
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab> <Esc>:tabnext<CR>i
inoremap <C-t> <Esc>:tabnew<CR>
" Open NERDTree easily
nnoremap nt :NERDTree<CR>
" Never use ESC again
inoremap jk <ESC>
" Change leader key
let mapleader = " "


