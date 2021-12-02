call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'yggdroot/indentline'


call plug#end()

set encoding=utf-8
set lazyredraw
set autoindent
set backspace=indent,eol,start
set cursorline
set number
set ruler

syntax on
set noswapfile
set hlsearch
set ignorecase
set incsearch

" Space as leader key
map <Space> <nop>
let mapleader = " "


inoremap jk <ESC> 

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" set runtimepath+=~/.vim_runtime

" source ~/.vim_runtime/vimrcs/basic.vim
" source ~/.vim_runtime/vimrcs/filetypes.vim
" source ~/.vim_runtime/vimrcs/plugins_config.vim
" source ~/.vim_runtime/vimrcs/extended.vim

" try
" source ~/.vim_runtime/my_configs.vim
" catch
" endtry
