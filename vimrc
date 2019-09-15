
set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
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

" Arrows are unvimlike
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Commenting ala Visual Studio
vnoremap <S-k><S-c> :norm I//<Cr>
vnoremap <S-k><S-u> :s/\/\///g<Cr>:noh<Cr>

" Faster tab changing
noremap <S-l> gt
noremap <S-h> gT

" Changing panels without the fucking w
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

" Quit faster
noremap <leader>q :q<Cr>

" Saving files
nnoremap <leader>s :w<Cr>
"inoremap <leader>s <C-c>:w<Cr>

" Moving lines up and down easily
" More info here: https:vim.fandom.com/wiki/Moving_lines_up_or_down
" Alt is being sent as Esc, so all following mappings are using Alt
nnoremap <Esc>j :m .+1<CR>==
nnoremap <Esc>k :m .-2<CR>==
inoremap <Esc>j <Esc>:m .+1<CR>==gi
inoremap <Esc>k <Esc>:m .-2<CR>==gi
vnoremap <Esc>j :m '>+1<CR>gv=gv
vnoremap <Esc>k :m '<-2<CR>gv=gv


