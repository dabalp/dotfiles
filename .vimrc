set nocompatible

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" Make sure curl is installed 'sudo apt install curl' """""""

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'yggdroot/indentline'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin settings
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Yggdroot/indentLine
" let g:indentLine_setConceal = 0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set encoding=utf-8
set lazyredraw
set autoindent
set backspace=indent,eol,start
set expandtab
set cursorline
set number
set ruler

syntax on
set noswapfile
set hlsearch
set ignorecase
set incsearch

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Leaving insert mode.
inoremap <c-c> <esc>
inoremap <c-v> <esc>
vnoremap <c-c> <esc>
vnoremap <c-v> <esc>

" No shift for command mode.
nnoremap ; :

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Disable Arrow keys in Normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Space as leader key
map <Space> <nop>
let mapleader = " "

" Leader key shortcuts.
vmap <leader>k gc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Languages
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" function! PythonSyntax()
"   syntax match MyPythonSelf "\<self\>\.\?"
"   syntax match MyPythonLibrary "\<np\.\|\<tf\.\|\<scipy\.\<os\."
"   syntax match MyPythonKwarg "\((\| \)\@<=\<[A-Za-z0-9_]\+\>="
"   syntax match MyPythonNumber "\<[0-9.]\+\>\.\?"
"   hi MyPythonSelf    cterm=none ctermfg=gray ctermbg=none
"   hi MyPythonLibrary cterm=none ctermfg=gray ctermbg=none
"   hi MyPythonKwarg   cterm=none ctermfg=magenta ctermbg=none
"   hi MyPythonNumber  cterm=none ctermfg=red ctermbg=none
" endfunction

" autocmd BufNewFile,BufRead *.md set filetype=markdown
" autocmd BufNewFile,BufRead *.ad set filetype=asciidoc
" autocmd BufNewFile,BufRead *.cls set filetype=tex
" autocmd BufNewFile,BufRead *.scss set tw=0
" autocmd FileType * set conceallevel=0

autocmd FileType python setlocal ts=2 sw=2 sts=2
autocmd FileType python setlocal tw=79
" autocmd FileType python call PythonSyntax()
" " autocmd FileType python,sh setlocal iskeyword-=_
" autocmd FileType markdown,tex set conceallevel=0

" set runtimepath+=~/.vim_runtime

" source ~/.vim_runtime/vimrcs/basic.vim
" source ~/.vim_runtime/vimrcs/filetypes.vim
" source ~/.vim_runtime/vimrcs/plugins_config.vim
" source ~/.vim_runtime/vimrcs/extended.vim

" try
" source ~/.vim_runtime/my_configs.vim
" catch
" endtry
